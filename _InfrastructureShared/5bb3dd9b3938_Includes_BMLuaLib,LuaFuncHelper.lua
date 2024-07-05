local L0_0, L1_1, L2_2
L0_0 = string
L0_0 = L0_0.lower
L1_1 = MpCommon
L1_1 = L1_1.PathToWin32Path
L2_2 = bm
L2_2 = L2_2.get_imagepath
L2_2 = L2_2()
L2_2 = L1_1(L2_2, L2_2())
L0_0 = L0_0(L1_1, L2_2, L1_1(L2_2, L2_2()))
L1_1 = {L2_2, "SCRIPTENG"}
L2_2 = "OFFICE"
L2_2 = {}
L2_2.min = 1
L2_2.max = 5
if QueryProcContext(L1_1, L2_2) then
  return mp.INFECTED
end
if L0_0 and (IsKeyInRollingQueue("SuspExeFileDroppedViaSMB", L0_0, true) or MpCommon.QueryPersistContext(L0_0, "NewPECreatedNoCert")) then
  return mp.INFECTED
end
return mp.CLEAN
