if mp.readu_u16(pe.mmap_va(pevars.sigaddr + 3, 4), 1) < 4096 or 4096 > mp.readu_u16(pe.mmap_va(pevars.sigaddr + 51, 4), 1) then
  return mp.CLEAN
end
pe.mmap_patch_va(pevars.sigaddr + 46, "\144\144")
pe.mmap_patch_va(pevars.sigaddr + 55, "\144\144")
return mp.INFECTED
