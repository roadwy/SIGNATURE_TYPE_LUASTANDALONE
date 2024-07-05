local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14
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
L6_6 = "1\210\131\192\001\185\144\001\004\137\001\161\144\001\004\141\176\144\001\004\139\029\144\001\004\129\235\144\001\004\144\003\003\000\144\001\t\144\004\001\002\235\233\144\000"
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
L5_5 = L3_3 - 36
L6_6 = L3_3
L7_7 = "9\b\015\133\144\001\004\184\144\001\004\255\a9\a\015\133\144\000"
L8_8 = nil
L9_9 = pe
L9_9 = L9_9.VM_SEARCH_BM
L4_4 = L4_4(L5_5, L6_6, L7_7, L8_8, L9_9)
if L4_4 == 4294967295 then
  L5_5 = pe
  L5_5 = L5_5.vm_search
  L6_6 = L3_3 - 28
  L7_7 = L3_3
  L8_8 = "9\bu\144\001\001\184\144\001\004\255\a9\au\144\000"
  L9_9 = nil
  L10_10 = pe
  L10_10 = L10_10.VM_SEARCH_BM
  L5_5 = L5_5(L6_6, L7_7, L8_8, L9_9, L10_10)
  L4_4 = L5_5
  if L4_4 == 4294967295 then
    L5_5 = mp
    L5_5 = L5_5.CLEAN
    return L5_5
  end
end
L5_5 = pe
L5_5 = L5_5.mmap_va
L6_6 = L3_3 + 35
L7_7 = 9
L5_5 = L5_5(L6_6, L7_7)
L6_6 = mp
L6_6 = L6_6.readu_u16
L7_7 = L5_5
L8_8 = 1
L6_6 = L6_6(L7_7, L8_8)
if L6_6 == 15747 then
  L6_6 = string
  L6_6 = L6_6.byte
  L7_7 = L5_5
  L8_8 = 8
  L6_6 = L6_6(L7_7, L8_8)
  if L6_6 == 124 then
    L6_6 = pe
    L6_6 = L6_6.mmap_patch_va
    L7_7 = L3_3 + 43
    L8_8 = "\000"
    L6_6(L7_7, L8_8)
  end
end
L6_6 = pe
L6_6 = L6_6.mmap_va
L7_7 = L4_4 + L2_2
L8_8 = 4
L6_6 = L6_6(L7_7, L8_8)
L7_7 = mp
L7_7 = L7_7.readu_u32
L8_8 = L6_6
L9_9 = 1
L7_7 = L7_7(L8_8, L9_9)
L8_8 = pe
L8_8 = L8_8.set_regval
L9_9 = pe
L9_9 = L9_9.REG_EAX
L10_10 = L7_7
L8_8(L9_9, L10_10)
L8_8 = pevars
L8_8 = L8_8.sigaddr
L8_8 = L8_8 + 6
L9_9 = L3_3 + 17
L9_9 = L9_9 - L8_8
L9_9 = L9_9 - 5
L10_10 = mp
L10_10 = L10_10.bsplit
L11_11 = L9_9
L12_12 = 8
L13_13 = L10_10(L11_11, L12_12)
L14_14 = pe
L14_14 = L14_14.mmap_patch_va
L14_14(L8_8, "\233")
L14_14 = pe
L14_14 = L14_14.mmap_patch_va
L14_14(L8_8 + 1, string.char(L10_10))
L14_14 = pe
L14_14 = L14_14.mmap_patch_va
L14_14(L8_8 + 2, string.char(L11_11))
L14_14 = pe
L14_14 = L14_14.mmap_patch_va
L14_14(L8_8 + 3, string.char(L12_12))
L14_14 = pe
L14_14 = L14_14.mmap_patch_va
L14_14(L8_8 + 4, string.char(L13_13))
L14_14 = pe
L14_14 = L14_14.mmap_va
L14_14 = L14_14(L1_1 + 27, 16)
if mp.readu_u16(L14_14, 1) == 15747 and mp.readu_u16(L14_14, 8) == 35855 then
  pe.mmap_patch_va(L1_1 + 34, "\000\000\000\000")
end
return mp.INFECTED
