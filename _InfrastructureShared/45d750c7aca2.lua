local L0_0
L0_0 = mp
L0_0 = L0_0.GetScannedPPID
L0_0 = L0_0()
if L0_0 == nil then
  return mp.CLEAN
end
if L0_0 ~= nil then
  MpCommon.RequestSmsOnProcess(L0_0, MpCommon.SMS_SCAN_MED)
  return mp.INFECTED
end
return mp.CLEAN
