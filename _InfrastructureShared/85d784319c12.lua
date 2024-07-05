local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.GetScannedPPID
L0_0 = L0_0()
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = MpCommon
L1_1 = L1_1.GetImagePathFromPid
L1_1 = L1_1(L0_0)
if L1_1 == nil or #L1_1 <= 7 then
  return mp.CLEAN
end
if not MpCommon.QueryPersistContext(L1_1, "SysintToolsCopyFileA") then
  return mp.CLEAN
end
return mp.INFECTED
