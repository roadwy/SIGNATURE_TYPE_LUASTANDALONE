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
if mp.getfilesize() < 50000 and L0_0 >= 1 and (hstrlog[5].matched or hstrlog[6].matched) and hstrlog[7].matched and hstrlog[8].matched then
  return mp.INFECTED
end
return mp.CLEAN
