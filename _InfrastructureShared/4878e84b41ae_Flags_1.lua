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
if hstrlog[1].VA == 0 + pehdr.ImageBase and hstrlog[2].VA == mp.getfilesize() - 7 + pehdr.ImageBase and mp.getfilesize() < 100000 and not L0_0 >= 1 then
  return mp.INFECTED
end
return mp.CLEAN
