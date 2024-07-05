local L0_0
L0_0 = mp
L0_0 = L0_0.GetScannedPPID
L0_0 = L0_0()
if L0_0 ~= nil then
  TrackCustomPersistContextNameByPPID("set", L0_0, "MimikatzTrigger")
  MpCommon.RequestSmsOnProcess(L0_0, MpCommon.SMS_SCAN_MED)
end
return mp.INFECTED
