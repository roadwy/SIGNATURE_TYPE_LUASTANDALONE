local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = hstrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if not L0_0 then
  L0_0 = hstrlog
  L0_0 = L0_0[2]
  L0_0 = L0_0.matched
  if not L0_0 then
    L0_0 = hstrlog
    L0_0 = L0_0[3]
    L0_0 = L0_0.matched
  end
end
L1_1 = hstrlog
L1_1 = L1_1[4]
L1_1 = L1_1.matched
if not L1_1 then
  L1_1 = hstrlog
  L1_1 = L1_1[5]
  L1_1 = L1_1.matched
  if not L1_1 then
    L1_1 = hstrlog
    L1_1 = L1_1[6]
    L1_1 = L1_1.matched
  end
end
L2_2 = hstrlog
L2_2 = L2_2[7]
L2_2 = L2_2.matched
if not L2_2 then
  L2_2 = hstrlog
  L2_2 = L2_2[8]
  L2_2 = L2_2.matched
  if not L2_2 then
    L2_2 = hstrlog
    L2_2 = L2_2[9]
    L2_2 = L2_2.matched
  end
end
if L0_0 then
  L3_3 = 1
else
  L3_3 = L3_3 or 0
end
if L1_1 then
  L4_4 = 1
else
  L4_4 = L4_4 or 0
end
L3_3 = L3_3 + L4_4
if L2_2 then
  L4_4 = 1
else
  L4_4 = L4_4 or 0
end
L3_3 = L3_3 + L4_4
if L3_3 >= 3 then
  L4_4 = mp
  L4_4 = L4_4.INFECTED
  return L4_4
end
L4_4 = mp
L4_4 = L4_4.CLEAN
return L4_4
