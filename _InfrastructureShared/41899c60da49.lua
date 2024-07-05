local L0_0, L1_1
L0_0 = pe
L0_0 = L0_0.mmap_va
L1_1 = pevars
L1_1 = L1_1.sigaddr
L1_1 = L1_1 + 3
L0_0 = L0_0(L1_1, 4)
L1_1 = mp
L1_1 = L1_1.readu_u32
L1_1 = L1_1(L0_0, 1)
pe.mmap_patch_va(L1_1, "\221\a")
return mp.INFECTED
