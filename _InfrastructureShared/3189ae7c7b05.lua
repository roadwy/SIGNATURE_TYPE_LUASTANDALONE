local L0_0, L1_1, L2_2
L0_0 = string
L0_0 = L0_0.find
L1_1 = pe
L1_1 = L1_1.mmap_va
L2_2 = pevars
L2_2 = L2_2.sigaddr
L1_1 = L1_1(L2_2, 20)
L2_2 = "u"
L0_0 = L0_0(L1_1, L2_2, 1, true)
L0_0 = L0_0 - 1
L1_1 = string
L1_1 = L1_1.find
L2_2 = pe
L2_2 = L2_2.mmap_va
L2_2 = L2_2(pevars.sigaddr, 96)
L1_1 = L1_1(L2_2, "u", 80, true)
L2_2 = L1_1 - L0_0
L1_1 = L2_2 - 1
L2_2 = string
L2_2 = L2_2.format
L2_2 = L2_2("\235%s", string.char(L1_1))
pe.mmap_patch_va(pevars.sigaddr + L0_0, L2_2)
return mp.INFECTED
