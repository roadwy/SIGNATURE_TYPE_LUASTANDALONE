pe.mmap_patch_va(pevars.sigaddr + string.find(pe.mmap_va(pevars.sigaddr, 64), "\249\000t", 1, true) + 1, "\235")
return mp.INFECTED
