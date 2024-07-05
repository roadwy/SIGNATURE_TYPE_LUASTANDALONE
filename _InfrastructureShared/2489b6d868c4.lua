pe.mmap_patch_va(pevars.sigaddr + 11, "\1397")
pe.mmap_patch_va(pevars.sigaddr + 15, "\144\144")
return mp.INFECTED
