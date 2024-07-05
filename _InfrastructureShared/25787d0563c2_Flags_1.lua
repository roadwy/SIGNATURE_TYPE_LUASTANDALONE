local L0_0
L0_0 = mp
L0_0 = L0_0.readprotection
L0_0(false)
L0_0 = mp
L0_0 = L0_0.readfile
L0_0 = L0_0(0, mp.getfilesize() < 4096 and mp.getfilesize() or 4096)
if (4096 > hstrlog[1].VA + 256 and mp.readu_u32(L0_0, hstrlog[1].VA + 256 + 1) or 8192) == 119961420 and (4096 > hstrlog[1].VA + 273 and mp.readu_u32(L0_0, hstrlog[1].VA + 273 + 1) or 8192) == 7045161 and (4096 > hstrlog[1].VA + 301 and mp.readu_u32(L0_0, hstrlog[1].VA + 301 + 1) or 8192) == 3772714986 and (4096 > hstrlog[1].VA + 322 and mp.readu_u32(L0_0, hstrlog[1].VA + 322 + 1) or 8192) == 1731713986 and (4096 > hstrlog[1].VA + 336 and mp.readu_u32(L0_0, hstrlog[1].VA + 336 + 1) or 8192) == 4281919927 and (4096 > hstrlog[1].VA + 353 and mp.readu_u32(L0_0, hstrlog[1].VA + 353 + 1) or 8192) == 3778800756 and (4096 > hstrlog[1].VA + 367 and mp.readu_u32(L0_0, hstrlog[1].VA + 367 + 1) or 8192) == 1632464501 and (4096 > hstrlog[1].VA + 408 and mp.readu_u32(L0_0, hstrlog[1].VA + 408 + 1) or 8192) == 1606998274 and (4096 > hstrlog[1].VA + 440 and mp.readu_u32(L0_0, hstrlog[1].VA + 440 + 1) or 8192) == 3847464024 and (4096 > hstrlog[1].VA + 466 and mp.readu_u32(L0_0, hstrlog[1].VA + 466 + 1) or 8192) == 1606998274 and (4096 > hstrlog[1].VA + 494 and mp.readu_u32(L0_0, hstrlog[1].VA + 494 + 1) or 8192) == 1632464501 then
  return mp.INFECTED
end
return mp.CLEAN
