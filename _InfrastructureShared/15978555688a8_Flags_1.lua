local L0_0
L0_0 = 0
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
if mp.getfilesize() < 4000 and hstrlog[1].matched and L0_0 >= 3 then
  return mp.INFECTED
end
return mp.CLEAN
