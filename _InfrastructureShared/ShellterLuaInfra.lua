local L1_0
function L1_0(A0_1, A1_2, A2_3)
  local L3_4, L4_5, L5_6, L6_7, L7_8
  if not A0_1 or not A1_2 or not A2_3 then
    L3_4 = nil
    return L3_4
  end
  L3_4 = pe
  L3_4 = L3_4.vm_search
  L4_5 = A0_1
  L5_6 = A0_1 + A1_2
  L6_7 = "\226"
  L7_8 = nil
  L3_4 = L3_4(L4_5, L5_6, L6_7, L7_8, pe.VM_SEARCH_FOP)
  if L3_4 == 4294967295 then
    L4_5 = nil
    return L4_5
  end
  L4_5 = mp
  L4_5 = L4_5.bsplit
  L5_6 = mp
  L5_6 = L5_6.readu_u16
  L6_7 = pe
  L6_7 = L6_7.mmap_va
  L7_8 = L3_4
  L6_7 = L6_7(L7_8, 2)
  L7_8 = 1
  L5_6 = L5_6(L6_7, L7_8)
  L6_7 = 8
  L5_6 = L4_5(L5_6, L6_7)
  L6_7 = mp
  L6_7 = L6_7.bsplit
  L7_8 = mp
  L7_8 = L7_8.bitnot
  L7_8 = L7_8(L5_6)
  L6_7 = L6_7(L7_8, 8)
  L6_7 = L3_4 - L6_7
  L6_7 = L6_7 - 4
  L7_8 = pe
  L7_8 = L7_8.vm_search
  L7_8 = L7_8(L6_7, L6_7 + 5, "\185", nil, pe.VM_SEARCH_FOP)
  L6_7 = L7_8
  if L6_7 == 4294967295 then
    L7_8 = nil
    return L7_8
  end
  L7_8 = pe
  L7_8 = L7_8.mmap_va
  L7_8 = L7_8(L6_7 + 1, 4)
  L7_8 = mp.readu_u32(L7_8, 1)
  if A2_3 >= L7_8 then
    return nil
  end
  return L3_4
end
check_expensive_loop = L1_0
