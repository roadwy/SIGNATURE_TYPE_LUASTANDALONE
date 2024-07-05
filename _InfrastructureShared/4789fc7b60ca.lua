local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = mp
L0_0 = L0_0.set_mpattribute
L1_1 = "lua_codepatch_tibs_8"
L0_0(L1_1)
L0_0 = pe
L0_0 = L0_0.mmap_va
L1_1 = pevars
L1_1 = L1_1.sigaddr
L2_2 = 32
L0_0 = L0_0(L1_1, L2_2)
L1_1 = string
L1_1 = L1_1.byte
L2_2 = L0_0
L3_3 = 3
L1_1 = L1_1(L2_2, L3_3)
L2_2 = string
L2_2 = L2_2.byte
L3_3 = L0_0
L4_4 = 6
L2_2 = L2_2(L3_3, L4_4)
L3_3 = mp
L3_3 = L3_3.readu_u32
L4_4 = L0_0
L5_5 = 15
L3_3 = L3_3(L4_4, L5_5)
L4_4 = mp
L4_4 = L4_4.readu_u32
L5_5 = L0_0
L6_6 = 26
L4_4 = L4_4(L5_5, L6_6)
L5_5 = pe
L5_5 = L5_5.get_regval
L6_6 = pe
L6_6 = L6_6.REG_EDX
L5_5 = L5_5(L6_6)
L6_6 = string
L6_6 = L6_6.byte
L7_7 = L0_0
L6_6 = L6_6(L7_7, 11)
L7_7 = mp
L7_7 = L7_7.ror32
L7_7 = L7_7(L5_5, L6_6)
L7_7 = L7_7 - mp.bitxor(L4_4, L3_3)
L7_7 = L7_7 - L1_1
L7_7 = L7_7 + L2_2
pe.set_regval(pe.REG_EBX, L7_7)
return mp.INFECTED
