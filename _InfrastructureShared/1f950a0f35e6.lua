local L0_0, L1_1
L0_0 = pe
L0_0 = L0_0.mmap_va
L1_1 = pevars
L1_1 = L1_1.sigaddr
L0_0 = L0_0(L1_1, 40)
L1_1 = string
L1_1 = L1_1.sub
L1_1 = L1_1(L0_0, 17, 17)
pe.mmap_patch_va(pevars.sigaddr + 14, "\187" .. L1_1 .. "\000\000\000\144\144\144")
return mp.INFECTED
