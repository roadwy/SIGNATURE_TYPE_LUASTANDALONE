local L0_0, L1_1
L0_0 = pe
L0_0 = L0_0.mmap_va
L1_1 = pevars
L1_1 = L1_1.sigaddr
L0_0 = L0_0(L1_1, 80)
L1_1 = mp
L1_1 = L1_1.readu_u32
L1_1 = L1_1(L0_0, 31)
L1_1 = L1_1 - 1
pe.set_regval(pe.REG_ECX, L1_1)
return mp.CLEAN
