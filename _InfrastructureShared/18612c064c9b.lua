local L0_0, L1_1, L2_2, L3_3
L0_0 = pe
L0_0 = L0_0.foffset_va
L1_1 = hstrlog
L1_1 = L1_1[1]
L1_1 = L1_1.VA
L0_0 = L0_0(L1_1)
L1_1 = pehdr
L1_1 = L1_1.DataDirectory
L2_2 = pe
L2_2 = L2_2.IMAGE_DIRECTORY_ENTRY_IMPORT
L1_1 = L1_1[L2_2]
L1_1 = L1_1.RVA
L2_2 = pe
L2_2 = L2_2.mmap_rva
L3_3 = L1_1 + 12
L2_2 = L2_2(L3_3, 4)
L3_3 = string
L3_3 = L3_3.byte
L3_3 = L3_3(L2_2, 1)
L3_3 = L3_3 + string.byte(L2_2, 2) * 256
L3_3 = L3_3 + string.byte(L2_2, 3) * 65536
L3_3 = L3_3 + string.byte(L2_2, 4) * 16777216
if L0_0 > pe.foffset_rva(L3_3) and L0_0 - pe.foffset_rva(L3_3) < 48 then
  return mp.INFECTED
end
return mp.CLEAN
