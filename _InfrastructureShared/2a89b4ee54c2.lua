pe.mmap_patch_va(pevars.sigaddr + string.find(pe.mmap_va(pevars.sigaddr, 64), "u", 1, true) - 1, "\144\144")
return mp.INFECTED
