pe.mmap_patch_va(pevars.sigaddr + string.find(pe.mmap_va(pevars.sigaddr, 64), "\015\133", 1, true) - 1, "\144\144\144\144\144\144")
return mp.INFECTED
