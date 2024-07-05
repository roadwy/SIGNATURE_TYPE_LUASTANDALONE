local L0_0, L1_1, L2_2, L3_3
L0_0 = hstrlog
L0_0 = L0_0[1]
L0_0 = L0_0.hitcount
L1_1 = hstrlog
L1_1 = L1_1[2]
L1_1 = L1_1.hitcount
L2_2 = hstrlog
L2_2 = L2_2[3]
L2_2 = L2_2.hitcount
if L0_0 > 5 or L1_1 > 5 or L2_2 > 5 then
  L3_3 = mp
  L3_3 = L3_3.INFECTED
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
