local L0_0, L1_1, L2_2
L2_2 = this_sigattrlog
L2_2 = L2_2[11]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[11]
  L0_0 = L2_2.utf8p1
end
L2_2 = this_sigattrlog
L2_2 = L2_2[12]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[12]
  L1_1 = L2_2.utf8p1
end
if L0_0 ~= nil and L1_1 ~= nil and L0_0 == L1_1 then
  L2_2 = mp
  L2_2 = L2_2.INFECTED
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
