local L0_0, L1_1, L2_2
L0_0 = pe
L0_0 = L0_0.mmap_va
L1_1 = pevars
L1_1 = L1_1.sigaddr
L2_2 = 16
L0_0 = L0_0(L1_1, L2_2)
L1_1 = mp
L1_1 = L1_1.readu_u32
L2_2 = L0_0
L1_1 = L1_1(L2_2, 3)
L2_2 = pe
L2_2 = L2_2.mmap_va
L2_2 = L2_2(L1_1, 6)
if string.byte(L2_2, 1) == 83 and string.byte(L2_2, 2) == 108 and string.byte(L2_2, 3) == 101 and string.byte(L2_2, 4) == 101 and string.byte(L2_2, 5) == 112 and string.byte(L2_2, 6) == 0 then
  return mp.INFECTED
end
return mp.CLEAN
