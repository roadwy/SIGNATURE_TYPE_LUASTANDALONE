pe.mmap_patch_va(pevars.sigaddr + 25, "\144\144\144\144\144\144")
pe.mmap_patch_va(pevars.sigaddr + 52, "\144\144")
return mp.INFECTED
