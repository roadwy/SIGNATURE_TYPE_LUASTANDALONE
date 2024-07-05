pe.mmap_patch_va(pevars.sigaddr + 17, "\144\144")
pe.mmap_patch_va(pevars.sigaddr + 3, "\254\255\255\127")
pe.mmap_patch_va(pevars.sigaddr + 7, "\144\144")
pe.set_regval(pe.REG_EAX, 2147483647)
return mp.INFECTED
