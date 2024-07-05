local L0_0, L1_1
L0_0 = 0
L1_1 = hstrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L0_0 = L0_0 + 1
end
L1_1 = hstrlog
L1_1 = L1_1[2]
L1_1 = L1_1.matched
if L1_1 then
  L0_0 = L0_0 + 1
end
L1_1 = hstrlog
L1_1 = L1_1[3]
L1_1 = L1_1.matched
if L1_1 then
  L0_0 = L0_0 + 1
end
L1_1 = hstrlog
L1_1 = L1_1[4]
L1_1 = L1_1.matched
if L1_1 then
  L0_0 = L0_0 + 1
end
L1_1 = hstrlog
L1_1 = L1_1[5]
L1_1 = L1_1.matched
if L1_1 then
  L0_0 = L0_0 + 1
end
L1_1 = hstrlog
L1_1 = L1_1[6]
L1_1 = L1_1.matched
if L1_1 then
  L0_0 = L0_0 + 1
end
L1_1 = mp
L1_1 = L1_1.readprotection
L1_1(false)
L1_1 = mp
L1_1 = L1_1.readfile
L1_1 = L1_1(0, mp.getfilesize() < 4096 and mp.getfilesize() or 4096)
if mp.getfilesize() < 1400000 and mp.getfilesize() > 800000 and L0_0 == 6 and hstrlog[7].VA == 64 + pehdr.ImageBase and (4096 > (4096 > 60 and mp.readu_u32(L1_1, 61) or 8192) + 11 and mp.readu_u16(L1_1, (4096 > 60 and mp.readu_u32(L1_1, 61) or 8192) + 11 + 1) or 8192) == 89 and hstrlog[8].VA >= 600 + pehdr.ImageBase and hstrlog[8].VA <= 700 + pehdr.ImageBase then
  return mp.INFECTED
end
return mp.CLEAN
