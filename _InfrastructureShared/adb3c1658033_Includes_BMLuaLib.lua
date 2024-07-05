local L0_0, L1_1, L2_2, L3_3, L4_4
L4_4 = this_sigattrlog
L4_4 = L4_4[1]
L4_4 = L4_4.matched
if L4_4 then
  L4_4 = this_sigattrlog
  L4_4 = L4_4[1]
  L4_4 = L4_4.utf8p2
  if L4_4 ~= nil then
    L4_4 = this_sigattrlog
    L4_4 = L4_4[1]
    L0_0 = L4_4.utf8p2
  end
end
L4_4 = this_sigattrlog
L4_4 = L4_4[2]
L4_4 = L4_4.matched
if L4_4 then
  L4_4 = this_sigattrlog
  L4_4 = L4_4[2]
  L4_4 = L4_4.utf8p2
  if L4_4 ~= nil then
    L4_4 = this_sigattrlog
    L4_4 = L4_4[2]
    L1_1 = L4_4.utf8p2
  end
end
L4_4 = this_sigattrlog
L4_4 = L4_4[3]
L4_4 = L4_4.matched
if L4_4 then
  L4_4 = this_sigattrlog
  L4_4 = L4_4[3]
  L4_4 = L4_4.utf8p2
  if L4_4 ~= nil then
    L4_4 = this_sigattrlog
    L4_4 = L4_4[3]
    L2_2 = L4_4.utf8p2
  end
end
L4_4 = this_sigattrlog
L4_4 = L4_4[4]
L4_4 = L4_4.matched
if L4_4 then
  L4_4 = this_sigattrlog
  L4_4 = L4_4[4]
  L4_4 = L4_4.utf8p2
  if L4_4 ~= nil then
    L4_4 = this_sigattrlog
    L4_4 = L4_4[4]
    L3_3 = L4_4.utf8p2
  end
end
if L0_0 ~= nil and L0_0 ~= "" and L1_1 ~= nil and L1_1 ~= "" and L2_2 ~= nil and L2_2 ~= "" and L3_3 ~= nil and L3_3 ~= "" and L0_0 ~= L1_1 and L0_0 ~= L2_2 and L0_0 ~= L3_3 and L1_1 ~= L2_2 and L1_1 ~= L3_3 and L2_2 ~= L3_3 then
  L4_4 = mp
  L4_4 = L4_4.INFECTED
  return L4_4
end
L4_4 = mp
L4_4 = L4_4.CLEAN
return L4_4
