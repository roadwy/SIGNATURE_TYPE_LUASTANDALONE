local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = mp
L0_0 = L0_0.readprotection
L1_1 = false
L0_0(L1_1)
L0_0 = pe
L0_0 = L0_0.get_regval
L1_1 = pe
L1_1 = L1_1.REG_ESP
L0_0 = L0_0(L1_1)
L0_0 = L0_0 + 4
L1_1 = pe
L1_1 = L1_1.mmap_va
L2_2 = L0_0
L3_3 = 4
L1_1 = L1_1(L2_2, L3_3)
L2_2 = mp
L2_2 = L2_2.readu_u32
L3_3 = L1_1
L4_4 = 1
L2_2 = L2_2(L3_3, L4_4)
L3_3 = pe
L3_3 = L3_3.mmap_va
L4_4 = L2_2
L5_5 = 4
L3_3 = L3_3(L4_4, L5_5)
L1_1 = L3_3
L3_3 = mp
L3_3 = L3_3.readu_u32
L4_4 = L1_1
L5_5 = 1
L3_3 = L3_3(L4_4, L5_5)
L3_3 = L3_3 + 1048576
if L3_3 ~= 555819297 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = pe
L4_4 = L4_4.vm_search
L5_5 = pevars
L5_5 = L5_5.sigaddr
L5_5 = L5_5 + 64
L6_6 = pevars
L6_6 = L6_6.sigaddr
L6_6 = L6_6 + 256
L7_7 = "\000\000\016\000s"
L8_8 = nil
L4_4 = L4_4(L5_5, L6_6, L7_7, L8_8, pe.VM_SEARCH_BITMASK)
if L4_4 == nil then
  L5_5 = mp
  L5_5 = L5_5.LOWFI
  return L5_5
end
L5_5 = pe
L5_5 = L5_5.mmap_patch_va
L6_6 = L4_4 + 4
L7_7 = "\235"
L5_5(L6_6, L7_7)
L5_5 = mp
L5_5 = L5_5.bsplit
L6_6 = L3_3
L7_7 = 8
L8_8 = L5_5(L6_6, L7_7)
pe.mmap_patch_va(L2_2, string.char(L5_5))
pe.mmap_patch_va(L2_2 + 1, string.char(L6_6))
pe.mmap_patch_va(L2_2 + 2, string.char(L7_7))
pe.mmap_patch_va(L2_2 + 3, string.char(L8_8))
return mp.LOWFI
