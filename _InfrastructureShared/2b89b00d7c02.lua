pe.mmap_patch_va(pevars.sigaddr + string.find(pe.mmap_va(pevars.sigaddr, 128), "\000\000u", 1, true) + 1, "\144\144")
return mp.INFECTED
