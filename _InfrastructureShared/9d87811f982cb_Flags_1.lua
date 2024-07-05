local L0_0, L1_1, L2_2
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
L1_1 = L1_1[8]
L1_1 = L1_1.matched
if L1_1 then
  L0_0 = L0_0 + 1
end
L1_1 = hstrlog
L1_1 = L1_1[9]
L1_1 = L1_1.matched
if L1_1 then
  L0_0 = L0_0 + 1
end
L1_1 = 0
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
L2_2 = hstrlog
L2_2 = L2_2[12]
L2_2 = L2_2.matched
if L2_2 then
  L1_1 = L1_1 + 1
end
L2_2 = hstrlog
L2_2 = L2_2[13]
L2_2 = L2_2.matched
if L2_2 then
  L1_1 = L1_1 + 1
end
L2_2 = hstrlog
L2_2 = L2_2[14]
L2_2 = L2_2.matched
if L2_2 then
  L1_1 = L1_1 + 1
end
L2_2 = 0
if hstrlog[15].matched then
  L2_2 = L2_2 + 1
end
if hstrlog[16].matched then
  L2_2 = L2_2 + 1
end
if hstrlog[17].matched then
  L2_2 = L2_2 + 1
end
if hstrlog[18].matched then
  L2_2 = L2_2 + 1
end
if hstrlog[19].matched then
  L2_2 = L2_2 + 1
end
if hstrlog[20].matched then
  L2_2 = L2_2 + 1
end
if hstrlog[21].matched then
  L2_2 = L2_2 + 1
end
if hstrlog[22].matched then
  L2_2 = L2_2 + 1
end
if hstrlog[23].matched then
  L2_2 = L2_2 + 1
end
if hstrlog[24].matched then
  L2_2 = L2_2 + 1
end
if hstrlog[25].matched then
  L2_2 = L2_2 + 1
end
if hstrlog[26].matched then
  L2_2 = L2_2 + 1
end
if hstrlog[27].matched then
  L2_2 = L2_2 + 1
end
if hstrlog[28].matched then
  L2_2 = L2_2 + 1
end
if hstrlog[29].matched then
  L2_2 = L2_2 + 1
end
if hstrlog[30].matched then
  L2_2 = L2_2 + 1
end
if hstrlog[31].matched then
  L2_2 = L2_2 + 1
end
if mp.getfilesize() < 250000 and L0_0 >= 1 or L1_1 >= 2 or L2_2 >= 6 then
  return mp.INFECTED
end
return mp.CLEAN
