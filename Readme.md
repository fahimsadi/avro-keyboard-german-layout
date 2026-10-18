# Avro Keyboard - German Layout

An unofficial community build of Avro Keyboard for Windows that lets Avro
Phonetic use the active German physical keyboard layout correctly.

This project is not affiliated with or endorsed by OmicronLab.

## What this fork changes

- Uses the active Windows keyboard layout when reading keys for Avro Phonetic.
- Supports German QWERTZ key positions, German punctuation, and AltGr input.
- Keeps Avro's original phonetic transliteration rules unchanged.

## Download and install

Download the current installer from [Releases](https://github.com/fahimsadi/avro-keyboard-german-layout/releases).

The installer includes the Avro database, auto-correct dictionary, fixed keyboard
layouts, skins, documentation, and an uninstaller. It installs separately from
the official Avro Keyboard program and preserves existing Avro data in
`C:\ProgramData\Avro Keyboard`.

Close any other Avro Keyboard instance before running this build. Only one Avro
keyboard hook should run at a time.

## Building requirements

The upstream source was tested with **Delphi 12 Community Edition**. This fork
was built with **Delphi 13 Community Edition**.

The community edition can be download from here:
https://www.embarcadero.com/products/delphi/starter/free-download

## Development/Contributing

- Please use project specific code formatting profile

  - Go to `Tools > Options > Language > Formatter` in Delphi IDE
  - Load `Formatter_Profile.config` from the root of this project
  - Please make sure to format the sources using this profile before creating a PR

- Debug logs can be viewed using [DebugView](https://learn.microsoft.com/en-us/sysinternals/downloads/debugview) when `{$Define DebugLog}` compiler directive is set in the `ProjectDefines.inc` file from the root of this project.

## Building Standard and Portable editions

### Compiler Directives

Open `ProjectDefines.inc` file in the root folder of the source.

For building portable edition, add the following line in this file and compile:

    {$Define PortableOn}

For building standard edition, remove the above line from the
file or make it a comment like the following and then compile:

    {.$Define PortableOn}

or,

    //{$Define PortableOn}

### Building Projects

Delphi community edition doesn't come with command line compiler. In order to build projects:

- Run `build-ce.bat`
- Open `WholeProject.groupproj` in Delphi IDE and run `Build All` from the project group
- Built and renamed files will be under `build` directory

Run `installer\build-installer.bat` afterward to create the setup program in
`installer\Output`. See [RELEASING.md](RELEASING.md) before publishing it.

## Notable contributions

- [@JayedAhsan](https://github.com/JayedAhsan) (PR [#32](https://github.com/mugli/Avro-Keyboard/pull/32)) - 3rd party dependencies are no longer necessary to compile the source, can be compiled with the latest free Community Edition of Delphi, and perf improvements.

## Source and attribution

This project is based on the modernized
[mugli/Avro-Keyboard](https://github.com/mugli/Avro-Keyboard) source tree.
Avro Keyboard was originally created by
[OmicronLab](https://www.omicronlab.com/).

The complete source corresponding to each published installer is available in
this repository. Releases should be created from a version tag so users can
identify the exact matching source revision.

## License

Avro Keyboard and the German-layout modifications are licensed under the
[Mozilla Public License 2.0](LICENSE.txt). Existing copyright, license, and
trademark notices are retained. The MPL does not grant rights to use the
trademarks of other contributors.
