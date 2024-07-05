local L0_0
if hstrlog[3].matched then
  L0_0 = hstrlog[3].VA - 4
elseif hstrlog[4].matched then
  L0_0 = hstrlog[4].VA - 4
else
  return mp.CLEAN
end
if mp.readu_u32(pe.mmap_va(L0_0, 4), 1) >= 24576 and mp.readu_u32(pe.mmap_va(L0_0, 4), 1) < 28672 then
  return mp.INFECTED
end
return mp.CLEAN
