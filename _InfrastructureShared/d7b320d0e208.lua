local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = mp
L0_0 = L0_0.enum_mpattributesubstring
L0_0 = L0_0(L1_1)
if L1_1 == 0 or L0_0 == nil then
  return L1_1
end
for L4_4, L5_5 in L1_1(L2_2) do
  bm.add_related_string("RelatedBMHits", L5_5, bm.RelatedStringBMReport)
end
return L1_1
