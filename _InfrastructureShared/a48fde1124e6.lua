local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = hstrlog
L0_0 = L0_0[1]
L0_0 = L0_0.hitcount
L1_1 = hstrlog
L1_1 = L1_1[2]
L1_1 = L1_1.hitcount
L2_2 = hstrlog
L2_2 = L2_2[3]
L2_2 = L2_2.hitcount
L3_3 = hstrlog
L3_3 = L3_3[4]
L3_3 = L3_3.hitcount
L4_4 = hstrlog
L4_4 = L4_4[5]
L4_4 = L4_4.hitcount
L5_5 = hstrlog
L5_5 = L5_5[6]
L5_5 = L5_5.hitcount
if L0_0 > 10 or L1_1 > 10 or L2_2 > 10 or L3_3 > 10 or L4_4 > 10 or L5_5 > 10 then
  L6_6 = mp
  L6_6 = L6_6.INFECTED
  return L6_6
end
L6_6 = mp
L6_6 = L6_6.CLEAN
return L6_6
