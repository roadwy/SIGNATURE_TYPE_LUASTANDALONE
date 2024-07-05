local L0_0, L1_1
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
L1_1 = 0
if hstrlog[6].matched then
  L1_1 = L1_1 + 1
end
if hstrlog[7].matched then
  L1_1 = L1_1 + 1
end
if hstrlog[8].matched then
  L1_1 = L1_1 + 1
end
if hstrlog[9].matched then
  L1_1 = L1_1 + 1
end
if hstrlog[10].matched then
  L1_1 = L1_1 + 1
end
if hstrlog[11].matched then
  L1_1 = L1_1 + 1
end
if hstrlog[12].matched then
  L1_1 = L1_1 + 1
end
if hstrlog[13].matched then
  L1_1 = L1_1 + 1
end
if mp.getfilesize() < 2000000 and hstrlog[1].matched and L0_0 >= 1 and not L1_1 >= 1 then
  return mp.INFECTED
end
return mp.CLEAN
