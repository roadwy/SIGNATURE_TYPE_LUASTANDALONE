local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L5_5 = this_sigattrlog
L5_5 = L5_5[1]
L5_5 = L5_5.matched
if L5_5 then
  L5_5 = this_sigattrlog
  L5_5 = L5_5[1]
  L4_4 = L5_5.utf8p2
  if L4_4 ~= nil then
    L0_0 = L4_4
  end
end
L5_5 = this_sigattrlog
L5_5 = L5_5[2]
L5_5 = L5_5.matched
if L5_5 then
  L5_5 = this_sigattrlog
  L5_5 = L5_5[2]
  L4_4 = L5_5.utf8p2
  if L4_4 ~= nil then
    L1_1 = L4_4
  end
end
L5_5 = this_sigattrlog
L5_5 = L5_5[3]
L5_5 = L5_5.matched
if L5_5 then
  L5_5 = this_sigattrlog
  L5_5 = L5_5[3]
  L4_4 = L5_5.utf8p2
  if L4_4 ~= nil then
    L2_2 = L4_4
  end
end
L5_5 = this_sigattrlog
L5_5 = L5_5[4]
L5_5 = L5_5.matched
if L5_5 then
  L5_5 = this_sigattrlog
  L5_5 = L5_5[4]
  L4_4 = L5_5.utf8p2
  if L4_4 ~= nil then
    L3_3 = L4_4
  end
end
if L2_2 ~= nil and L3_3 ~= nil then
  L6_6 = L2_2
  L5_5 = L2_2.match
  L5_5 = L5_5(L6_6, "([^ ]+)$")
  L6_6 = L3_3.match
  L6_6 = L6_6(L3_3, "([^ ]+)$")
  if L5_5 ~= nil and L6_6 ~= nil and (string.find(L0_0, L5_5, 1, true) or string.find(L1_1, L5_5, 1, true)) and (string.find(L0_0, L6_6, 1, true) or string.find(L1_1, L6_6, 1, true)) then
    return mp.INFECTED
  end
end
L5_5 = mp
L5_5 = L5_5.CLEAN
return L5_5
