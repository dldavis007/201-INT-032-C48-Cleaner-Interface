# INT-032 Cleaner Interface PC host

This host build runs the production cleaner-interface `doevents()` loop,
MicroCANopen stack, process image, PID code, and RTI handler on a PC. Hardware
registers are backed by RAM, EEPROM/flash writes are stubbed, and CAN frames are
transported as UDP datagrams.

## Build and run

Linux/MSYS2:

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

EEPROM loads are disabled for the host build because the target uses absolute
addresses that a desktop OS cannot map. The production embedded build does not
compile anything in this directory and is unchanged by `PC_SIDE` guards.
