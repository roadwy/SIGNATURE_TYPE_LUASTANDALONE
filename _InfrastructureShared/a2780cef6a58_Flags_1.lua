local L0_0
L0_0 = 0
if hstrlog[1].matched then
  L0_0 = L0_0 + 1
end
if hstrlog[2].matched then
  L0_0 = L0_0 + 1
end
if mp.getfilesize() < 360000 and L0_0 == 2 then
  return mp.INFECTED
end
return mp.CLEAN
