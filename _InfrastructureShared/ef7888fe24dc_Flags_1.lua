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
if mp.getfilesize() < 7000000 and L0_0 == 3 and not hstrlog[4].matched then
  return mp.INFECTED
end
return mp.CLEAN
