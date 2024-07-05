pe.set_regval(pe.REG_EAX, 11)
pe.set_regval(pe.REG_ECX, 1818588270)
pe.mmap_patch_va(pevars.sigaddr + 1, "\144\144\144\144")
return mp.INFECTED
