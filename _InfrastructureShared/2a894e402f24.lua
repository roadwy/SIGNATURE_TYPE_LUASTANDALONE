pe.mmap_patch_va(pevars.sigaddr + 27, "\199D$\016\016\000\000\000")
pe.mmap_patch_va(pevars.sigaddr + 96, "\144\144")
return mp.INFECTED
