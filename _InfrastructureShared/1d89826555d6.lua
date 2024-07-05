pe.mmap_patch_va(pevars.sigaddr + 1, "\000\000\000\000")
pe.set_regval(pe.REG_ECX, 2147483647)
return mp.INFECTED
