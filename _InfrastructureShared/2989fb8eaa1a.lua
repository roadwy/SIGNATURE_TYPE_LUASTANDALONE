local L0_0, L1_1, L2_2, L3_3
L0_0 = pe
L0_0 = L0_0.get_regval
L1_1 = pe
L1_1 = L1_1.REG_EBP
L0_0 = L0_0(L1_1)
L1_1 = pe
L1_1 = L1_1.mmap_va
L2_2 = pevars
L2_2 = L2_2.sigaddr
L3_3 = 8
L1_1 = L1_1(L2_2, L3_3)
L2_2 = mp
L2_2 = L2_2.bitor
L3_3 = string
L3_3 = L3_3.byte
L3_3 = L3_3(L1_1, 3)
L2_2 = L2_2(L3_3, 4294967040)
L3_3 = pe
L3_3 = L3_3.mmap_va
L3_3 = L3_3(mp.bitand(L0_0 + L2_2, 4294967295), 4)
L1_1 = L3_3
L3_3 = mp
L3_3 = L3_3.readu_u32
L3_3 = L3_3(L1_1, 1)
L3_3 = L3_3 + 1
L1_1 = pe.mmap_va(L3_3, 4)
if mp.readu_u32(L1_1, 1) == 707406378 then
  return mp.SUSPICIOUS
end
return mp.CLEAN
