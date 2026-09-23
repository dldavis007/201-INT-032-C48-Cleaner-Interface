#!/usr/bin/env python3
"""Build and exercise the real cleaner PC host over its UDP CAN seam."""

from __future__ import print_function

import os
import re
import shutil
import socket
import struct
import subprocess
import sys
import tempfile
import threading
import time

ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), ".."))
PC_SIDE = os.path.join(ROOT, "pc_side")
HOST = os.path.join(PC_SIDE, "cleaner_host.exe" if os.name == "nt" else "cleaner_host")


class TestFailure(Exception):
    pass


def require(condition, message):
    if not condition:
        raise TestFailure(message)


def build_host():
    make = "mingw32-make" if os.name == "nt" else "make"
    require(shutil.which(make) is not None, "%s is not on PATH" % make)
    subprocess.check_call([make, "clean"], cwd=PC_SIDE)
    subprocess.check_call([make], cwd=PC_SIDE)
    require(os.path.isfile(HOST), "host executable was not produced")


def free_udp_port():
    sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    sock.bind(("127.0.0.1", 0))
    port = sock.getsockname()[1]
    sock.close()
    return port


def pack_frame(can_id, data):
    data = bytes(bytearray(data))
    return struct.pack("<HB", can_id, len(data)) + data


class HostFixture(object):
    def __init__(self):
        self.receive_port = free_udp_port()
        self.send_port = free_udp_port()
        self.frames = []
        self.running = True
        self.bus = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
        self.bus.bind(("127.0.0.1", self.send_port))
        self.bus.settimeout(0.05)
        self.log_file = tempfile.NamedTemporaryFile(prefix="cleaner_test_", suffix=".log", delete=False)
        self.log_path = self.log_file.name
        flags = getattr(subprocess, "CREATE_NEW_PROCESS_GROUP", 0) if os.name == "nt" else 0
        self.proc = subprocess.Popen(
            [HOST, str(self.receive_port), str(self.send_port)], cwd=PC_SIDE,
            stdout=self.log_file, stderr=subprocess.STDOUT, creationflags=flags)
        self.thread = threading.Thread(target=self._receive)
        self.thread.daemon = True
        self.thread.start()

    def _receive(self):
        while self.running:
            try:
                packet, _ = self.bus.recvfrom(32)
            except socket.timeout:
                continue
            except OSError:
                break
            if len(packet) >= 3:
                can_id, length = struct.unpack("<HB", packet[:3])
                self.frames.append((can_id, packet[3:3 + min(length, 8)]))

    def send(self, can_id, data):
        sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
        try:
            sock.sendto(pack_frame(can_id, data), ("127.0.0.1", self.receive_port))
        finally:
            sock.close()

    def wait_alive(self, seconds):
        deadline = time.time() + seconds
        while time.time() < deadline:
            if self.proc.poll() is not None:
                raise TestFailure("host exited with code %s\n%s" % (self.proc.returncode, self.log()))
            time.sleep(0.02)

    def wait_for_id(self, can_id, timeout=2.0):
        deadline = time.time() + timeout
        while time.time() < deadline:
            if any(frame_id == can_id for frame_id, _ in self.frames):
                return
            self.wait_alive(0.02)
        raise TestFailure("timed out waiting for CAN 0x%03X\n%s" % (can_id, self.log()))

    def log(self):
        self.log_file.flush()
        with open(self.log_path, "r", errors="replace") as stream:
            return stream.read()

    def close(self):
        self.running = False
        self.bus.close()
        if self.proc.poll() is None:
            self.proc.terminate()
            try:
                self.proc.wait(timeout=2)
            except subprocess.TimeoutExpired:
                self.proc.kill()
                self.proc.wait(timeout=2)
        self.thread.join(timeout=1)
        self.log_file.close()
        try:
            os.unlink(self.log_path)
        except OSError:
            pass


def read_source(relative_path):
    with open(os.path.join(ROOT, relative_path), "r", errors="replace") as stream:
        return stream.read()


def test_menu_flags_are_signed():
    definitions = read_source(os.path.join("Source Files", "Subroutines1.c"))
    declarations = read_source(os.path.join("Source Files", "Subroutines.c"))
    for name in ("CursorDownFlag", "CursorUpFlag", "SelectFlag"):
        require(re.search(r"signed\s+char\s+%s\s*;" % name, definitions),
                "%s definition must remain signed char" % name)
        require(re.search(r"extern\s+signed\s+char\s+%s\s*;" % name, declarations),
                "%s extern declaration must remain signed char" % name)


def test_startup_and_camera_guard(host):
    host.wait_for_id(0x748)
    host.wait_alive(0.25)
    log = host.log()
    require("camera address seeded to 0x3333" in log, "camera seed was not reported")
    require("State = 35 FinishState" in log, "cleaner did not start in FinishState")
    require(not any(can_id == 0x310 for can_id, _ in host.frames),
            "idle startup emitted display traffic without a camera/menu request")


def test_startup_pdos(host):
    ids = set(can_id for can_id, _ in host.frames)
    for expected in (0x1EA, 0x1C8, 0x318):
        require(expected in ids, "startup TPDO 0x%03X was not transmitted" % expected)


def test_reported_crash_sequence(host):
    sequence = [
        (0x180, [0x00, 0x04, 0x00]), (0x180, [0x00, 0x04, 0x00]),
        (0x180, [0x00, 0x04, 0x00]), (0x180, [0x04, 0x04, 0x00]),
        (0x180, [0x00, 0x04, 0x00]), (0x248, [0x01]),
    ]
    for can_id, data in sequence:
        host.send(can_id, data)
        time.sleep(0.11)
    host.wait_for_id(0x310)
    host.wait_alive(0.25)
    require(any(can_id == 0x200 and data[:1] == b"\x01" for can_id, data in host.frames),
            "menu-open status 0x200 [01] was not transmitted")


def test_two_menu_presses(host):
    before = sum(1 for can_id, data in host.frames if can_id == 0x310 and b"Menu:" in data)
    for _ in range(2):
        host.send(0x180, [0x01, 0x00, 0x00])
        time.sleep(0.45)
        host.send(0x180, [0x00, 0x00, 0x00])
        time.sleep(0.45)
    host.wait_alive(0.25)
    after = sum(1 for can_id, data in host.frames if can_id == 0x310 and b"Menu:" in data)
    require(after >= before + 2, "two press/release cycles did not both refresh the menu")


def main():
    cases_run = 0
    failures = []
    print("Building cleaner PC host...")
    try:
        build_host()
    except (OSError, subprocess.CalledProcessError, TestFailure) as exc:
        print("BUILD FAILED: %s" % exc)
        return 1

    try:
        test_menu_flags_are_signed()
        cases_run += 1
        print("PASS menu flags are explicitly signed")
    except TestFailure as exc:
        failures.append(str(exc))
        print("FAIL menu flag declarations: %s" % exc)

    host = HostFixture()
    try:
        cases = [
            ("startup and camera guard", test_startup_and_camera_guard),
            ("CANopen startup PDOs", test_startup_pdos),
            ("reported menu crash sequence", test_reported_crash_sequence),
            ("two menu press/release cycles", test_two_menu_presses),
        ]
        for name, case in cases:
            try:
                case(host)
                cases_run += 1
                print("PASS %s" % name)
            except TestFailure as exc:
                failures.append("%s: %s" % (name, exc))
                print("FAIL %s: %s" % (name, exc))
    finally:
        host.close()

    print("\n%d test(s), %d failure(s)" % (cases_run + len(failures), len(failures)))
    return 1 if failures else 0


if __name__ == "__main__":
    sys.exit(main())
