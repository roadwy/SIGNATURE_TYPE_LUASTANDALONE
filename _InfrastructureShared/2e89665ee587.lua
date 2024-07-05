if mp.readu_u32(pe.mmap_va(pevars.sigaddr + 13, 4), 1) < 1048576 then
  return mp.CLEAN
end
pe.mmap_patch_va(pevars.sigaddr + 17, "\144\144")
return mp.INFECTED
