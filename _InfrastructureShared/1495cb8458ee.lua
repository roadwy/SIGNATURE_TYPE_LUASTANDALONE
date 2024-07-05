local L0_0
L0_0 = mp
L0_0 = L0_0.bitand
L0_0 = L0_0(pevars.sigaddr + mp.readu_u32(pe.mmap_va(pevars.sigaddr + 15, 4), 1) + 19, 4294967295)
if pe.vm_search(L0_0, L0_0 + 12, "\131\248\004u\144\001\001\232\144\001\004\129\005\144\000", nil, pe.VM_SEARCH_BM) == L0_0 then
  return mp.INFECTED
end
return mp.CLEAN
