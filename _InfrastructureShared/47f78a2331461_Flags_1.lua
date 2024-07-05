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
if hstrlog[11].matched then
  L0_0 = L0_0 + 1
end
if hstrlog[12].matched then
  L0_0 = L0_0 + 1
end
if hstrlog[13].matched then
  L0_0 = L0_0 + 1
end
if hstrlog[14].matched then
  L0_0 = L0_0 + 1
end
if hstrlog[15].matched then
  L0_0 = L0_0 + 1
end
if hstrlog[16].matched then
  L0_0 = L0_0 + 1
end
if hstrlog[17].matched then
  L0_0 = L0_0 + 1
end
if hstrlog[1].VA == 0 + pehdr.ImageBase and L0_0 == 16 and mp.getfilesize() < 450000 and mp.getfilesize() > 360000 then
  return mp.INFECTED
end
return mp.CLEAN
