local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L1_1 = this_sigattrlog
L1_1 = L1_1[2]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L1_1 = L1_1.utf8p2
  if L1_1 ~= nil then
    L1_1 = string
    L1_1 = L1_1.lower
    L1_1 = L1_1(L2_2)
    L0_0 = L1_1
  end
end
if L0_0 ~= nil then
  L1_1 = #L0_0
elseif L1_1 <= 15 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = {
  L2_2,
  L3_3,
  L4_4,
  L5_5
}
L5_5 = ">"
for L5_5, L6_6 in L2_2(L3_3) do
  if string.find(L0_0, L6_6, 1, true) == nil then
    return mp.CLEAN
  end
end
if L2_2 then
  if L2_2 ~= nil then
    if L3_3 > 1 then
      L5_5, L6_6 = nil, nil
      L3_3(L4_4, L5_5, L6_6, 1)
    end
  end
end
return L2_2
