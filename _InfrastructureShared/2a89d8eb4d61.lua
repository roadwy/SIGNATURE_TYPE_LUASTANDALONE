pe.mmap_patch_va(pevars.sigaddr + 3, "\235")
pe.mmap_patch_va(pevars.sigaddr + 12, "\235")
return mp.INFECTED
