if string.byte(pe.mmap_va(pevars.sigaddr + 1, 1), 1) == 157 then
  pe.mmap_patch_va(pevars.sigaddr + 1, "\149")
  pe.mmap_patch_va(pevars.sigaddr + 7, "\002")
else
  pe.mmap_patch_va(pevars.sigaddr + 1, "U")
  pe.mmap_patch_va(pevars.sigaddr + 4, "\002")
end
return mp.INFECTED
