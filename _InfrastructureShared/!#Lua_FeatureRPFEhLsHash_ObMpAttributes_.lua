local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L1_1 = mp
L1_1 = L1_1.get_mpattribute
L1_1 = L1_1(L2_2)
if L1_1 then
  L1_1 = mp
  L1_1 = L1_1.enum_mpattributesubstring
  L1_1 = L1_1(L2_2)
  L0_0 = L1_1
else
  L1_1 = mp
  L1_1 = L1_1.get_mpattribute
  L1_1 = L1_1(L2_2)
  if L1_1 then
    L1_1 = mp
    L1_1 = L1_1.enum_mpattributesubstring
    L1_1 = L1_1(L2_2)
    L0_0 = L1_1
  else
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
end
L1_1 = {}
for L5_5, L6_6 in L2_2(L3_3) do
  L8_8 = L6_6
  L7_7 = L6_6.match
  L9_9 = ":EH:LsHash:(%x+):(%x+):(%x+)$"
  L9_9 = L7_7(L8_8, L9_9)
  L1_1[#L1_1 + 1] = {
    tonumber(L7_7, 16),
    tonumber(L8_8, 16),
    L9_9
  }
end
L2_2(L3_3, L4_4)
for L6_6, L7_7 in L3_3(L4_4) do
  if L6_6 > 3 then
    break
  end
  L8_8 = #L2_2
  L8_8 = L8_8 + 1
  L9_9 = L7_7[3]
  L2_2[L8_8] = L9_9
end
L6_6 = L2_2
L7_7 = ","
L3_3(L4_4)
return L3_3
