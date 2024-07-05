pe.mmap_patch_va(pe.get_regval(pe.REG_EIP) + 9, "\000\016\000\000")
pe.mmap_patch_va(pe.get_regval(pe.REG_EIP) + 46, "\000\016\000\000")
return mp.INFECTED
