local L0_0, L1_1
L0_0 = pe
L0_0 = L0_0.mmap_patch_va
L1_1 = pevars
L1_1 = L1_1.sigaddr
L1_1 = L1_1 + 9
L0_0(L1_1, "\228\228")
L0_0 = 160
L1_1 = pe
L1_1 = L1_1.mmap_va
L1_1 = L1_1(pevars.sigaddr, L0_0)
pe.mmap_patch_va(pevars.sigaddr + string.find(L1_1, "P\232....=....u", 1, true) + 10, "\235")
return mp.INFECTED
