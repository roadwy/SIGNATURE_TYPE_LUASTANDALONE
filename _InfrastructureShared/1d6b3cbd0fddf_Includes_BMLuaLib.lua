local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = GetSuspiciousAllocsInBmLog
L0_0 = L0_0()
if not L0_0 then
  return L1_1
end
for L4_4 in L1_1(L2_2) do
  TriggerTargetedMemoryScan(L4_4)
  AddSuspiciousRegion(L4_4)
end
L1_1()
return L1_1
