local L0_0
L0_0 = 0
if hstrlog[1].matched then
  L0_0 = L0_0 + 1
end
if hstrlog[2].matched then
  L0_0 = L0_0 + 1
end
if hstrlog[3].matched then
  L0_0 = L0_0 + 1
end
if hstrlog[4].matched then
  L0_0 = L0_0 + 1
end
if hstrlog[5].matched then
  L0_0 = L0_0 + 1
end
if hstrlog[6].matched then
  L0_0 = L0_0 + 1
end
if hstrlog[7].matched then
  L0_0 = L0_0 + 1
end
if hstrlog[8].matched then
  L0_0 = L0_0 + 1
end
if hstrlog[9].matched then
  L0_0 = L0_0 + 1
end
if hstrlog[10].matched then
  L0_0 = L0_0 + 1
end
if hstrlog[11].matched then
  L0_0 = L0_0 + 1
end
if hstrlog[12].matched then
  L0_0 = L0_0 + 1
end
if hstrlog[13].matched then
  L0_0 = L0_0 + 1
end
if hstrlog[14].matched then
  L0_0 = L0_0 + 1
end
if mp.getfilesize() < 100000 and L0_0 == 14 then
  return mp.INFECTED
end
return mp.CLEAN
