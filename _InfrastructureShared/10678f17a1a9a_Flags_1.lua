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
L1_1 = 0
if hstrlog[4].matched then
  L1_1 = L1_1 + 1
end
if hstrlog[5].matched then
  L1_1 = L1_1 + 1
end
if mp.getfilesize() < 30000 and L0_0 == 2 and (hstrlog[3].matched or L1_1 == 2) then
  return mp.INFECTED
end
return mp.CLEAN
