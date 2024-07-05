pe.mmap_patch_va(pevars.sigaddr + string.find(pe.mmap_va(pevars.sigaddr, 64), "\000u", 1, true), "\144\144")
return mp.INFECTED
