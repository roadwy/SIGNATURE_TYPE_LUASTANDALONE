local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L0_0 = mp
L0_0 = L0_0.set_mpattribute
L1_1 = "lua_codepatch_tibs_19"
L0_0(L1_1)
L0_0 = pe
L0_0 = L0_0.mmap_va
L1_1 = pe
L1_1 = L1_1.get_regval
L2_2 = pe
L2_2 = L2_2.REG_EBP
L1_1 = L1_1(L2_2)
L1_1 = L1_1 - 4
L2_2 = 4
L0_0 = L0_0(L1_1, L2_2)
L1_1 = mp
L1_1 = L1_1.readu_u32
L2_2 = L0_0
L3_3 = 1
L1_1 = L1_1(L2_2, L3_3)
L2_2 = pe
L2_2 = L2_2.mmap_va
L3_3 = pevars
L3_3 = L3_3.sigaddr
L4_4 = 40
L2_2 = L2_2(L3_3, L4_4)
L0_0 = L2_2
L2_2 = mp
L2_2 = L2_2.readu_u32
L3_3 = L0_0
L4_4 = 6
L2_2 = L2_2(L3_3, L4_4)
L3_3 = string
L3_3 = L3_3.byte
L4_4 = L0_0
L5_5 = 14
L3_3 = L3_3(L4_4, L5_5)
L4_4 = mp
L4_4 = L4_4.readu_u32
L5_5 = L0_0
L6_6 = 16
L4_4 = L4_4(L5_5, L6_6)
L5_5 = string
L5_5 = L5_5.byte
L6_6 = L0_0
L7_7 = 22
L5_5 = L5_5(L6_6, L7_7)
L6_6 = mp
L6_6 = L6_6.readu_u32
L7_7 = L0_0
L8_8 = 26
L6_6 = L6_6(L7_7, L8_8)
L7_7 = mp
L7_7 = L7_7.readu_u32
L8_8 = L0_0
L9_9 = 37
L7_7 = L7_7(L8_8, L9_9)
L8_8 = pe
L8_8 = L8_8.get_regval
L9_9 = pe
L9_9 = L9_9.REG_EDX
L8_8 = L8_8(L9_9)
L9_9 = mp
L9_9 = L9_9.ror32
L9_9 = L9_9(mp.ror32(L8_8, L3_3) + L4_4, L5_5)
L9_9 = L9_9 - mp.bitxor(L7_7, L6_6)
L9_9 = L9_9 + L1_1
L9_9 = L9_9 - L2_2
pe.set_regval(pe.REG_EBX, L9_9)
return mp.INFECTED
