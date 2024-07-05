local L0_0
L0_0 = mp
L0_0 = L0_0.GetScannedPPID
L0_0 = L0_0()
if L0_0 == nil then
  return mp.CLEAN
end
MpCommon.RequestSmsOnProcess(L0_0, MpCommon.SMS_SCAN_ONCE)
return mp.INFECTED
