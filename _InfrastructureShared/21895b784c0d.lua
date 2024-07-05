pe.set_regval(pe.REG_EIP, pe.get_regval(pe.REG_EIP) + string.byte(pe.mmap_va(pevars.sigaddr - 1, 1), 1))
return mp.INFECTED
