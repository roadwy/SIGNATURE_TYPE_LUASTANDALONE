local L0_0, L1_1, L2_2, L3_3
L0_0 = 0
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
L1_1 = hstrlog
L1_1 = L1_1[16]
L1_1 = L1_1.matched
if L1_1 then
  L0_0 = L0_0 + 1
end
L1_1 = hstrlog
L1_1 = L1_1[17]
L1_1 = L1_1.matched
if L1_1 then
  L0_0 = L0_0 + 1
end
L1_1 = hstrlog
L1_1 = L1_1[18]
L1_1 = L1_1.matched
if L1_1 then
  L0_0 = L0_0 + 1
end
L1_1 = hstrlog
L1_1 = L1_1[19]
L1_1 = L1_1.matched
if L1_1 then
  L0_0 = L0_0 + 1
end
L1_1 = 0
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
L2_2 = 0
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
L3_3 = 0
if hstrlog[1].matched then
  L3_3 = L3_3 + 1
end
if hstrlog[2].matched then
  L3_3 = L3_3 + 1
end
if hstrlog[3].matched then
  L3_3 = L3_3 + 1
end
if hstrlog[4].matched then
  L3_3 = L3_3 + 1
end
if hstrlog[5].matched then
  L3_3 = L3_3 + 1
end
if hstrlog[6].matched then
  L3_3 = L3_3 + 1
end
if mp.getfilesize() < 350000 and L0_0 >= 7 and L1_1 >= 2 and L2_2 >= 1 and L3_3 >= 1 then
  return mp.INFECTED
end
return mp.CLEAN
