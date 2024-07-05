pe.mmap_patch_va(pevars.sigaddr + 50, "\235")
pe.mmap_patch_va(pevars.sigaddr + 86, "\144\144\144\144\144\144\144\144\144\144\144\144\144\144")
return mp.INFECTED
