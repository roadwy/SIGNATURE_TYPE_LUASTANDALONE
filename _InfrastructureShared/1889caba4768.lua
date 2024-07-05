if mp.readu_u32(pe.mmap_va(pevars.sigaddr + 1, 4), 1) < 1048576 then
  return mp.CLEAN
end
pe.mmap_patch_va(pevars.sigaddr + 12, "\144\144")
return mp.INFECTED
