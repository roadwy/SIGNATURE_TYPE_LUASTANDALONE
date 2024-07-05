local L1_0
function L1_0()
  if versioning.IsSeville() then
    MpCommon.SetGlobalMpAttribute("LeviathonKeyScan")
    MpDetection.ScanResource("regkeyvalue://HKLM\\SOFTWARE\\Microsoft\\Windows Advanced Threat Protection\\\\OnboardedInfo")
    MpCommon.DeleteGlobalMpAttribute("LeviathonKeyScan")
  end
end
Infrastructure_ScanLeviathon = L1_0
