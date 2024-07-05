local L0_0
L0_0 = 0
if hstrlog[3].matched then
  L0_0 = L0_0 + 1
end
if hstrlog[4].matched then
  L0_0 = L0_0 + 1
end
if hstrlog[5].matched then
  L0_0 = L0_0 + 1
end
if mp.getfilesize() < 1000000 and hstrlog[1].VA == 0 + pehdr.ImageBase and hstrlog[6].hitcount > 10 and hstrlog[2].matched and L0_0 >= 2 then
  return mp.INFECTED
end
return mp.CLEAN
