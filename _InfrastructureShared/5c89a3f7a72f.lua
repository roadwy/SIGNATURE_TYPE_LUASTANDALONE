pe.mmap_patch_va(pevars.sigaddr, "\235,\144\144\144\144")
pe.mmap_patch_va(pevars.sigaddr + 46, "\249\144")
pe.mmap_patch_va(pevars.sigaddr + 54, "\235")
return mp.INFECTED
