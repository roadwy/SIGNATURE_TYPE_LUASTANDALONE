local L0_0, L1_1
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
L1_1 = 0
if hstrlog[5].matched then
  L1_1 = L1_1 + 1
end
if hstrlog[6].matched then
  L1_1 = L1_1 + 1
end
if hstrlog[7].matched then
  L1_1 = L1_1 + 1
end
if mp.getfilesize() < 5000000 and L0_0 == 4 or L1_1 == 3 then
  return mp.INFECTED
end
return mp.CLEAN
