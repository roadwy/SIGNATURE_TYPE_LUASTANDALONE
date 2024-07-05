local L1_0
function L1_0()
  MpCommon.SetGlobalMpAttribute("CFABootProtStateScan")
  MpDetection.ScanResource("regkeyvalue://HKLM\\SOFTWARE\\Microsoft\\Windows Defender\\Diagnostics\\\\MpPayloadStatus")
  MpCommon.DeleteGlobalMpAttribute("CFABootProtStateScan")
end
Infrastructure_ScanCFABootProtState = L1_0
