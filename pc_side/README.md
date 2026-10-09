# INT-032 Cleaner Interface PC host

This host build runs the production cleaner-interface `doevents()` loop,
MicroCANopen stack, process image, PID code, and RTI handler on a PC. Hardware
registers are backed by RAM, EEPROM is file-backed, flash writes are stubbed, and CAN frames are
transported as UDP datagrams.

## Build and run

Linux:

```text
make
./cleaner_host
```

The optional arguments are the UDP receive and send ports:

```text
./cleaner_host 20020 20100
```

The default send port `20100` is intended for a local CAN UDP hub. The wire
format is compatible with the CNT-014 PC host: little-endian 16-bit CAN ID,
one length byte, then zero to eight data bytes.

On Windows, build with `mingw32-make` and run `cleaner_host.exe` with the same ports.

EEPROM is stored in `cleaner_eeprom.bin` in the current working directory.
Set `CLEANER_EEPROM_FILE` to choose a different file. A blank EEPROM seeds camera
address `0x2731`; later starts retain saved camera and menu settings. The automated
tests use temporary EEPROM files so they do not change bench settings.

See [CAMERA_MIGRATION.md](../CAMERA_MIGRATION.md) for pairing, menu settings,
compatibility and hardware validation. The embedded build excludes this directory.
