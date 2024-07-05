local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = GetSuspiciousAllocsInBmLog
L0_0 = L0_0()
if not L0_0 then
  return L1_1
end
for L4_4 in L1_1(L2_2) do
  L5_5(L6_6)
  L5_5(L6_6)
end
L1_1()
L4_4 = this_sigattrlog
L4_4 = L4_4[5]
L8_8 = L2_2
for L8_8, _FORV_9_ in L5_5(L6_6) do
  if _FORV_9_ and _FORV_9_.utf8p2 then
    bm.add_related_string(string.format("ddb49deb_%d", L8_8), _FORV_9_.utf8p2, bm.RelatedStringBMReport)
  end
end
return L5_5
