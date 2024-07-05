local L0_0, L1_1, L2_2, L3_3
L0_0 = peattributes
L0_0 = L0_0.isdll
if L0_0 then
  L0_0 = peattributes
  L0_0 = L0_0.hasexports
  if L0_0 then
    L0_0 = pe
    L0_0 = L0_0.mmap_va
    L1_1 = pehdr
    L1_1 = L1_1.ImageBase
    L2_2 = pehdr
    L2_2 = L2_2.DataDirectory
    L2_2 = L2_2[1]
    L2_2 = L2_2.RVA
    L1_1 = L1_1 + L2_2
    L2_2 = 40
    L0_0 = L0_0(L1_1, L2_2)
    L1_1 = mp
    L1_1 = L1_1.readu_u32
    L2_2 = L0_0
    L3_3 = 13
    L1_1 = L1_1(L2_2, L3_3)
    L2_2 = mp
    L2_2 = L2_2.readu_u32
    L3_3 = L0_0
    L2_2 = L2_2(L3_3, 21)
    if L2_2 == 3 then
      L3_3 = pe
      L3_3 = L3_3.mmap_va
      L3_3 = L3_3(pehdr.ImageBase + L1_1, 27)
      if string.sub(L3_3, 8) == "\000Destroy\000Init\000Start\000" then
        mp.set_mpattribute("do_exhaustivehstr_rescan")
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
