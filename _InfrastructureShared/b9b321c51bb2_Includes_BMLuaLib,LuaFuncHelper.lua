local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = add_parents
L0_0()
L0_0 = reportSessionInformationInclusive
L0_0()
L0_0 = reportRelevantUntrustedEntities
L1_1 = 0
L0_0 = L0_0(L1_1)
if L0_0 then
  L1_1 = next
  L2_2 = L0_0
  L1_1 = L1_1(L2_2)
  if L1_1 then
    L1_1 = bm
    L1_1 = L1_1.add_related_string
    L2_2 = "HasUntrustedEntities"
    L1_1(L2_2, L3_3, L4_4)
    L1_1 = bm
    L1_1 = L1_1.add_related_string
    L2_2 = "UntrustedEntities"
    L1_1(L2_2, L3_3, L4_4)
  end
end
L1_1 = add_parents
L1_1 = L1_1()
L2_2 = {}
for L6_6, L7_7 in L3_3(L4_4) do
  L8_8 = L7_7.match
  L8_8 = L8_8(L7_7, "([^\\]+)$")
  table.insert(L2_2, L8_8)
end
if L3_3 then
  for L7_7, L8_8 in L4_4(L5_5) do
    if contains(L8_8, L2_2) then
      bm.add_related_string("RegisteredSrv", L8_8, bm.RelatedStringBMReport)
      break
    end
  end
end
return L4_4
