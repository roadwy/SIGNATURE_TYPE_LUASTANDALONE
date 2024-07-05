if mp.readu_u32(pe.mmap_va(pe.get_regval(pe.REG_ESP) + 24, 4), 1) < 262144 then
  return mp.CLEAN
end
pe.mmap_patch_va(pevars.sigaddr + 1, "\144\144")
return mp.INFECTED
