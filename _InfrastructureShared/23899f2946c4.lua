pe.mmap_patch_va(pevars.sigaddr + 42, "\144\144")
pe.mmap_patch_va(pevars.sigaddr + 20, "\000")
return mp.INFECTED
