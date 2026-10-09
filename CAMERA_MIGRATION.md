# Cleaner camera triggering migration

The `hd_trigger` firmware now follows the syringe coater's camera pairing protocol.
The old **SEL TRIG CAM** action and its EEPROM trigger-address reader/writer are removed.

## Operation

- **Cleaner → Settings 2 → CAMERA MODE** selects `INTERNAL` or `EXTERNAL`.
- **Camera → Settings → CAMERA** selects `ENABLED` or `DISABLED` for the internal camera.
- Internal triggering requires the enabled internal camera to be selected and its video output active.
- External triggering requires a nonzero paired camera address matching the selected camera.
- Every trigger is consumed. A busy or rejected trigger leaves the cleaning sequence timer unchanged.
- Accepted triggers retain the cleaner's existing sequence, pressure checks and process acknowledgement.

`0x321` is an eight-byte pairing message: byte 0 is the target unit's Node-ID
(`0x48` for this cleaner), bytes 1–2 are the camera address, low byte first.
The remaining bytes are reserved. `0x421` selects the camera using two address bytes.
A camera announcing a different target unit clears its previous pairing with this cleaner.
Zero camera addresses and short PDO messages are ignored.

The pairing mailbox occupies new process-image bytes 34–41. Existing actuator,
status and analog fields keep their original offsets. Scan requests on `0x521`
schedule a nonblocking `0x2a1` reply containing `[address low, address high, 0]`.
Disabled internal cameras do not appear in scans.

## Settings compatibility

Legacy CSV settings keep their original order and 128-byte block boundaries.
Serialization now uses an explicit variable table, avoiding assumptions about the
placement of globals by ImageCraft versus GCC. The CSV occupies `0x0800–0x09ff`;
camera address `0x0a00` and serial number `0x0b10` remain separate.

The new settings record is at `0x0c60`: `[version 1, mode, enable]`, with enum
values 1 or 2. Missing or invalid records default to **INTERNAL / ENABLED**.
The retired `0x0c50` trigger address is ignored. Existing external-camera installations
must select EXTERNAL and announce their new pairing. Restore Defaults resets both
legacy settings and the new camera settings while retaining camera address and serial.

Mode and enable persist across restart. Pairing and active selection are runtime
state, as on the syringe coater: reannounce pairing and selection after restarting.

## PC validation

From the repository root:

```powershell
python .\tests\run_tests.py
```

The runner builds the real firmware host and runs the existing menu regressions,
62 camera checks, and UDP pairing, scan and process-restart tests. GCC/GNU Make and
Python are required. On Windows the runner uses `mingw32-make`; on Linux it uses `make`.
The Windows bench transport and wire format are retained.

The host now persists EEPROM in `pc_side/cleaner_eeprom.bin` instead of discarding
writes. Set `CLEANER_EEPROM_FILE` to use another file. Automated tests use temporary
files. A blank host EEPROM seeds the internal address to `0x2731`; subsequent starts
reload it. Linux support uses POSIX threads and sockets without affecting target code.

## Validation still required

The GCC PC build and all seven test groups pass. ImageCraft is unavailable in the
migration environment, so no rebuilt embedded `.s19` is provided. Build the Cleaner
project with ImageCraft, then verify on hardware:

1. Internal selected camera starts cleaning; wrong or disabled camera rejects it.
2. External paired and selected camera starts cleaning on the first trigger.
3. Wrong, unpaired and busy triggers are rejected without restarting sequence timing.
4. Reassigning the paired camera to another unit removes its cleaner pairing.
5. Scanning remains responsive and omits a disabled internal camera.
6. Mode/enable and existing cleaner settings survive restart; announce pairing/selection again.
7. Restore Defaults retains the camera address and serial number.
