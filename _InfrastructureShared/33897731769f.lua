local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = pe
L0_0 = L0_0.mmap_va
L1_1 = pevars
L1_1 = L1_1.sigaddr
L2_2 = 32
L0_0 = L0_0(L1_1, L2_2)
L1_1 = mp
L1_1 = L1_1.readu_u32
L2_2 = L0_0
L3_3 = 23
L1_1 = L1_1(L2_2, L3_3)
L2_2 = mp
L2_2 = L2_2.readu_u32
L3_3 = L0_0
L4_4 = 17
L2_2 = L2_2(L3_3, L4_4)
L3_3 = pe
L3_3 = L3_3.get_api_id
L4_4 = mp
L4_4 = L4_4.readu_u32
L4_4 = L4_4(pe.mmap_va(L1_1, 4), 1)
L3_3 = L3_3(L4_4, L4_4(pe.mmap_va(L1_1, 4), 1))
if L3_3 ~= 946125367 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = pe
L4_4 = L4_4.mmap_va
L4_4 = L4_4(L2_2, 32)
if not string.find(L4_4, "c\000:\000\\\000m\000y\000a\000p\000p\000", 1, true) then
  return mp.CLEAN
end
pe.mmap_patch_va(pevars.sigaddr + 30, "\144\144")
return mp.INFECTED
