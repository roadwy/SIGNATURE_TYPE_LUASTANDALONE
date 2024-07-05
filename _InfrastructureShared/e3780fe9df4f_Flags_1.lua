local L0_0, L1_1, L2_2
L0_0 = 0
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
if mp.getfilesize() < 900000 and (hstrlog[1].matched or L0_0 == 2 and L1_1 == 3) or L2_2 == 6 then
  return mp.INFECTED
end
return mp.CLEAN
