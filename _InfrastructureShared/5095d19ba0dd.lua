pe.mmap_patch_va(pevars.sigaddr, "\199E\240\001\000\000\000")
pe.mmap_patch_va(pevars.sigaddr + 7, "\144\144\144")
pe.mmap_patch_va(pevars.sigaddr + 17, "\144\144\144\144\144\144")
pe.mmap_patch_va(pevars.sigaddr + 27, "\144\144\144\144\144\144")
return mp.INFECTED
