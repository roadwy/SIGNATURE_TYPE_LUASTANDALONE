local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = pe
L0_0 = L0_0.mmap_va
L1_1 = pe
L1_1 = L1_1.get_regval
L2_2 = pe
L2_2 = L2_2.REG_EBP
L1_1 = L1_1(L2_2)
L1_1 = L1_1 - 38
L2_2 = 4
L0_0 = L0_0(L1_1, L2_2)
L1_1 = mp
L1_1 = L1_1.readu_u32
L2_2 = L0_0
L3_3 = 1
L1_1 = L1_1(L2_2, L3_3)
L0_0 = L1_1
L1_1 = pe
L1_1 = L1_1.mmap_va
L2_2 = L0_0
L3_3 = 4
L1_1 = L1_1(L2_2, L3_3)
L0_0 = L1_1
L1_1 = mp
L1_1 = L1_1.readu_u32
L2_2 = L0_0
L3_3 = 1
L1_1 = L1_1(L2_2, L3_3)
L0_0 = L1_1
L1_1 = pe
L1_1 = L1_1.mmap_va
L2_2 = pevars
L2_2 = L2_2.sigaddr
L2_2 = L2_2 + 21
L3_3 = 4
L1_1 = L1_1(L2_2, L3_3)
L2_2 = mp
L2_2 = L2_2.readu_u32
L3_3 = L1_1
L4_4 = 1
L2_2 = L2_2(L3_3, L4_4)
L1_1 = L2_2
L2_2 = mp
L2_2 = L2_2.bitxor
L3_3 = L1_1
L4_4 = L0_0
L2_2 = L2_2(L3_3, L4_4)
L1_1 = L2_2
L2_2 = pe
L2_2 = L2_2.mmap_patch_va
L3_3 = pevars
L3_3 = L3_3.sigaddr
L3_3 = L3_3 + 19
L4_4 = "\191"
L2_2(L3_3, L4_4)
L2_2 = mp
L2_2 = L2_2.bsplit
L3_3 = L1_1
L4_4 = 8
L5_5 = L2_2(L3_3, L4_4)
pe.mmap_patch_va(pevars.sigaddr + 20, string.char(L2_2))
pe.mmap_patch_va(pevars.sigaddr + 21, string.char(L3_3))
pe.mmap_patch_va(pevars.sigaddr + 22, string.char(L4_4))
pe.mmap_patch_va(pevars.sigaddr + 23, string.char(L5_5))
pe.mmap_patch_va(pevars.sigaddr + 24, "\144\144\144\144")
return mp.INFECTED
