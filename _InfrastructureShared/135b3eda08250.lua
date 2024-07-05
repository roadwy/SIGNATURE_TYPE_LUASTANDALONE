local L0_0, L1_1, L2_2, L3_3
L3_3 = this_sigattrlog
L3_3 = L3_3[4]
L3_3 = L3_3.matched
if L3_3 then
  L3_3 = this_sigattrlog
  L3_3 = L3_3[4]
  L2_2 = L3_3.utf8p2
  if L2_2 ~= nil then
    L0_0 = L2_2
  end
end
L3_3 = this_sigattrlog
L3_3 = L3_3[5]
L3_3 = L3_3.matched
if L3_3 then
  L3_3 = this_sigattrlog
  L3_3 = L3_3[5]
  L2_2 = L3_3.utf8p2
  if L2_2 ~= nil then
    L1_1 = L2_2
  end
end
if L1_1 ~= nil then
  L3_3 = L1_1.match
  L3_3 = L3_3(L1_1, "([^ ]+)$")
  if L3_3 ~= nil and string.find(L0_0, L3_3, 1, true) then
    return mp.INFECTED
  end
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
