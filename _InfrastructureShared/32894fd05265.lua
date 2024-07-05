pe.mmap_patch_va(pevars.sigaddr + 3, "\001\000")
pe.mmap_patch_va(pevars.sigaddr + 59, "\001\000")
return mp.INFECTED
