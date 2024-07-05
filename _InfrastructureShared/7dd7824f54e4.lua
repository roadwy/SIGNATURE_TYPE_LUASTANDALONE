local L0_0, L1_1, L2_2
L0_0 = MpCommon
L0_0 = L0_0.PathToWin32Path
L1_1 = MpCommon
L1_1 = L1_1.GetImagePathFromPid
L2_2 = mp
L2_2 = L2_2.GetScannedPPID
L2_2 = L2_2()
L2_2 = L1_1(L2_2, L2_2())
L0_0 = L0_0(L1_1, L2_2, L1_1(L2_2, L2_2()))
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L2_2 = L0_0
L1_1 = L1_1(L2_2)
L0_0 = L1_1
L1_1 = MpCommon
L1_1 = L1_1.QueryPersistContext
L2_2 = L0_0
L1_1 = L1_1(L2_2, "RenamedRegExe")
if not L1_1 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = {}
table.insert(L2_2, "security")
MpCommon.SetPersistContextNoPath("DumpHive.B!security", L2_2, 300)
if MpCommon.GetPersistContextCountNoPath("DumpHive.B!system") > 0 or 0 < MpCommon.GetPersistContextCountNoPath("DumpHive.B!sam") then
  return mp.INFECTED
end
return mp.CLEAN
