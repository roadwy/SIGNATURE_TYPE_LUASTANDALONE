pe.mmap_patch_va(pevars.sigaddr + 20, "\144\144")
pe.mmap_patch_va(pevars.sigaddr + 40, ")\203")
pe.mmap_patch_va(pevars.sigaddr + 23, "\000")
return mp.INFECTED
