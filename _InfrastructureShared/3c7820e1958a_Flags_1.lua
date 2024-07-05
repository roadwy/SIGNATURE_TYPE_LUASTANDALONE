local L0_0
L0_0 = mp
L0_0 = L0_0.readprotection
L0_0(false)
L0_0 = mp
L0_0 = L0_0.readfile
L0_0 = L0_0(0, mp.getfilesize() < 4096 and mp.getfilesize() or 4096)
if (4096 > hstrlog[1].VA + 329 and mp.readu_u32(L0_0, hstrlog[1].VA + 329 + 1) or 8192) == 3842003712 and (4096 > hstrlog[1].VA + 381 and mp.readu_u32(L0_0, hstrlog[1].VA + 381 + 1) or 8192) == 117450240 and (4096 > hstrlog[1].VA + 609 and mp.readu_u32(L0_0, hstrlog[1].VA + 609 + 1) or 8192) == 3372260352 and (4096 > hstrlog[1].VA + 819 and mp.readu_u32(L0_0, hstrlog[1].VA + 819 + 1) or 8192) == 1442882048 and (4096 > hstrlog[1].VA + 843 and mp.readu_u32(L0_0, hstrlog[1].VA + 843 + 1) or 8192) == 3758109952 and (4096 > hstrlog[1].VA + 971 and mp.readu_u32(L0_0, hstrlog[1].VA + 971 + 1) or 8192) == 3422588416 then
  return mp.INFECTED
end
return mp.CLEAN
