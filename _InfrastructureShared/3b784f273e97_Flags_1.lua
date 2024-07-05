local L0_0
L0_0 = 0
if hstrlog[1].matched then
  L0_0 = L0_0 + 1
end
if hstrlog[2].matched then
  L0_0 = L0_0 + 1
end
if L0_0 == 2 and mp.getfilesize() > 75000 and mp.getfilesize() < 82000 then
  return mp.INFECTED
end
return mp.CLEAN
