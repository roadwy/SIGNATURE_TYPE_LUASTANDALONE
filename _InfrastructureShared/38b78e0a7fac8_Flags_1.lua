local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = 0
L1_1 = hstrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L0_0 = L0_0 + 1
end
L1_1 = hstrlog
L1_1 = L1_1[2]
L1_1 = L1_1.matched
if L1_1 then
  L0_0 = L0_0 + 1
end
L1_1 = hstrlog
L1_1 = L1_1[3]
L1_1 = L1_1.matched
if L1_1 then
  L0_0 = L0_0 + 1
end
L1_1 = 0
L2_2 = hstrlog
L2_2 = L2_2[4]
L2_2 = L2_2.matched
if L2_2 then
  L1_1 = L1_1 + 1
end
L2_2 = hstrlog
L2_2 = L2_2[5]
L2_2 = L2_2.matched
if L2_2 then
  L1_1 = L1_1 + 1
end
L2_2 = hstrlog
L2_2 = L2_2[6]
L2_2 = L2_2.matched
if L2_2 then
  L1_1 = L1_1 + 1
end
L2_2 = hstrlog
L2_2 = L2_2[7]
L2_2 = L2_2.matched
if L2_2 then
  L1_1 = L1_1 + 1
end
L2_2 = 0
L3_3 = hstrlog
L3_3 = L3_3[8]
L3_3 = L3_3.matched
if L3_3 then
  L2_2 = L2_2 + 1
end
L3_3 = hstrlog
L3_3 = L3_3[9]
L3_3 = L3_3.matched
if L3_3 then
  L2_2 = L2_2 + 1
end
L3_3 = hstrlog
L3_3 = L3_3[10]
L3_3 = L3_3.matched
if L3_3 then
  L2_2 = L2_2 + 1
end
L3_3 = hstrlog
L3_3 = L3_3[11]
L3_3 = L3_3.matched
if L3_3 then
  L2_2 = L2_2 + 1
end
L3_3 = 0
L4_4 = hstrlog
L4_4 = L4_4[12]
L4_4 = L4_4.matched
if L4_4 then
  L3_3 = L3_3 + 1
end
L4_4 = hstrlog
L4_4 = L4_4[13]
L4_4 = L4_4.matched
if L4_4 then
  L3_3 = L3_3 + 1
end
L4_4 = hstrlog
L4_4 = L4_4[14]
L4_4 = L4_4.matched
if L4_4 then
  L3_3 = L3_3 + 1
end
if L0_0 == 3 or L1_1 >= 3 and L2_2 >= 2 and L3_3 >= 2 then
  L4_4 = mp
  L4_4 = L4_4.INFECTED
  return L4_4
end
L4_4 = mp
L4_4 = L4_4.CLEAN
return L4_4
