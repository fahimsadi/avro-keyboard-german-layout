# Releasing

Use this checklist for every public installer release.

1. Review `git status` and confirm that only intended source, documentation, and
   installer changes are present.
2. Update the installer version in `installer\AvroKeyboardGermanPhonetic.iss`.
3. Run `build-ce.bat`, build all projects in Delphi with `Release` and `Win32`,
   and wait for the batch file to finish.
4. Run `installer\build-installer.bat`.
5. Install the resulting setup program on a test machine or test user account.
   Confirm Avro Phonetic works with German QWERTZ and AltGr input.
6. Generate and publish a SHA-256 checksum for the setup program.
7. Commit the source and create a version tag, for example `v5.7.0-german.1`.
8. Create a GitHub Release from that tag and upload the setup program and its
   checksum as release assets.
9. State in the release notes that the matching source is available from the
   linked tag under MPL-2.0.

Do not commit generated executables, installer output, personal settings,
`ProgramData` files, signing certificates, or passwords.
