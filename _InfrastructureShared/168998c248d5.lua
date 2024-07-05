local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = pe
L0_0 = L0_0.get_regval
L1_1 = pe
L1_1 = L1_1.REG_ESP
L0_0 = L0_0(L1_1)
L1_1 = pe
L1_1 = L1_1.mmap_va
L2_2 = L0_0
L3_3 = 16
L1_1 = L1_1(L2_2, L3_3)
L2_2 = mp
L2_2 = L2_2.readu_u32
L3_3 = L1_1
L4_4 = 9
L2_2 = L2_2(L3_3, L4_4)
L3_3 = mp
L3_3 = L3_3.readu_u32
L4_4 = L1_1
L3_3 = L3_3(L4_4, 13)
if L2_2 == 2088763392 then
  L4_4 = pe
  L4_4 = L4_4.mmap_va
  L4_4 = L4_4(L3_3, 12)
  if L4_4 == "MpVmp32Entry" then
    pe.mmap_patch_va(L3_3, "X")
    return mp.LOWFI
  end
  if L4_4 == "MpSehHandler" then
    pe.mmap_patch_va(L3_3, "X")
    return mp.LOWFI
  end
  if L4_4 == "MpExitThread" then
    pe.mmap_patch_va(L3_3, "X")
    return mp.LOWFI
  end
  if L4_4 == "MpReportEven" then
    pe.mmap_patch_va(L3_3, "X")
    return mp.LOWFI
  end
  if L4_4 == "MpStartProce" then
    pe.mmap_patch_va(L3_3, "X")
    return mp.LOWFI
  end
  L4_4 = pe.mmap_va(L3_3, 10)
  if L4_4 == "MpFinalize" then
    pe.mmap_patch_va(L3_3, "X")
    return mp.LOWFI
  end
end
L4_4 = mp
L4_4 = L4_4.CLEAN
return L4_4
