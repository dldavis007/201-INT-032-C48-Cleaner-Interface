# Cleaner PC regression tests

The suite builds and runs the real PC-side cleaner firmware host. It exercises
the production main loop, MicroCANopen PDO handling, RTI simulation, camera
address startup guard, menu activation, crash regression, and menu button
press/release behavior.

Run with:

```text
python run_tests.py
```

or on Windows:

```text
mingw32-make check
```

Only the Python standard library is required beyond the existing GCC and GNU
Make prerequisites. Temporary local UDP ports are selected automatically.

The camera migration suite adds 62 checks against the production firmware for
pairing, reassignment, selection, rejected/busy triggers, camera disable,
nonblocking scan replies (including timer rollover), address changes, menu
bindings and legacy/versioned EEPROM settings. UDP integration tests verify
external triggering during a pending scan and settings after process restart.
All tests use temporary EEPROM files. See `../CAMERA_MIGRATION.md` for hardware checks.
