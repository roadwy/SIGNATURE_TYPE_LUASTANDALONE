if mp.readu_u16(pe.mmap_va(pevars.sigaddr - 2, 2), 1) ~= 55295 then
  return mp.CLEAN
end
pe.mmap_patch_va(pevars.sigaddr + string.find(pe.mmap_va(pevars.sigaddr, 32), "\251t", 1, true), "\235")
return mp.INFECTED
