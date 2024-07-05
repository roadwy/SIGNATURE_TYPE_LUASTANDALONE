local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
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
  L4_4
}
for L5_5, L6_6 in L2_2(L3_3) do
  L7_7 = string
  L7_7 = L7_7.find
  L7_7 = L7_7(L0_0, L6_6, 1, true)
  if L7_7 == nil then
    L7_7 = mp
    L7_7 = L7_7.CLEAN
    return L7_7
  end
end
for L6_6, L7_7 in L3_3(L4_4) do
  if string.find(L0_0, L7_7, 1, true) then
    return mp.CLEAN
  end
end
if L3_3 then
  if L3_3 ~= nil then
    if L4_4 > 1 then
      L6_6, L7_7 = nil, nil
      L4_4(L5_5, L6_6, L7_7, 1)
    end
  end
end
return L3_3
