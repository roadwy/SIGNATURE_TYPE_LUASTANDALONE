local L0_0, L1_1, L2_2
L0_0 = hstrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if not L0_0 then
  L0_0 = hstrlog
  L0_0 = L0_0[2]
  L0_0 = L0_0.matched
end
L1_1 = hstrlog
L1_1 = L1_1[3]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = 1
else
  L1_1 = L1_1 or 0
end
L2_2 = hstrlog
L2_2 = L2_2[4]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = 1
else
  L2_2 = L2_2 or 0
end
L1_1 = L1_1 + L2_2
L2_2 = hstrlog
L2_2 = L2_2[5]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = 1
else
  L2_2 = L2_2 or 0
end
L1_1 = L1_1 + L2_2
if L1_1 >= 2 and L0_0 then
  L2_2 = mp
  L2_2 = L2_2.INFECTED
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
