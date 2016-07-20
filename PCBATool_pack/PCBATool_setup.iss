; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "PCBATool"
#define MyAppVersion "1.1.2_0711"
#define MyAppPublisher "Rockchip, Inc."
#define MyAppURL "http://www.rock-chips.com/"
#define MyAppExeName "PCBATool.exe"
[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{6C70DB64-7459-4BEA-87DE-9CDCE64B33E0}
AppName={cm:MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={cm:MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName=C:\rock-chips\{#MyAppName}
DefaultGroupName={cm:MyAppName}
OutputDir=..\out
OutputBaseFilename=PCBATool_Setup_V{#MyAppVersion}
Compression=lzma
SolidCompression=yes

[Languages]
Name: cn; MessagesFile: "compiler:Languages\chinesesimp.isl"
Name: en; MessagesFile: "compiler:Languages\English.isl"
[CustomMessages]
cn.MyAppName=PCBATool
cn.MyAppPublisher=瑞芯微电子有限公司
cn.MyCompany=瑞芯微电子
en.MyAppName=PCBATool
en.MyAppPublisher=Rockchip,Inc.
en.MyCompany=Rockchip

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]Source: "IPICOM.DLL"; DestDir: "{app}"; Flags: ignoreversion
Source: "config_cn.ini"   ; DestDir: "{app}"; Flags: ignoreversion onlyifdoesntexist; Languages: cn ;DestName: "config.ini"
Source: "config_en.ini"   ; DestDir: "{app}"; Flags: ignoreversion onlyifdoesntexist; Languages: en ;DestName: "config.ini"Source: "libipcs.dll"; DestDir: "{app}"; Flags: ignoreversionSource: "libipcs_com_plugin.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "libipcs_tcpip_plugin.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "PCBATool.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "ReadMe.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "Lan\*"; DestDir: "{app}\Lan"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "..\gtidriver\Driver\*"; DestDir: "{app}\Driver"; Flags: ignoreversion recursesubdirs createallsubdirs
[Icons]
Name: "{group}\{cm:MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:UninstallProgram,{cm:MyAppName}}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\{cm:MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent runascurrentuser
[Code]
(*
function InitializeUninstall(): Boolean;
begin
  DelTree(ExpandConstant('{app}')+'\Log',True,True,True);
  Result := True;
end;
*)
procedure DeinitializeUninstall();
begin
  DelTree(ExpandConstant('{app}'),True,True,True);
end;

