if string.byte(pe.mmap_va(pevars.sigaddr - 5, 1), 1) ~= 185 then
  return mp.CLEAN
end
pe.mmap_patch_va(pevars.sigaddr + 16, "\144\144")
return mp.INFECTED
