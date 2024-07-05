local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L0_0 = pevars
L0_0 = L0_0.sigaddr
L0_0 = L0_0 + 56
L1_1 = pe
L1_1 = L1_1.vm_search
L2_2 = L0_0
L3_3 = L0_0 + 4040
L4_4 = "\161\144\001\004\139\016\137\021\144\001\004\255%\144\001\004j@h\000\016\000\000h\144\001\004j\000\232\218\255\255\255\144\000"
L5_5 = nil
L6_6 = pe
L6_6 = L6_6.VM_SEARCH_BM
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6)
if L1_1 == 4294967295 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = pe
L2_2 = L2_2.vm_search
L3_3 = L0_0
L4_4 = L0_0 + 4040
L5_5 = "9\bu\144\001\001\184\144\001\004\255\a9\au\144\001\0011\210\131\192\001\185\144\001\004\137\001\161\144\001\004\141\176\144\001\004\139\029\144\001\004\129\235\144\001\004\144\004\001\002\235\233\144\000"
L6_6 = nil
L7_7 = pe
L7_7 = L7_7.VM_SEARCH_BM
L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6, L7_7)
L1_1 = L2_2
if L1_1 == 4294967295 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = pe
L2_2 = L2_2.mmap_va
L3_3 = L1_1 + 5
L4_4 = 4
L2_2 = L2_2(L3_3, L4_4)
L3_3 = mp
L3_3 = L3_3.readu_u32
L4_4 = L2_2
L5_5 = 1
L3_3 = L3_3(L4_4, L5_5)
L4_4 = pe
L4_4 = L4_4.set_regval
L5_5 = pe
L5_5 = L5_5.REG_EAX
L6_6 = L3_3
L4_4(L5_5, L6_6)
L4_4 = pevars
L4_4 = L4_4.sigaddr
L4_4 = L4_4 + 6
L5_5 = L1_1 + 32
L5_5 = L5_5 - L4_4
L5_5 = L5_5 - 5
L6_6 = mp
L6_6 = L6_6.bsplit
L7_7 = L5_5
L8_8 = 8
L9_9 = L6_6(L7_7, L8_8)
pe.mmap_patch_va(L4_4, "\233")
pe.mmap_patch_va(L4_4 + 1, string.char(L6_6))
pe.mmap_patch_va(L4_4 + 2, string.char(L7_7))
pe.mmap_patch_va(L4_4 + 3, string.char(L8_8))
pe.mmap_patch_va(L4_4 + 4, string.char(L9_9))
return mp.INFECTED
