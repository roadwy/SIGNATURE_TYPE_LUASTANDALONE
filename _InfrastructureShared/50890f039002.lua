local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = pe
L0_0 = L0_0.mmap_va
L1_1 = pevars
L1_1 = L1_1.sigaddr
L1_1 = L1_1 - 13
L2_2 = 64
L0_0 = L0_0(L1_1, L2_2)
L1_1 = mp
L1_1 = L1_1.readu_u32
L2_2 = L0_0
L3_3 = 1
L1_1 = L1_1(L2_2, L3_3)
L2_2 = mp
L2_2 = L2_2.readu_u32
L3_3 = L0_0
L4_4 = 57
L2_2 = L2_2(L3_3, L4_4)
L2_2 = L2_2 - 2
if L2_2 ~= L1_1 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.readu_u32
L3_3 = L0_0
L4_4 = 10
L2_2 = L2_2(L3_3, L4_4)
L3_3 = mp
L3_3 = L3_3.readu_u32
L4_4 = L0_0
L5_5 = 24
L3_3 = L3_3(L4_4, L5_5)
L4_4 = string
L4_4 = L4_4.byte
L5_5 = L0_0
L4_4 = L4_4(L5_5, 19)
L5_5 = pe
L5_5 = L5_5.mmap_va
L5_5 = L5_5(L2_2, 4)
L0_0 = L5_5
L5_5 = pe
L5_5 = L5_5.get_api_id
L5_5 = L5_5(mp.readu_u32(L0_0, 1))
if L5_5 ~= 2185195070 then
  return mp.CLEAN
end
L0_0 = pe.mmap_va(L3_3, 4)
L5_5 = pe.get_api_id(mp.readu_u32(L0_0, 1))
if L5_5 ~= 3267971814 then
  return mp.CLEAN
end
pe.set_regval(pe.REG_EBX, L4_4)
pe.mmap_patch_va(L1_1, "\221\a\005\000")
pe.mmap_patch_va(pevars.sigaddr, "\144\144\144")
pe.mmap_patch_va(pevars.sigaddr + 21, "\144\144")
return mp.INFECTED
