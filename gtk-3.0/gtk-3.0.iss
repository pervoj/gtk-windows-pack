#define MyProjectName "GTK Windows pack"
#define MyPackageName "GTK 3.0"
#define MyAppName MyProjectName + " – " + MyPackageName
#define MyAppVersion "1.0.0"
#define MyAppPublisher "Vojtìch Perník"
#define MyAppURL "https://pervoj.github.io/gtk-windows-pack"

[Setup]
AppId=GTKWindowsPack30
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppVerName={#MyAppName}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
ArchitecturesInstallIn64BitMode=x64
DefaultDirName={autopf64}\gtk-windows-pack\gtk-3.0
DefaultGroupName={#MyProjectName}\{#MyPackageName}
AllowNoIcons=yes
AlwaysRestart=yes
LicenseFile=..\LICENSE
PrivilegesRequired=admin
OutputDir=out
OutputBaseFilename=gtk-3.0-{#MyAppVersion}
SetupIconFile=..\docs\assets\images\logos\gtk-windows-pack.ico
Compression=lzma
SolidCompression=yes
UsePreviousAppDir=yes
WizardImageFile=rsc\images\WizardImageFile.bmp
WizardSmallImageFile=rsc\images\WizardSmallImageFile.bmp
WizardStyle=modern

[Types]
Name: "default"; Description: "Default settings"
Name: "custom"; Description: "Custom settings"; Flags: iscustom

[Components]
Name: "gtk"; Description: "GTK 3.0"; Types: default custom; Flags: fixed
Name: "theme"; Description: "GTK theme"; Types: default custom; Flags: fixed
Name: "theme\win10"; Description: "Windows 10"; Flags: exclusive
Name: "theme\win10\light"; Description: "Light version"; Flags: exclusive
Name: "theme\win10\dark"; Description: "Dark version"; Flags: exclusive
Name: "theme\adwaita"; Description: "Adwaita"; Flags: exclusive
Name: "theme\adwaita\light"; Description: "Light version"; Flags: exclusive
Name: "theme\adwaita\dark"; Description: "Dark version"; Flags: exclusive
Name: "theme\pop"; Description: "Pop"; Flags: exclusive
Name: "theme\pop\light"; Description: "Light version"; Flags: exclusive
Name: "theme\pop\dark"; Description: "Dark version"; Flags: exclusive

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
; GTK 3.0 files:
Source: "src\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: gtk
; Windows 10 Light:
Source: "rsc\types\win10-light\config\*"; DestDir: "{app}\etc\gtk-3.0"; Components: theme\win10\light
Source: "rsc\types\win10-light\themes\*"; DestDir: "{app}\share\themes"; Flags: recursesubdirs createallsubdirs; Components: theme\win10\light
Source: "rsc\types\win10-light\icons\*"; DestDir: "{app}\share\icons"; Flags: recursesubdirs createallsubdirs; Components: theme\win10\light
; Windows 10 Dark:
Source: "rsc\types\win10-dark\config\*"; DestDir: "{app}\etc\gtk-3.0"; Components: theme\win10\dark
Source: "rsc\types\win10-dark\themes\*"; DestDir: "{app}\share\themes"; Flags: recursesubdirs createallsubdirs; Components: theme\win10\dark
Source: "rsc\types\win10-dark\icons\*"; DestDir: "{app}\share\icons"; Flags: recursesubdirs createallsubdirs; Components: theme\win10\dark
; Adwaita Light:
Source: "rsc\types\adwaita-light\config\*"; DestDir: "{app}\etc\gtk-3.0"; Components: theme\adwaita\light
; Adwaita Dark:
Source: "rsc\types\adwaita-dark\config\*"; DestDir: "{app}\etc\gtk-3.0"; Components: theme\adwaita\dark
; Pop Light:
Source: "rsc\types\pop-light\config\*"; DestDir: "{app}\etc\gtk-3.0"; Components: theme\pop\light
Source: "rsc\types\pop-light\themes\*"; DestDir: "{app}\share\themes"; Flags: recursesubdirs createallsubdirs; Components: theme\pop\light
Source: "rsc\types\pop-light\icons\*"; DestDir: "{app}\share\icons"; Flags: recursesubdirs createallsubdirs; Components: theme\pop\light
; Pop Dark:
Source: "rsc\types\pop-dark\config\*"; DestDir: "{app}\etc\gtk-3.0"; Components: theme\pop\dark
Source: "rsc\types\pop-dark\themes\*"; DestDir: "{app}\share\themes"; Flags: recursesubdirs createallsubdirs; Components: theme\pop\dark
Source: "rsc\types\pop-dark\icons\*"; DestDir: "{app}\share\icons"; Flags: recursesubdirs createallsubdirs; Components: theme\pop\dark

[Registry]
Root: HKLM64; Subkey: "SOFTWARE\GTK Windows pack"; Flags: uninsdeletekeyifempty
Root: HKLM64; Subkey: "SOFTWARE\GTK Windows pack"; ValueType: string; ValueName: "GTK 3.0"; \
    ValueData: "{#MyAppVersion}"; Flags: uninsdeletekey
Root: HKLM; Subkey: "SYSTEM\CurrentControlSet\Control\Session Manager\Environment"; \
    ValueType: expandsz; ValueName: "Path"; ValueData: "{app}\bin;{olddata}"

[Icons]
Name: "{group}\{#MyProjectName} website"; Filename: "{#MyAppURL}"
Name: "{group}\Uninstall {#MyPackageName} ({#MyAppVersion})"; Filename: "{uninstallexe}"

