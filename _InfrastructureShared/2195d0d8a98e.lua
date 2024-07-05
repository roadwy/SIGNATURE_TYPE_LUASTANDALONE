pe.mmap_patch_va(pevars.sigaddr + 8, "x")
pe.mmap_patch_va(pevars.sigaddr + 14, "x")
pe.mmap_patch_va(pevars.sigaddr + 20, "x")
return mp.INFECTED
