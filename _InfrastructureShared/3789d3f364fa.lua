pe.mmap_patch_va(pevars.sigaddr + 2, "\144\144")
if string.byte(pe.mmap_va(pevars.sigaddr + 5, 1), 1) == 157 then
  pe.mmap_patch_va(pevars.sigaddr + 5, "\149")
  pe.mmap_patch_va(pevars.sigaddr + 11, "\002")
else
  pe.mmap_patch_va(pevars.sigaddr, "j\003Y\144\137M")
  pe.mmap_patch_va(pevars.sigaddr + 8, "\002")
end
return mp.INFECTED
