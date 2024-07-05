local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = mp
L0_0 = L0_0.set_mpattribute
L1_1 = "lua_codepatch_tibs_7"
L0_0(L1_1)
L0_0 = pe
L0_0 = L0_0.mmap_va
L1_1 = pevars
L1_1 = L1_1.sigaddr
L2_2 = 32
L0_0 = L0_0(L1_1, L2_2)
L1_1 = mp
L1_1 = L1_1.readu_u32
L2_2 = L0_0
L3_3 = 12
L1_1 = L1_1(L2_2, L3_3)
L2_2 = mp
L2_2 = L2_2.readu_u32
L3_3 = L0_0
L4_4 = 23
L2_2 = L2_2(L3_3, L4_4)
L3_3 = pe
L3_3 = L3_3.get_regval
L4_4 = pe
L4_4 = L4_4.REG_EDX
L3_3 = L3_3(L4_4)
L4_4 = string
L4_4 = L4_4.byte
L5_5 = L0_0
L4_4 = L4_4(L5_5, 8)
L5_5 = mp
L5_5 = L5_5.ror32
L5_5 = L5_5(L3_3, L4_4)
L5_5 = L5_5 - mp.bitxor(L2_2, L1_1)
L5_5 = L5_5 - 1
pe.set_regval(pe.REG_EBX, L5_5)
return mp.INFECTED
