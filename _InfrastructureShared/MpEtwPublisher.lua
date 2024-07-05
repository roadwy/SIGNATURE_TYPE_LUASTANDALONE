local L1_0
function L1_0()
  if versioning.IsSeville() then
    MpCommon.SetGlobalMpAttribute("MpEtwPublisherKeyScan")
    MpDetection.ScanResource("regkeyvalue://HKLM\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\WINEVT\\Publishers\\{751ef305-6c6e-4fed-b847-02ef79d26aef}\\\\")
    MpCommon.DeleteGlobalMpAttribute("MpEtwPublisherKeyScan")
  end
end
Infrastructure_ScanMpEtwPublisher = L1_0
