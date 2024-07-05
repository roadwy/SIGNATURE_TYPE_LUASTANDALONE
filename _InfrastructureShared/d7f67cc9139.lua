local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = pe
L0_0 = L0_0.mmap_va
L1_1 = pevars
L1_1 = L1_1.sigaddr
L2_2 = 32
L0_0 = L0_0(L1_1, L2_2)
L1_1 = mp
L1_1 = L1_1.readu_u16
L2_2 = L0_0
L3_3 = 1
L1_1 = L1_1(L2_2, L3_3)
if L1_1 ~= 32129 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.readu_u16
L3_3 = L0_0
L4_4 = 8
L2_2 = L2_2(L3_3, L4_4)
if L2_2 ~= 5245 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.readu_u32
L4_4 = L0_0
L5_5 = 4
L3_3 = L3_3(L4_4, L5_5)
if L3_3 < 16777216 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = string
L4_4 = L4_4.byte
L5_5 = L0_0
L4_4 = L4_4(L5_5, 3)
L5_5 = string
L5_5 = L5_5.byte
L5_5 = L5_5(L0_0, 12)
if string.byte(L0_0, 15) > 2 then
  return mp.CLEAN
end
if L4_4 ~= L5_5 then
  return mp.CLEAN
end
L5_5 = string.byte(L0_0, 18)
if L4_4 ~= L5_5 then
  return mp.CLEAN
end
L5_5 = string.byte(L0_0, 21)
if L4_4 ~= L5_5 then
  return mp.CLEAN
end
L5_5 = string.byte(L0_0, 27)
if L4_4 ~= L5_5 then
  return mp.CLEAN
end
pe.mmap_patch_va(pevars.sigaddr, "\199E")
return mp.INFECTED
