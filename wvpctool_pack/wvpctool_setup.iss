; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Wvpctool"
#define MyAppVersion "1.1.2_0603"
#define MyAppPublisher "Rockchip, Inc."
#define MyAppURL "http://www.rock-chips.com/"
#define MyAppExeName "Wvpctool.exe"
[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{0D8D1631-E481-420B-A308-1B9317FD53A5}
AppName={cm:MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={cm:MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{cm:MyCompany}\{cm:MyAppName}
DefaultGroupName={cm:MyAppName}
OutputDir=..\out
OutputBaseFilename=Wvpctool_Setup_V{#MyAppVersion}
Compression=lzma
SolidCompression=yes

[Languages]
Name: cn; MessagesFile: "compiler:Languages\chinesesimp.isl"
Name: en; MessagesFile: "compiler:Languages\English.isl"
[CustomMessages]
cn.MyAppName=WideVine&Fuse����
cn.MyAppPublisher=��о΢�������޹�˾
cn.MyCompany=��о΢����
en.MyAppName=WideVine&FuseTool
en.MyAppPublisher=Rockchip,Inc.
en.MyCompany=Rockchip

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "config_cn.ini"   ; DestDir: "{app}"; Flags: ignoreversion onlyifdoesntexist; Languages: cn ;DestName: "config.ini"
Source: "config_en.ini"   ; DestDir: "{app}"; Flags: ignoreversion onlyifdoesntexist; Languages: en ;DestName: "config.ini"
Source: "libipcs_tcpip_plugin.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "wvpctool.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "wvtoolʹ��ָ�� - V1.0.0.pdf"; DestDir: "{app}"; Flags: ignoreversion
Source: "ReadMe.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "Lan\*"; DestDir: "{app}\Language"; Flags: ignoreversion recursesubdirs createallsubdirs
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
