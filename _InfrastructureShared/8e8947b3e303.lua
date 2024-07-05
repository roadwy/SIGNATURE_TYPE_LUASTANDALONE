local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15
L0_0 = pevars
L0_0 = L0_0.sigaddr
L0_0 = L0_0 + 56
L1_1 = pe
L1_1 = L1_1.vm_search
L2_2 = L0_0
L3_3 = L0_0 + 4040
L4_4 = "j@h\000\016\000\000h\144\001\004j\000\144\019\161\144\001\004\139\016\137\021\144\001\004\255%\144\000"
L5_5 = nil
L6_6 = pe
L6_6 = L6_6.VM_SEARCH_BM
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6)
if L1_1 == 4294967295 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = 9
L3_3 = pe
L3_3 = L3_3.vm_search
L4_4 = L0_0
L5_5 = L0_0 + 4040
L6_6 = "\141\176\144\001\004\139\029\144\001\004\129\235\144\001\004\144\003\003\000\144\001\t\144\004\001\002\235\233\144\000"
L7_7 = nil
L8_8 = pe
L8_8 = L8_8.VM_SEARCH_BM
L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7, L8_8)
if L3_3 == 4294967295 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = pe
L4_4 = L4_4.vm_search
L5_5 = L3_3 - 30
L6_6 = L3_3
L7_7 = "1\210\131\192\001\185\144\001\004\137\001\161\144\000"
L8_8 = nil
L9_9 = pe
L9_9 = L9_9.VM_SEARCH_BM
L4_4 = L4_4(L5_5, L6_6, L7_7, L8_8, L9_9)
if L4_4 == 4294967295 then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = pe
L5_5 = L5_5.vm_search
L6_6 = L4_4 - 36
L7_7 = L4_4
L8_8 = "9\b\015\133\144\001\004\184\144\001\004\255\a9\a\015\133\144\000"
L9_9 = nil
L10_10 = pe
L10_10 = L10_10.VM_SEARCH_BM
L5_5 = L5_5(L6_6, L7_7, L8_8, L9_9, L10_10)
if L5_5 == 4294967295 then
  L2_2 = 5
  L6_6 = pe
  L6_6 = L6_6.vm_search
  L7_7 = L4_4 - 28
  L8_8 = L4_4
  L9_9 = "9\bu\144\001\001\184\144\001\004\255\a9\au\144\000"
  L10_10 = nil
  L11_11 = pe
  L11_11 = L11_11.VM_SEARCH_BM
  L6_6 = L6_6(L7_7, L8_8, L9_9, L10_10, L11_11)
  L5_5 = L6_6
  if L5_5 == 4294967295 then
    L6_6 = mp
    L6_6 = L6_6.CLEAN
    return L6_6
  end
end
L6_6 = pe
L6_6 = L6_6.mmap_va
L7_7 = L3_3 + 17
L8_8 = 9
L6_6 = L6_6(L7_7, L8_8)
L7_7 = mp
L7_7 = L7_7.readu_u16
L8_8 = L6_6
L9_9 = 1
L7_7 = L7_7(L8_8, L9_9)
if L7_7 == 15747 then
  L7_7 = string
  L7_7 = L7_7.byte
  L8_8 = L6_6
  L9_9 = 8
  L7_7 = L7_7(L8_8, L9_9)
  if L7_7 == 124 then
    L7_7 = pe
    L7_7 = L7_7.mmap_patch_va
    L8_8 = L3_3 + 25
    L9_9 = "\000"
    L7_7(L8_8, L9_9)
  end
end
L7_7 = pe
L7_7 = L7_7.mmap_va
L8_8 = L5_5 + L2_2
L9_9 = 4
L7_7 = L7_7(L8_8, L9_9)
L8_8 = mp
L8_8 = L8_8.readu_u32
L9_9 = L7_7
L10_10 = 1
L8_8 = L8_8(L9_9, L10_10)
L9_9 = pe
L9_9 = L9_9.set_regval
L10_10 = pe
L10_10 = L10_10.REG_EAX
L11_11 = L8_8
L9_9(L10_10, L11_11)
L9_9 = pevars
L9_9 = L9_9.sigaddr
L9_9 = L9_9 + 6
L10_10 = L3_3 - L9_9
L10_10 = L10_10 - 5
L11_11 = mp
L11_11 = L11_11.bsplit
L12_12 = L10_10
L13_13 = 8
L14_14 = L11_11(L12_12, L13_13)
L15_15 = pe
L15_15 = L15_15.mmap_patch_va
L15_15(L9_9, "\233")
L15_15 = pe
L15_15 = L15_15.mmap_patch_va
L15_15(L9_9 + 1, string.char(L11_11))
L15_15 = pe
L15_15 = L15_15.mmap_patch_va
L15_15(L9_9 + 2, string.char(L12_12))
L15_15 = pe
L15_15 = L15_15.mmap_patch_va
L15_15(L9_9 + 3, string.char(L13_13))
L15_15 = pe
L15_15 = L15_15.mmap_patch_va
L15_15(L9_9 + 4, string.char(L14_14))
L15_15 = pe
L15_15 = L15_15.mmap_va
L15_15 = L15_15(L1_1 + 27, 16)
if mp.readu_u16(L15_15, 1) == 15747 and mp.readu_u16(L15_15, 8) == 35855 then
  pe.mmap_patch_va(L1_1 + 34, "\000\000\000\000")
end
return mp.INFECTED
