local L0_0, L1_1, L2_2, L3_3
L0_0 = this_sigattrlog
L0_0 = L0_0[3]
L0_0 = L0_0.timestamp
L1_1 = this_sigattrlog
L1_1 = L1_1[2]
L1_1 = L1_1.timestamp
if L0_0 < L1_1 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = L0_0 - L1_1
if L2_2 > 10000000 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.INFECTED
return L3_3
