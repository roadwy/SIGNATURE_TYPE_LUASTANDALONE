pe.mmap_patch_va(pevars.sigaddr + 7, "\000\000\000")
pe.mmap_patch_va(pevars.sigaddr + 17, "\000\000\000")
return mp.INFECTED
