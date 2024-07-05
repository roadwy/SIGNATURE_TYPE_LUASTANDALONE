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
L1_1 = hstrlog
L1_1 = L1_1[3]
L1_1 = L1_1.matched
if L1_1 then
  L0_0 = L0_0 + 1
end
L1_1 = hstrlog
L1_1 = L1_1[4]
L1_1 = L1_1.matched
if L1_1 then
  L0_0 = L0_0 + 1
end
L1_1 = hstrlog
L1_1 = L1_1[5]
L1_1 = L1_1.matched
if L1_1 then
  L0_0 = L0_0 + 1
end
L1_1 = hstrlog
L1_1 = L1_1[6]
L1_1 = L1_1.matched
if L1_1 then
  L0_0 = L0_0 + 1
end
L1_1 = hstrlog
L1_1 = L1_1[7]
L1_1 = L1_1.matched
if L1_1 then
  L0_0 = L0_0 + 1
end
L1_1 = hstrlog
L1_1 = L1_1[12]
L1_1 = L1_1.matched
if L1_1 then
  L0_0 = L0_0 + 1
end
L1_1 = hstrlog
L1_1 = L1_1[13]
L1_1 = L1_1.matched
if L1_1 then
  L0_0 = L0_0 + 1
end
L1_1 = hstrlog
L1_1 = L1_1[14]
L1_1 = L1_1.matched
if L1_1 then
  L0_0 = L0_0 + 1
end
L1_1 = hstrlog
L1_1 = L1_1[15]
L1_1 = L1_1.matched
if L1_1 then
  L0_0 = L0_0 + 1
end
L1_1 = 0
L2_2 = hstrlog
L2_2 = L2_2[8]
L2_2 = L2_2.matched
if L2_2 then
  L1_1 = L1_1 + 1
end
L2_2 = hstrlog
L2_2 = L2_2[9]
L2_2 = L2_2.matched
if L2_2 then
  L1_1 = L1_1 + 1
end
L2_2 = hstrlog
L2_2 = L2_2[10]
L2_2 = L2_2.matched
if L2_2 then
  L1_1 = L1_1 + 1
end
L2_2 = hstrlog
L2_2 = L2_2[11]
L2_2 = L2_2.matched
if L2_2 then
  L1_1 = L1_1 + 1
end
L2_2 = 0
L3_3 = hstrlog
L3_3 = L3_3[12]
L3_3 = L3_3.matched
if L3_3 then
  L2_2 = L2_2 + 1
end
L3_3 = hstrlog
L3_3 = L3_3[13]
L3_3 = L3_3.matched
if L3_3 then
  L2_2 = L2_2 + 1
end
L3_3 = hstrlog
L3_3 = L3_3[14]
L3_3 = L3_3.matched
if L3_3 then
  L2_2 = L2_2 + 1
end
L3_3 = hstrlog
L3_3 = L3_3[15]
L3_3 = L3_3.matched
if L3_3 then
  L2_2 = L2_2 + 1
end
L3_3 = 0
L4_4 = hstrlog
L4_4 = L4_4[16]
L4_4 = L4_4.matched
if L4_4 then
  L3_3 = L3_3 + 1
end
L4_4 = hstrlog
L4_4 = L4_4[17]
L4_4 = L4_4.matched
if L4_4 then
  L3_3 = L3_3 + 1
end
L4_4 = hstrlog
L4_4 = L4_4[18]
L4_4 = L4_4.matched
if L4_4 then
  L3_3 = L3_3 + 1
end
L4_4 = hstrlog
L4_4 = L4_4[19]
L4_4 = L4_4.matched
if L4_4 then
  L3_3 = L3_3 + 1
end
L4_4 = hstrlog
L4_4 = L4_4[20]
L4_4 = L4_4.matched
if L4_4 then
  L3_3 = L3_3 + 1
end
L4_4 = 0
L5_5 = hstrlog
L5_5 = L5_5[21]
L5_5 = L5_5.matched
if L5_5 then
  L4_4 = L4_4 + 1
end
if L0_0 >= 3 and L1_1 >= 1 or L2_2 >= 1 or L3_3 >= 1 then
  L5_5 = not L4_4
  if L5_5 >= 1 then
    L5_5 = mp
    L5_5 = L5_5.INFECTED
    return L5_5
  end
end
L5_5 = mp
L5_5 = L5_5.CLEAN
return L5_5
