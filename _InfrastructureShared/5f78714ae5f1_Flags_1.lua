local L0_0
L0_0 = 0
if hstrlog[1].matched then
  L0_0 = L0_0 + 1
end
if hstrlog[2].matched then
  L0_0 = L0_0 + 1
end
if L0_0 >= 1 and mp.getfilesize() < 10000000 then
  return mp.INFECTED
end
return mp.CLEAN
