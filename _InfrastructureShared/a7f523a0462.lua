if mp.readu_u32(pe.mmap_va(pevars.sigaddr + 1, 4), 1) ~= pevars.sigaddr + 6 or mp.readu_u32(pe.mmap_va(pevars.sigaddr + 1 + 6, 4), 1) ~= pevars.sigaddr + 12 or mp.readu_u32(pe.mmap_va(pevars.sigaddr + 1 + 12, 4), 1) ~= pevars.sigaddr + 18 then
  return mp.CLEAN
end
return mp.INFECTED
