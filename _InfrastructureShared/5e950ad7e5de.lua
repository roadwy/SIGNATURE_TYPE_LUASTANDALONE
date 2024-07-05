local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = 16
L1_1 = pe
L1_1 = L1_1.mmap_va
L2_2 = pevars
L2_2 = L2_2.sigaddr
L2_2 = L2_2 + L0_0
L3_3 = 96
L1_1 = L1_1(L2_2, L3_3)
L2_2 = string
L2_2 = L2_2.byte
L3_3 = L1_1
L4_4 = 1
L2_2 = L2_2(L3_3, L4_4)
L2_2 = L2_2 + 2
L3_3 = #L1_1
if L2_2 > L3_3 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = string
L3_3 = L3_3.byte
L4_4 = L1_1
L3_3 = L3_3(L4_4, L2_2 - 2)
if L3_3 == 117 then
  L3_3 = string
  L3_3 = L3_3.byte
  L4_4 = L1_1
  L3_3 = L3_3(L4_4, L2_2 - 4)
  if L3_3 == 116 then
    L3_3 = string
    L3_3 = L3_3.byte
    L4_4 = L1_1
    L3_3 = L3_3(L4_4, L2_2 - 3)
    L3_3 = L3_3 + L2_2
    L3_3 = L3_3 - 2
    L4_4 = #L1_1
    if L3_3 > L4_4 then
      L4_4 = mp
      L4_4 = L4_4.CLEAN
      return L4_4
    end
    L4_4 = string
    L4_4 = L4_4.byte
    L4_4 = L4_4(L1_1, L3_3)
    if L4_4 == 232 then
      L4_4 = "\235"
      pe.mmap_patch_va(pevars.sigaddr + L0_0 + L2_2 - 5, L4_4)
      return mp.INFECTED
    end
  end
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
