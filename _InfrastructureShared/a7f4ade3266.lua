local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = pe
L0_0 = L0_0.mmap_va
L1_1 = pevars
L1_1 = L1_1.sigaddr
L2_2 = 32
L0_0 = L0_0(L1_1, L2_2)
L1_1 = mp
L1_1 = L1_1.readu_u32
L2_2 = L0_0
L3_3 = 4
L1_1 = L1_1(L2_2, L3_3)
L2_2 = 0
if L1_1 ~= 2332783616 then
  L3_3 = mp
  L3_3 = L3_3.readu_u32
  L4_4 = L0_0
  L5_5 = 7
  L3_3 = L3_3(L4_4, L5_5)
  L1_1 = L3_3
  if L1_1 ~= 2333176832 then
    L3_3 = mp
    L3_3 = L3_3.CLEAN
    return L3_3
  else
    L2_2 = 3
  end
end
L3_3, L4_4 = nil, nil
if L2_2 == 0 then
  L5_5 = string
  L5_5 = L5_5.byte
  L6_6 = L0_0
  L7_7 = 10
  L5_5 = L5_5(L6_6, L7_7)
  L3_3 = L5_5
  L5_5 = string
  L5_5 = L5_5.byte
  L6_6 = L0_0
  L7_7 = 12
  L5_5 = L5_5(L6_6, L7_7)
  L4_4 = L5_5
else
  L5_5 = string
  L5_5 = L5_5.byte
  L6_6 = L0_0
  L7_7 = 16
  L5_5 = L5_5(L6_6, L7_7)
  L3_3 = L5_5
  L5_5 = string
  L5_5 = L5_5.byte
  L6_6 = L0_0
  L7_7 = 18
  L5_5 = L5_5(L6_6, L7_7)
  L4_4 = L5_5
end
if L4_4 ~= 1 then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
if L3_3 ~= 131 then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5, L6_6 = nil, nil
if L2_2 == 0 then
  L7_7 = string
  L7_7 = L7_7.byte
  L8_8 = L0_0
  L7_7 = L7_7(L8_8, 3)
  L5_5 = L7_7
  L7_7 = string
  L7_7 = L7_7.byte
  L8_8 = L0_0
  L7_7 = L7_7(L8_8, 9)
  L6_6 = L7_7
else
  L7_7 = mp
  L7_7 = L7_7.readu_u32
  L8_8 = L0_0
  L7_7 = L7_7(L8_8, 3)
  L5_5 = L7_7
  L7_7 = mp
  L7_7 = L7_7.readu_u32
  L8_8 = L0_0
  L7_7 = L7_7(L8_8, 9 + L2_2)
  L6_6 = L7_7
end
if L5_5 ~= L6_6 then
  L7_7 = mp
  L7_7 = L7_7.CLEAN
  return L7_7
end
L7_7, L8_8 = nil, nil
if L2_2 == 0 then
  L7_7 = string.byte(L0_0, 8)
  L8_8 = string.byte(L0_0, 14)
else
  L7_7 = mp.readu_u32(L0_0, 8 + L2_2)
  L8_8 = mp.readu_u32(L0_0, 20)
end
if L7_7 ~= L8_8 then
  return mp.CLEAN
end
if L2_2 == 0 then
  pe.mmap_patch_va(pevars.sigaddr, "\199E")
  pe.mmap_patch_va(pevars.sigaddr + 7 + L2_2, "\235\b")
else
  pe.mmap_patch_va(pevars.sigaddr, "\199\133")
  pe.mmap_patch_va(pevars.sigaddr + 7 + L2_2, "\235\014")
end
pe.mmap_patch_va(pevars.sigaddr + 4 + L2_2, "\000\000\000")
return mp.CLEAN
