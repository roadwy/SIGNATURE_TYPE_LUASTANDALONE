local L0_0, L1_1, L2_2, L3_3
L0_0 = string
L0_0 = L0_0.byte
L1_1 = pe
L1_1 = L1_1.mmap_va
L2_2 = pevars
L2_2 = L2_2.sigaddr
L2_2 = L2_2 + 2
L3_3 = 1
L3_3 = L1_1(L2_2, L3_3)
L0_0 = L0_0(L1_1, L2_2, L3_3, L1_1(L2_2, L3_3))
L0_0 = 256 - L0_0
L1_1 = string
L1_1 = L1_1.byte
L2_2 = pe
L2_2 = L2_2.mmap_va
L3_3 = pevars
L3_3 = L3_3.sigaddr
L3_3 = L3_3 + 33
L3_3 = L2_2(L3_3, 1)
L1_1 = L1_1(L2_2, L3_3, L2_2(L3_3, 1))
L1_1 = 256 - L1_1
L2_2 = mp
L2_2 = L2_2.readu_u32
L3_3 = pe
L3_3 = L3_3.mmap_va
L3_3 = L3_3(pe.get_regval(pe.REG_EBP) - L0_0, 4)
L2_2 = L2_2(L3_3, 1)
L3_3 = mp
L3_3 = L3_3.readu_u32
L3_3 = L3_3(pe.mmap_va(pe.get_regval(pe.REG_EBP) - L1_1, 4), 1)
mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k1_k2.0_%02X%02X", mp.bitand(mp.shr32(L2_2, 2), 255), mp.bitand(mp.shr32(L3_3, 2), 255)))
return mp.INFECTED
