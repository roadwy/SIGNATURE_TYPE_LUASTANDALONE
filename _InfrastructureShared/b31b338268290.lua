local L0_0, L1_1, L2_2, L3_3
L0_0 = false
L1_1 = false
L2_2 = false
L3_3 = this_sigattrlog
L3_3 = L3_3[4]
L3_3 = L3_3.matched
L0_0 = L3_3 or L3_3 or L3_3 or L3_3 or L3_3 or L3_3 or L3_3 or L3_3 or L3_3 or L3_3.matched
L3_3 = this_sigattrlog
L3_3 = L3_3[5]
L3_3 = L3_3.matched
L1_1 = L3_3 or L3_3 or L3_3 or L3_3 or L3_3 or L3_3 or L3_3 or L3_3 or L3_3 or L3_3.matched
L3_3 = this_sigattrlog
L3_3 = L3_3[6]
L3_3 = L3_3.matched
L2_2 = L3_3 or L3_3 or L3_3 or L3_3 or L3_3 or L3_3 or L3_3 or L3_3 or L3_3 or L3_3.matched
if L0_0 and L1_1 or L0_0 and L2_2 or L1_1 and L2_2 then
  L3_3 = mp
  L3_3 = L3_3.INFECTED
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
