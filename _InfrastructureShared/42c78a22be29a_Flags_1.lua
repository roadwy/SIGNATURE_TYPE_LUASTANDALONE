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
L1_1 = 0
if hstrlog[4].matched then
  L1_1 = L1_1 + 1
end
if hstrlog[5].matched then
  L1_1 = L1_1 + 1
end
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
if hstrlog[14].matched then
  L1_1 = L1_1 + 1
end
if hstrlog[15].matched then
  L1_1 = L1_1 + 1
end
if hstrlog[16].matched then
  L1_1 = L1_1 + 1
end
if hstrlog[17].matched then
  L1_1 = L1_1 + 1
end
if hstrlog[18].matched then
  L1_1 = L1_1 + 1
end
if hstrlog[19].matched then
  L1_1 = L1_1 + 1
end
if mp.getfilesize() < 300000 and (L0_0 >= 2 or L0_0 >= 1 and L1_1 >= 6 or L1_1 >= 14) then
  return mp.INFECTED
end
return mp.CLEAN
