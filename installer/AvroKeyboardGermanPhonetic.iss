; Build with Inno Setup 6 after build-ce.bat has prepared the release files.

#define MyAppName "Avro Keyboard - German Layout"
#define MyAppVersion "5.7.0.19-german.1"
#define MyAppVersionInfo "5.7.0.1"
#define MyAppPublisher "Avro Keyboard German Layout contributors"
#define MyAppExeName "Avro Keyboard.exe"

[Setup]
AppId={{9B55DCCB-57B5-48DB-9707-E576E11B4E2A}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppCopyright=Original Avro Keyboard copyright © OmicronLab. German layout modifications by contributors.
AppComments=Unofficial community build with German physical keyboard layout support for Avro Phonetic.
DefaultDirName={commonpf32}\Avro Keyboard German Layout
DefaultGroupName={#MyAppName}
UninstallDisplayName={#MyAppName}
UninstallDisplayIcon={app}\{#MyAppExeName}
LicenseFile=..\LICENSE.txt
InfoBeforeFile=..\NOTICE.txt
SetupIconFile=..\assets\icons\Avro.ico
WizardImageFile=..\assets\images\installer-wizard-large.bmp
WizardSmallImageFile=..\assets\images\installer-wizard-small.bmp
OutputDir=Output
OutputBaseFilename=AvroKeyboardGermanLayout-Setup
Compression=lzma2
SolidCompression=yes
WizardStyle=modern
PrivilegesRequired=admin
ArchitecturesAllowed=x86 x64compatible
CloseApplications=yes
RestartApplications=no
VersionInfoVersion={#MyAppVersionInfo}
VersionInfoCompany={#MyAppPublisher}
VersionInfoDescription={#MyAppName} Setup
VersionInfoProductName={#MyAppName}
VersionInfoProductVersion={#MyAppVersionInfo}
VersionInfoCopyright={#SetupSetting("AppCopyright")}

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "german"; MessagesFile: "compiler:Languages\German.isl"

[Tasks]
Name: "desktopicon"; Description: "Create a desktop shortcut"; GroupDescription: "Additional shortcuts:"; Flags: unchecked

[Dirs]
Name: "{commonappdata}\Avro Keyboard"; Permissions: users-modify

[Files]
Source: "..\build\Avro Keyboard.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\build\Avro Spell Checker.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\build\Layout Editor.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\build\Skin Designer.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\build\Unicode to Bijoy.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\build\AvroSpell.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\LICENSE.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\NOTICE.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\assets\docs\*.pdf"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\assets\Database.db3"; DestDir: "{commonappdata}\Avro Keyboard"; Flags: ignoreversion onlyifdoesntexist
Source: "..\assets\autodict.dct"; DestDir: "{commonappdata}\Avro Keyboard"; Flags: ignoreversion onlyifdoesntexist
Source: "..\assets\keyboard-layouts\*"; DestDir: "{commonappdata}\Avro Keyboard\Keyboard Layouts"; Flags: ignoreversion onlyifdoesntexist; Excludes: ".gitkeep"
Source: "..\assets\skins\*"; DestDir: "{commonappdata}\Avro Keyboard\Skin"; Flags: ignoreversion onlyifdoesntexist; Excludes: ".gitkeep"

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\Layout Editor"; Filename: "{app}\LayoutEditor.exe"
Name: "{group}\Skin Designer"; Filename: "{app}\SkinDesigner.exe"
Name: "{group}\Uninstall {#MyAppName}"; Filename: "{uninstallexe}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "Launch {#MyAppName}"; Flags: nowait postinstall skipifsilent
