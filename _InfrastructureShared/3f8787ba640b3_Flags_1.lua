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
L1_1 = hstrlog
L1_1 = L1_1[10]
L1_1 = L1_1.matched
if L1_1 then
  L0_0 = L0_0 + 1
end
L1_1 = 0
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
L2_2 = hstrlog
L2_2 = L2_2[15]
L2_2 = L2_2.matched
if L2_2 then
  L1_1 = L1_1 + 1
end
L2_2 = hstrlog
L2_2 = L2_2[16]
L2_2 = L2_2.matched
if L2_2 then
  L1_1 = L1_1 + 1
end
L2_2 = hstrlog
L2_2 = L2_2[17]
L2_2 = L2_2.matched
if L2_2 then
  L1_1 = L1_1 + 1
end
L2_2 = 0
if hstrlog[1].matched then
  L2_2 = L2_2 + 1
end
if hstrlog[2].matched then
  L2_2 = L2_2 + 1
end
if hstrlog[3].matched then
  L2_2 = L2_2 + 1
end
if hstrlog[4].matched then
  L2_2 = L2_2 + 1
end
if hstrlog[5].matched then
  L2_2 = L2_2 + 1
end
if hstrlog[6].matched then
  L2_2 = L2_2 + 1
end
if hstrlog[7].matched then
  L2_2 = L2_2 + 1
end
if hstrlog[8].matched then
  L2_2 = L2_2 + 1
end
if hstrlog[9].matched then
  L2_2 = L2_2 + 1
end
if hstrlog[10].matched then
  L2_2 = L2_2 + 1
end
if hstrlog[11].matched then
  L2_2 = L2_2 + 1
end
if hstrlog[12].matched then
  L2_2 = L2_2 + 1
end
if hstrlog[13].matched then
  L2_2 = L2_2 + 1
end
if hstrlog[14].matched then
  L2_2 = L2_2 + 1
end
if hstrlog[15].matched then
  L2_2 = L2_2 + 1
end
if hstrlog[16].matched then
  L2_2 = L2_2 + 1
end
if hstrlog[17].matched then
  L2_2 = L2_2 + 1
end
if mp.getfilesize() < 2000000 and (L0_0 >= 1 or L1_1 >= 5) or L2_2 >= 10 then
  return mp.INFECTED
end
return mp.CLEAN
