local L0_0, L1_1
L0_0 = pe
L0_0 = L0_0.mmap_va
L1_1 = pevars
L1_1 = L1_1.sigaddr
L1_1 = L1_1 + 65
L0_0 = L0_0(L1_1, 32)
L1_1 = mp
L1_1 = L1_1.readu_u32
L1_1 = L1_1(L0_0, 1)
pe.mmap_patch_va(L1_1, "\b\000\000\000")
pe.set_regval(pe.REG_ESI, L1_1)
pe.mmap_patch_va(pevars.sigaddr, "\235F")
return mp.INFECTED
