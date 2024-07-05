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
MpCommon.SetPersistContextNoPath("MiKatzExe", L1_1, 100)
return mp.INFECTED
