local L0_0
L0_0 = mp
L0_0 = L0_0.readprotection
L0_0(false)
L0_0 = mp
L0_0 = L0_0.readfile
L0_0 = L0_0(0, mp.getfilesize() < 4096 and mp.getfilesize() or 4096)
if (4096 > hstrlog[1].VA + 515 and mp.readu_u32(L0_0, hstrlog[1].VA + 515 + 1) or 8192) == 117450240 and (4096 > hstrlog[1].VA + 549 and mp.readu_u32(L0_0, hstrlog[1].VA + 549 + 1) or 8192) == 27392 and (4096 > hstrlog[1].VA + 605 and mp.readu_u32(L0_0, hstrlog[1].VA + 605 + 1) or 8192) == 3758153472 and (4096 > hstrlog[1].VA + 647 and mp.readu_u32(L0_0, hstrlog[1].VA + 647 + 1) or 8192) == 1728067328 and (4096 > hstrlog[1].VA + 675 and mp.readu_u32(L0_0, hstrlog[1].VA + 675 + 1) or 8192) == 4278204416 and (4096 > hstrlog[1].VA + 709 and mp.readu_u32(L0_0, hstrlog[1].VA + 709 + 1) or 8192) == 3774888704 and (4096 > hstrlog[1].VA + 737 and mp.readu_u32(L0_0, hstrlog[1].VA + 737 + 1) or 8192) == 1627409664 and (4096 > hstrlog[1].VA + 819 and mp.readu_u32(L0_0, hstrlog[1].VA + 819 + 1) or 8192) == 1593886720 and (4096 > hstrlog[1].VA + 883 and mp.readu_u32(L0_0, hstrlog[1].VA + 883 + 1) or 8192) == 3842003712 and (4096 > hstrlog[1].VA + 935 and mp.readu_u32(L0_0, hstrlog[1].VA + 935 + 1) or 8192) == 1593886720 and (4096 > hstrlog[1].VA + 991 and mp.readu_u32(L0_0, hstrlog[1].VA + 991 + 1) or 8192) == 1627409664 then
  return mp.INFECTED
end
return mp.CLEAN
