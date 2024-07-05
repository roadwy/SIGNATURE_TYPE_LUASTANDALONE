local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10
function L0_0(A0_11, A1_12, A2_13)
  local L3_14, L4_15, L5_16, L6_17, L7_18
  if not A0_11 or not A1_12 or not A2_13 then
    L3_14, L4_15, L5_16 = nil, nil, nil
    return L3_14, L4_15, L5_16
  end
  L3_14 = pe
  L3_14 = L3_14.vm_search
  L4_15 = A0_11
  L5_16 = A0_11 + A1_12
  L6_17 = "\226"
  L7_18 = nil
  L3_14 = L3_14(L4_15, L5_16, L6_17, L7_18, pe.VM_SEARCH_FOP)
  if L3_14 == 4294967295 then
    L4_15, L5_16, L6_17 = nil, nil, nil
    return L4_15, L5_16, L6_17
  end
  L4_15 = mp
  L4_15 = L4_15.bsplit
  L5_16 = mp
  L5_16 = L5_16.readu_u16
  L6_17 = pe
  L6_17 = L6_17.mmap_va
  L7_18 = L3_14
  L6_17 = L6_17(L7_18, 2)
  L7_18 = 1
  L5_16 = L5_16(L6_17, L7_18)
  L6_17 = 8
  L5_16 = L4_15(L5_16, L6_17)
  L6_17 = mp
  L6_17 = L6_17.bsplit
  L7_18 = mp
  L7_18 = L7_18.bitnot
  L7_18 = L7_18(L5_16)
  L6_17 = L6_17(L7_18, 8)
  L6_17 = L3_14 - L6_17
  L6_17 = L6_17 - 4
  L7_18 = pe
  L7_18 = L7_18.vm_search
  L7_18 = L7_18(L6_17, L6_17 + 5, "\185", nil, pe.VM_SEARCH_FOP)
  L6_17 = L7_18
  if L6_17 == 4294967295 then
    L7_18 = nil
    return L7_18, nil, nil
  end
  L7_18 = pe
  L7_18 = L7_18.mmap_va
  L7_18 = L7_18(L6_17 + 1, 4)
  L7_18 = mp.readu_u32(L7_18, 1)
  if A2_13 >= L7_18 then
    return nil, nil, nil
  end
  return L3_14, L6_17, L7_18
end
check_expensive_loop = L0_0
L0_0 = 4
L1_1 = 0
L2_2 = 0
L3_3 = 1048576
L4_4 = pevars
L4_4 = L4_4.sigaddr
L5_5 = {}
L6_6 = nil
for L10_10 = 1, L0_0 do
  L4_4, L5_5[L10_10], L6_6 = check_expensive_loop(L4_4, 384, 196608)
  if L4_4 == nil then
    break
  end
  if L3_3 <= L6_6 then
    L2_2 = L2_2 + 1
  end
  L4_4 = L4_4 + 2
  L1_1 = L10_10
end
if L1_1 < 3 then
  return L7_7
end
if L2_2 == 0 then
  return L7_7
end
for L10_10 = 1, L1_1 do
  pe.mmap_patch_va(L5_5[L10_10] + 1, "\001\000\000\000")
end
return L7_7
