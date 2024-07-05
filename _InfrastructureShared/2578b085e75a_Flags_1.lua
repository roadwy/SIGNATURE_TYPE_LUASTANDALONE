local L0_0
L0_0 = mp
L0_0 = L0_0.readprotection
L0_0(false)
L0_0 = mp
L0_0 = L0_0.readfile
L0_0 = L0_0(0, mp.getfilesize() < 4096 and mp.getfilesize() or 4096)
if (4096 > hstrlog[1].VA + 163 and mp.readu_u32(L0_0, hstrlog[1].VA + 163 + 1) or 8192) == 3847464024 and (4096 > hstrlog[1].VA + 189 and mp.readu_u32(L0_0, hstrlog[1].VA + 189 + 1) or 8192) == 119961420 and (4096 > hstrlog[1].VA + 303 and mp.readu_u32(L0_0, hstrlog[1].VA + 303 + 1) or 8192) == 3382495594 and (4096 > hstrlog[1].VA + 408 and mp.readu_u32(L0_0, hstrlog[1].VA + 408 + 1) or 8192) == 1453503984 and (4096 > hstrlog[1].VA + 420 and mp.readu_u32(L0_0, hstrlog[1].VA + 420 + 1) or 8192) == 3761631300 and (4096 > hstrlog[1].VA + 484 and mp.readu_u32(L0_0, hstrlog[1].VA + 484 + 1) or 8192) == 3431858420 then
  return mp.INFECTED
end
return mp.CLEAN
