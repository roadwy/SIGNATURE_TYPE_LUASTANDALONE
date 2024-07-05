pe.mmap_patch_va(pevars.sigaddr + 5, "\144\144")
pe.mmap_patch_va(pevars.sigaddr + 12, "\235")
return mp.INFECTED
