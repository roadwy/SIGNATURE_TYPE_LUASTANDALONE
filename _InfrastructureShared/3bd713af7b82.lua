local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.GetScannedPPID
L0_0 = L0_0()
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.GetProcessCommandLine
L1_1 = L1_1(L0_0)
if L1_1 == nil then
  return mp.CLEAN
end
L1_1 = string.lower(L1_1)
if string.sub(L1_1, -6, -2) == ",motd" or string.sub(L1_1, -7, -2) == ",print" then
  if L0_0 ~= nil then
    MpCommon.RequestSmsOnProcess(L0_0, MpCommon.SMS_SCAN_MED)
  end
  return mp.INFECTED
end
return mp.CLEAN
