local L0_0, L1_1, L2_2, L3_3
L0_0 = hstrlog
L0_0 = L0_0[1]
L0_0 = L0_0.VA
L1_1 = hstrlog
L1_1 = L1_1[2]
L1_1 = L1_1.VA
L2_2 = 0
if L0_0 < L1_1 then
  L2_2 = L1_1 - L0_0
else
  L2_2 = L0_0 - L1_1
end
if L2_2 > 160 and L2_2 < 256 then
  L3_3 = mp
  L3_3 = L3_3.INFECTED
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
