local L0_0, L1_1, L2_2
L0_0 = hstrlog
L0_0 = L0_0[2]
L0_0 = L0_0.hitcount
L1_1 = hstrlog
L1_1 = L1_1[1]
L1_1 = L1_1.hitcount
if L0_0 > 5 or L1_1 > 5 then
  L2_2 = mp
  L2_2 = L2_2.INFECTED
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
