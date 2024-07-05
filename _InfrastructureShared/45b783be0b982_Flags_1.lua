local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
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
L1_1 = 0
L2_2 = hstrlog
L2_2 = L2_2[3]
L2_2 = L2_2.matched
if L2_2 then
  L1_1 = L1_1 + 1
end
L2_2 = hstrlog
L2_2 = L2_2[4]
L2_2 = L2_2.matched
if L2_2 then
  L1_1 = L1_1 + 1
end
L2_2 = 0
L3_3 = hstrlog
L3_3 = L3_3[5]
L3_3 = L3_3.matched
if L3_3 then
  L2_2 = L2_2 + 1
end
L3_3 = hstrlog
L3_3 = L3_3[6]
L3_3 = L3_3.matched
if L3_3 then
  L2_2 = L2_2 + 1
end
L3_3 = hstrlog
L3_3 = L3_3[7]
L3_3 = L3_3.matched
if L3_3 then
  L2_2 = L2_2 + 1
end
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
L3_3 = 0
L4_4 = hstrlog
L4_4 = L4_4[11]
L4_4 = L4_4.matched
if L4_4 then
  L3_3 = L3_3 + 1
end
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
L4_4 = 0
L5_5 = hstrlog
L5_5 = L5_5[14]
L5_5 = L5_5.matched
if L5_5 then
  L4_4 = L4_4 + 1
end
L5_5 = hstrlog
L5_5 = L5_5[15]
L5_5 = L5_5.matched
if L5_5 then
  L4_4 = L4_4 + 1
end
L5_5 = hstrlog
L5_5 = L5_5[16]
L5_5 = L5_5.matched
if L5_5 then
  L4_4 = L4_4 + 1
end
L5_5 = hstrlog
L5_5 = L5_5[17]
L5_5 = L5_5.matched
if L5_5 then
  L4_4 = L4_4 + 1
end
L5_5 = hstrlog
L5_5 = L5_5[18]
L5_5 = L5_5.matched
if L5_5 then
  L4_4 = L4_4 + 1
end
L5_5 = hstrlog
L5_5 = L5_5[19]
L5_5 = L5_5.matched
if L5_5 then
  L4_4 = L4_4 + 1
end
if L0_0 == 2 or L1_1 == 2 or L2_2 >= 3 or L3_3 == 3 or L4_4 >= 3 then
  L5_5 = mp
  L5_5 = L5_5.INFECTED
  return L5_5
end
L5_5 = mp
L5_5 = L5_5.CLEAN
return L5_5
