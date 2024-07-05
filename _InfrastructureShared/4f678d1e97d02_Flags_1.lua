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
L2_2 = hstrlog
L2_2 = L2_2[8]
L2_2 = L2_2.matched
if L2_2 then
  L1_1 = L1_1 + 1
end
L2_2 = 0
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
L3_3 = 0
L4_4 = hstrlog
L4_4 = L4_4[14]
L4_4 = L4_4.matched
if L4_4 then
  L3_3 = L3_3 + 1
end
L4_4 = hstrlog
L4_4 = L4_4[15]
L4_4 = L4_4.matched
if L4_4 then
  L3_3 = L3_3 + 1
end
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
L4_4 = 0
if hstrlog[18].matched then
  L4_4 = L4_4 + 1
end
if hstrlog[19].matched then
  L4_4 = L4_4 + 1
end
if hstrlog[20].matched then
  L4_4 = L4_4 + 1
end
if hstrlog[21].matched then
  L4_4 = L4_4 + 1
end
if mp.getfilesize() < 30000 and L0_0 >= 2 and L1_1 >= 3 and L2_2 >= 4 and L3_3 >= 2 and L4_4 >= 2 then
  return mp.INFECTED
end
return mp.CLEAN
