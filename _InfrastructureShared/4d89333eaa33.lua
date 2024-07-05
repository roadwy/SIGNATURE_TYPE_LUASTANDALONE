local L0_0, L1_1
L0_0 = pe
L0_0 = L0_0.mmap_patch_va
L1_1 = pevars
L1_1 = L1_1.sigaddr
L1_1 = L1_1 + 17
L0_0(L1_1, "\141\r")
L0_0 = pe
L0_0 = L0_0.mmap_va
L1_1 = pevars
L1_1 = L1_1.sigaddr
L1_1 = L1_1 + 24
L0_0 = L0_0(L1_1, 1)
L1_1 = pevars
L1_1 = L1_1.sigaddr
L1_1 = L1_1 + 23
L1_1 = L1_1 + string.byte(L0_0, 1)
L1_1 = L1_1 + 2
L1_1 = L1_1 - 2
pe.mmap_patch_va(pevars.sigaddr + 23, "\144\144")
pe.mmap_patch_va(L1_1, "\144\144")
return mp.INFECTED
