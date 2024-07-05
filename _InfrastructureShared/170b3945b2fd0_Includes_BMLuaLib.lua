local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = GetSuspiciousAllocsInBmLog
L1_1 = true
L0_0 = L0_0(L1_1)
if not L0_0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = 0
for L5_5 in L2_2(L3_3) do
  TriggerTargetedMemoryScan(L5_5)
  AddSuspiciousRegion(L5_5)
  L1_1 = L1_1 + 1
end
if L1_1 == 0 then
  return L2_2
end
L2_2()
return L2_2
