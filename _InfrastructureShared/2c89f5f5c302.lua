local L0_0, L1_1, L2_2
L0_0 = pe
L0_0 = L0_0.mmap_va
L1_1 = pevars
L1_1 = L1_1.sigaddr
L1_1 = L1_1 - 16
L2_2 = 37
L0_0 = L0_0(L1_1, L2_2)
L1_1 = mp
L1_1 = L1_1.readu_u32
L2_2 = L0_0
L1_1 = L1_1(L2_2, 2)
L2_2 = mp
L2_2 = L2_2.readu_u32
L2_2 = L2_2(L0_0, 20)
if L2_2 ~= L1_1 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.readu_u32
L2_2 = L2_2(L0_0, 13)
L0_0 = pe.mmap_va(L2_2, 4)
if pe.get_api_id(mp.readu_u32(L0_0, 1)) ~= 2185195070 then
  return mp.CLEAN
end
pe.mmap_patch_va(L1_1, "\221\a")
return mp.INFECTED
