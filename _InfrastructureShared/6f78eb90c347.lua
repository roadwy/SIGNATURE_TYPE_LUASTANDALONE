local L0_0, L1_1, L2_2, L3_3
L0_0 = hstrlog
L0_0 = L0_0[2]
L0_0 = L0_0.VA
L0_0 = L0_0 + 45
L1_1 = pe
L1_1 = L1_1.mmap_va
L2_2 = L0_0
L3_3 = 4
L1_1 = L1_1(L2_2, L3_3)
L2_2 = mp
L2_2 = L2_2.readu_u32
L3_3 = L1_1
L2_2 = L2_2(L3_3, 1)
L3_3 = pe
L3_3 = L3_3.mmap_va
L3_3 = L3_3(L2_2, 16)
if string.sub(L3_3, 1, 8) == "IExplore" then
  return mp.INFECTED
end
return mp.CLEAN
