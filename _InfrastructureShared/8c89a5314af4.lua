pe.mmap_patch_va(pevars.sigaddr + 12, "\144\144\144\144\144\144")
pe.set_regval(pe.REG_EAX, 0)
pe.set_regval(pe.REG_ECX, 0)
pe.set_regval(pe.REG_EDX, 0)
pe.set_regval(pe.REG_EBX, 0)
return mp.INFECTED
