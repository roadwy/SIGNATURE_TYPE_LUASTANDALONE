local L0_0
L0_0 = 0
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
if mp.getfilesize() > 1000000 and mp.getfilesize() < 10000000 and hstrlog[1].hitcount > 20 and hstrlog[2].hitcount > 15 and 15 < hstrlog[3].hitcount and L0_0 == 4 then
  return mp.INFECTED
end
return mp.CLEAN
