pe.mmap_patch_va(pevars.sigaddr + 7, "\144\144")
pe.mmap_patch_va(pevars.sigaddr + 10, "\144\144")
pe.mmap_patch_va(pevars.sigaddr + 28, "\144\144")
return mp.INFECTED
