pe.mmap_patch_va(pevars.sigaddr + 11, "\199\005")
pe.mmap_patch_va(pevars.sigaddr + 21, "\144\144")
return mp.INFECTED
