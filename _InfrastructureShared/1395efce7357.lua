local L0_0
L0_0 = pe
L0_0 = L0_0.get_regval
L0_0 = L0_0(pe.REG_EBP)
L0_0 = L0_0 - 4
pe.set_regval(pe.REG_EBX, mp.readu_u32(pe.mmap_va(L0_0, 4), 1) + 1)
return mp.INFECTED
