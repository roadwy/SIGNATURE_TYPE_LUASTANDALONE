local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = false
L1_1 = nil
if L2_2 then
  L1_1 = L2_2.utf8p2
  L0_0 = true
end
if L2_2 then
  L1_1 = L2_2.utf8p2
  for L5_5, L6_6 in L2_2(L3_3, L4_4) do
    if tonumber(L5_5) <= 443 and tonumber(L6_6) >= 443 then
      L0_0 = true
    end
  end
end
L5_5 = L1_1
if L0_0 and not L3_3 then
  L5_5 = mp
  L5_5 = L5_5.INFECTED
  return L5_5
end
L5_5 = mp
L5_5 = L5_5.CLEAN
return L5_5
