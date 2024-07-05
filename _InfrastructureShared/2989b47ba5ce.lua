pe.mmap_patch_va(pevars.sigaddr + 55, "\144\144")
pe.set_regval(pe.REG_EAX, pe.get_regval(pe.REG_EAX) - 1)
return mp.LOWFI
