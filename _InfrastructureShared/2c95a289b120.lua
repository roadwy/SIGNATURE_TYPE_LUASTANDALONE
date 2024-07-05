pe.mmap_patch_va(pevars.sigaddr + 29, "\199E")
pe.mmap_patch_va(pevars.sigaddr + 36, "\144\144")
return mp.INFECTED
