local L0_0, L1_1
L0_0 = this_sigattrlog
L0_0 = L0_0[3]
L0_0 = L0_0.utf8p2
L1_1 = this_sigattrlog
L1_1 = L1_1[3]
L1_1 = L1_1.utf8p1
if L0_0 == L1_1 then
  L0_0 = mp
  L0_0 = L0_0.INFECTED
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
