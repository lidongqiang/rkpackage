; 脚本由 Inno Setup 脚本向导 生成！
; 有关创建 Inno Setup 脚本文件的详细资料请查阅帮助文档！

#define MyAppName "SNWTool"
#define MyAppVersion "1.21.3_1106"
#define MyAppPublisher "Fuzhou Rockchip Electronics Co., Ltd."
#define MyAppURL "http://www.rock-chips.com/"
#define MyAppExeName "SNWTool.exe"
#define APPPATH    "D:\rkprojs\snwtool\bin"
[Setup]
; 注: AppId的值为单独标识该应用程序。
; 不要为其他安装程序使用相同的AppId值。
; (生成新的GUID，点击 工具|在IDE中生成GUID。)
AppId={{861446EF-7B9A-4900-80DF-EEDE2B38F679}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName=C:\rock-chips\{#MyAppName}
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
OutputDir=..\out
OutputBaseFilename=SNWTool_setup_v{#MyAppVersion}
SetupIconFile=icon.ico
Compression=lzma
SolidCompression=yes

[Languages]
Name: "chinesesimp"; MessagesFile: "compiler:Languages\chinesesimp.isl"
Name: "english"; MessagesFile: "compiler:Languages\English.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; OnlyBelowVersion: 0,6.1
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "{#APPPATH}\SNWTool.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#APPPATH}\cn.dll"; DestDir: "{app}"; Flags: ignoreversion
;Source: "{#APPPATH}\conf.dll"; DestDir: "{app}"; Flags: ignoreversion
;Source: "{#APPPATH}\ReadMe.txt"; DestDir: "{app}"; Flags: ignoreversionSource: "ReadMe.txt"; DestDir: "{app}"; Flags: ignoreversion
;Source: "config.bin"; DestDir: "{app}"; Flags: ignoreversion
Source: "config_cn.bin"   ; DestDir: "{app}"; Flags: ignoreversion onlyifdoesntexist; Languages: chinesesimp ;DestName: "config.bin"
Source: "config_en.bin"   ; DestDir: "{app}"; Flags: ignoreversion onlyifdoesntexist; Languages: english ;DestName: "config.bin"
Source: "1.ini"   ; DestDir: "{app}"; Flags: ignoreversion ;
Source: "2.ini"   ; DestDir: "{app}"; Flags: ignoreversion ;
Source: "autoinfo.bin"; DestDir: "{app}"; Flags: ignoreversion
Source: "IPICOM.DLL"; DestDir: "{app}"; Flags: ignoreversion
Source: "libipcs.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "libipcs_com_plugin.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "sec_provision.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "signing_module.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "ReadMe.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "Sprk2048dev.key"; DestDir: "{app}"; Flags: ignoreversion
Source: "Sprk2048dev_unfuse.key"; DestDir: "{app}"; Flags: ignoreversion
Source: "unlockcodes.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "SNWTool使用指南 - V1.0.3.pdf"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\gtidriver\Driver\*"; DestDir: "{app}\Driver"; Flags: ignoreversion recursesubdirs createallsubdirs
;Source: "D:\rock-chips\InnoSetup\SNWTool\WMC_imc1_v4.24.0\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; 注意: 不要在任何共享系统文件上使用“Flags: ignoreversion”
[Registry]
Root: HKLM; Subkey: "SYSTEM\CurrentControlSet\Control\UsbFlags"; Flags: createvalueifdoesntexist deletevalue;ValueType: binary ; ValueName: "GlobalDisableSerNumGen"; ValueData: "00"
Root: HKLM; Subkey: "SYSTEM\CurrentControlSet\Control\UsbFlags"; Flags: createvalueifdoesntexist deletevalue;ValueType: binary ; ValueName: "IgnoreHWSerNum80870928"; ValueData: "01"
Root: HKLM; Subkey: "SYSTEM\CurrentControlSet\Control\UsbFlags"; Flags: createvalueifdoesntexist deletevalue;ValueType: binary ; ValueName: "IgnoreHWSerNum8087092A"; ValueData: "01"
Root: HKLM; Subkey: "SYSTEM\CurrentControlSet\Control\UsbFlags"; Flags: createvalueifdoesntexist deletevalue;ValueType: binary ; ValueName: "IgnoreHWSerNum8087092B"; ValueData: "01"

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent; Languages: chinesesimp;
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent; Languages: english;

[Code]
procedure DeinitializeUninstall();
begin
  DelTree(ExpandConstant('{app}'),True,True,True);
end;



