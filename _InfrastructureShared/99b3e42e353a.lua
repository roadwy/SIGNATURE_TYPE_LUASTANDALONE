local L0_0, L1_1
L0_0 = this_sigattrlog
L0_0 = L0_0[5]
L0_0 = L0_0.matched
if L0_0 == false then
  L0_0 = mp
  L0_0 = L0_0.INFECTED
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
