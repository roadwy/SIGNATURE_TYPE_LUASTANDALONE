local L0_0, L1_1, L2_2
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
L2_2 = L0_0
L1_1 = L1_1(L2_2)
L2_2 = string
L2_2 = L2_2.lower
L2_2 = L2_2(L1_1)
if L2_2 == nil then
  return mp.CLEAN
end
MpCommon.SetPersistContextNoPath("DllFromOdbcAction", {L2_2}, 100)
return mp.CLEAN
