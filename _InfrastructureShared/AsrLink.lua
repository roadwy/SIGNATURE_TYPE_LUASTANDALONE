local L1_0
function L1_0(A0_1)
  MpCommon.SetGlobalMpAttribute("DefenderAsrLinkRescue")
  if A0_1 == "postsig" then
    MpDetection.ScanResource("regkeyvalue://HKLM\\Software\\Microsoft\\ASRFix\\\\scriptresult")
  elseif A0_1 == "qscanmachine" or A0_1 == "qscanuser" then
    MpDetection.ScanResource("regkeyvalue://HKCU\\Software\\Microsoft\\ASRFix\\\\scriptresult")
    MpDetection.ScanResource("regkeyvalue://HKCU\\Software\\Microsoft\\ASRFix\\\\mptaskbarrecoverversion")
  end
  MpCommon.DeleteGlobalMpAttribute("DefenderAsrLinkRescue")
end
Infrastructure_AsrLinkScan = L1_0
