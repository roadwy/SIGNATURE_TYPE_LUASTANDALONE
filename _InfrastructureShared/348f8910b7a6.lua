local L0_0, L1_1, L2_2
L0_0 = hstrlog
L0_0 = L0_0[1]
L0_0 = L0_0.hitcount
L1_1 = hstrlog
L1_1 = L1_1[2]
L1_1 = L1_1.hitcount
L2_2 = L0_0 - 1
if L2_2 == L1_1 then
  L2_2 = mp
  L2_2 = L2_2.INFECTED
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
