local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = mp
L0_0 = L0_0.GetHSTRCallerId
L0_0 = L0_0()
L1_1 = mp
L1_1 = L1_1.HSTR_CALLER_SMS
if L0_0 ~= L1_1 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.GetScannedPPID
L0_0 = L0_0()
if not L0_0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = {}
L6_6 = L3_3(L4_4)
for L5_5, L6_6 in L2_2(L3_3, L4_4, L5_5, L6_6, L3_3(L4_4)) do
  table.insert(L1_1, L6_6)
end
L1_1 = L2_2
L5_5 = 1
L6_6 = true
if L2_2 == nil then
  L5_5 = L1_1
  L2_2(L3_3, L4_4, L5_5)
  return L2_2
end
return L2_2
