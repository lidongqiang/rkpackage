; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "CalibrationTool"
#define MyAppVersion "1.34.05_0524"
#define MyAppPublisher "Rockchip, Inc."
#define MyAppURL "http://www.rock-chips.com/"
#define MyAppExeName "CalibrationTool.exe"
#define CURDIR  
#define APPPATH    "D:\rkprojs\Intel_CalibrationTool\bin\"#define ENGINE_DLL "EngineDll"
[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{4A30D2DF-3C17-44F4-823E-755FEAFCDE1E}
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
OutputBaseFilename=CalibrationTool_Setup_V{#MyAppVersion}
Compression=lzma
SolidCompression=yes

[Languages]
Name: cn; MessagesFile: "compiler:Languages\chinesesimp.isl"
Name: en; MessagesFile: "compiler:Languages\English.isl"
[CustomMessages]
cn.MyAppName=校准和综测工具
cn.MyAppPublisher=瑞芯微电子有限公司
cn.MyCompany=瑞芯微电子
en.MyAppName=CalibrationTool
en.MyAppPublisher=Rockchip,Inc.
en.MyCompany=Rockchip

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
;Source: "IPICOM.DLL"; DestDir: "{app}"; Flags: ignoreversion
;Source: "sec_provision.exe"; DestDir: "{app}"; Flags: ignoreversion
;Source: "signing_module.dll"; DestDir: "{app}"; Flags: ignoreversion
;Source: "Sprk2048dev.key"; DestDir: "{app}"; Flags: ignoreversion
;Source: "OldSprk2048dev.key"; DestDir: "{app}"; Flags: ignoreversion
;Source: "Sprk2048dev_unfuse.key"; DestDir: "{app}"; Flags: ignoreversion
;Source: "unlockcodes.txt"; DestDir: "{app}"; Flags: ignoreversion
;Source: "config.ini"; DestDir: "{app}"; Flags: ignoreversion
Source: "config_cn.ini"   ; DestDir: "{app}"; Flags: ignoreversion onlyifdoesntexist; Languages: cn ;DestName: "config.ini"
Source: "config_en.ini"   ; DestDir: "{app}"; Flags: ignoreversion onlyifdoesntexist; Languages: en ;DestName: "config.ini"
;Source: "libipcs.dll"; DestDir: "{app}"; Flags: ignoreversion
;Source: "libipcs_com_plugin.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "CalibrationTool.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "校准和综测工具简要使用说明.pdf"; DestDir: "{app}"; Flags: ignoreversion
Source: "8960固件升级方法.pdf"; DestDir: "{app}"; Flags: ignoreversion
Source: "ReadMe.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "xmlconfig.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "Language\*"; DestDir: "{app}\Language"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "..\gtidriver\Driver\*"; DestDir: "{app}\Driver"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "EngineDll\*"; DestDir: "{app}\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "ipcs\*"; DestDir: "{app}\";Flags: ignoreversion recursesubdirs createallsubdirs
Source: "RFTestStatisticsTool\*"; DestDir: "{app}\RFTestStatisticsTool"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

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

