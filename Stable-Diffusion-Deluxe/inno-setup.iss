; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Stable Diffusion Deluxe"
#define MyAppVersion "1.9"
#define MyAppPublisher "Skquark, Inc."
#define MyAppURL "https://www.DiffusionDeluxe.com/"
#define MyAppExeName "sdd-venv.bat"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{13C3C6E6-A1F0-4814-877A-EC12DEC65429}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\StableDiffusionDeluxe
OutputDir=D:\Projects\AI-Friends\AI-Friends\Stable-Diffusion-Deluxe\
DisableProgramGroupPage=yes
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
OutputBaseFilename=SDD-setup
SetupIconFile=D:\Projects\AI-Friends\AI-Friends\Stable-Diffusion-Deluxe\favicon.ico
WizardSmallImageFile=D:\Projects\AI-Friends\AI-Friends\Stable-Diffusion-Deluxe\logo-image-55x58.bmp
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "D:\Projects\AI-Friends\AI-Friends\Stable-Diffusion-Deluxe\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Projects\AI-Friends\AI-Friends\Stable-Diffusion-Deluxe\refresh.bat"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Projects\AI-Friends\AI-Friends\Stable-Diffusion-Deluxe\debug-venv.bat"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Projects\AI-Friends\AI-Friends\Stable-Diffusion-Deluxe\run-sdd.ps1"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Projects\AI-Friends\AI-Friends\Stable-Diffusion-Deluxe\sdd-local.bat"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Projects\AI-Friends\AI-Friends\Stable-Diffusion-Deluxe\sdd-noupdate.bat"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; IconFilename:"D:\Projects\AI-Friends\AI-Friends\Stable-Diffusion-Deluxe\favicon.ico"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon; IconFilename:"D:\Projects\AI-Friends\AI-Friends\Stable-Diffusion-Deluxe\favicon.ico"

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: shellexec postinstall skipifsilent

