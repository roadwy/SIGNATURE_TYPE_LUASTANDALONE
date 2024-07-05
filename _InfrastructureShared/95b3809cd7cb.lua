local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
L1_1 = string
L1_1 = L1_1.lower
L2_2 = L0_0.command_line
L1_1 = L1_1(L2_2)
L2_2 = string
L2_2 = L2_2.find
L6_6 = true
L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
if L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.enum_mpattributesubstring
L2_2 = L2_2(L3_3)
if L3_3 == 0 or L2_2 == nil then
  return L3_3
end
for L6_6, L7_7 in L3_3(L4_4) do
  bm.add_related_string("RelatedBMHits", L7_7, bm.RelatedStringBMReport)
end
return L3_3
