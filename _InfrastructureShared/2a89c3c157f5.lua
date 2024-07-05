pe.mmap_patch_va(pe.get_regval(pe.REG_EIP) + 21, "\000\001\000\000")
return mp.INFECTED
