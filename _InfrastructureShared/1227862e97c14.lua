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
if L0_0 >= 7 and mp.getfilesize() < 483328 then
  return mp.INFECTED
end
return mp.CLEAN