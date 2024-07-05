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
if L1_1 == nil then
  return mp.CLEAN
end
if not MpCommon.QueryPersistContextNoPath("isRebootDangerous", "GrubTampering.A") then
  return mp.CLEAN
end
if string.find(L1_1, "/lib/systemd/systemd", 1, true) or string.find(L1_1, "/usr/bin/sudo", 1, true) then
  return mp.LOWFI
end
return mp.CLEAN
