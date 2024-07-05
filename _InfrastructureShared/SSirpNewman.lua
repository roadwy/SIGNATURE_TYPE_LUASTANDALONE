local L1_0
function L1_0()
  MpDetection.ScanResource("specialfolder://recursive:file:%ExchangeInstallPath%\\FrontEnd\\HttpProxy\\owa\\auth")
  MpDetection.ScanResource("specialfolder://recursive:file:%ExchangeInstallPath%\\ClientAccess\\ecp")
  MpDetection.ScanResource("specialfolder://recursive:file:%ExchangeInstallPath%\\FrontEnd\\HttpProxy\\ecp\\auth")
  MpDetection.ScanResource("specialfolder://recursive:file:%ExchangeInstallPath%\\FrontEnd\\HttpProxy\\bin")
  MpDetection.ScanResource("specialfolder://recursive:file:%Windir%\\Microsoft.NET\\Framework64\\v4.0.30319\\Temporary ASP.NET Files\\")
  MpDetection.ScanResource("specialfolder://recursive:file:%SystemDrive%\\inetpub\\wwwroot")
  MpDetection.ScanResource("specialfolder://recursive:file:%ProgramData%\\COM")
end
Infrastructure_NewmanScan = L1_0
