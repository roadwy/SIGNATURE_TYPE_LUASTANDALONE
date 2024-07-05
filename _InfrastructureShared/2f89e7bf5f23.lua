if string.byte(pe.mmap_va(pevars.sigaddr + 2, 1), 1) == 233 then
  pe.mmap_patch_va(pevars.sigaddr + 2, "\144\144\144\144\144")
else
  pe.mmap_patch_va(pevars.sigaddr + 2, "\144\144")
end
return mp.INFECTED
