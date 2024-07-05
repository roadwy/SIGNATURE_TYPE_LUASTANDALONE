local L1_0
function L1_0()
  if versioning.GetProduct() ~= 17 then
    return
  end
  MpCommon.SetGlobalMpAttribute("IRScanGlobal")
  MpCommon.SetGlobalMpAttribute("MpIsExhaustiveScriptScan")
  MpDetection.ScanResource("specialfolder://recursive:file:%SystemDrive%\\inetpub\\logs\\LogFiles\\W3SVC1")
  MpDetection.ScanResource("specialfolder://recursive:file:%SystemDrive%\\inetpub\\logs\\LogFiles\\W3SVC2")
  MpCommon.DeleteGlobalMpAttribute("MpIsExhaustiveScriptScan")
  MpCommon.DeleteGlobalMpAttribute("IRScanGlobal")
end
Infrastructure_MicrosoftIRScan = L1_0
