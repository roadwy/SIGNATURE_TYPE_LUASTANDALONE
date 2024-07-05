pe.mmap_patch_va(pevars.sigaddr, "\235-\144\144\144\144")
pe.mmap_patch_va(pevars.sigaddr + 47, "\249\144")
pe.mmap_patch_va(pevars.sigaddr + 55, "\235")
return mp.INFECTED
