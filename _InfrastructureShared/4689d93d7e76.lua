if mp.readu_u32(pe.mmap_va(pevars.sigaddr + 2, 4), 1) >= 65536 then
  pe.mmap_patch_va(pevars.sigaddr + 6, "\235")
  return mp.INFECTED
end
return mp.CLEAN
