local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = ""
L1_1 = mp
L1_1 = L1_1.enum_mpattributesubstring
L1_1 = L1_1(L2_2)
if L1_1 ~= nil then
  if L2_2 > 0 then
    for L5_5, L6_6 in L2_2(L3_3) do
      L7_7 = string
      L7_7 = L7_7.lower
      L7_7 = L7_7(L6_6)
      if string.find(L7_7, "coinminer", 1, true) == nil and string.find(L7_7, "namedminer", 1, true) == nil and string.find(L7_7, "miner", 1, true) ~= nil then
        L0_0 = string.format("%s%s|", L0_0, L7_7)
      end
    end
    if L0_0 ~= "" then
      L2_2(L3_3, L4_4)
    end
  end
end
return L2_2
