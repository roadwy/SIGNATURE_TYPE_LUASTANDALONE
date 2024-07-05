local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = mp
L0_0 = L0_0.HEADERPAGE_SZ
if not (L0_0 < 4096) then
  L0_0 = mp
  L0_0 = L0_0.FOOTERPAGE_SZ
elseif L0_0 < 4096 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.bitand
L1_1 = mp
L1_1 = L1_1.readu_u16
L2_2 = headerpage
L3_3 = 1
L1_1 = L1_1(L2_2, L3_3)
L2_2 = 61680
L0_0 = L0_0(L1_1, L2_2)
if L0_0 == 24656 then
  L0_0 = mp
  L0_0 = L0_0.bitand
  L1_1 = mp
  L1_1 = L1_1.readu_u16
  L2_2 = headerpage
  L3_3 = 6
  L1_1 = L1_1(L2_2, L3_3)
  L2_2 = 61680
  L0_0 = L0_0(L1_1, L2_2)
  if L0_0 == 57344 then
    L0_0 = mp
    L0_0 = L0_0.readu_u32
    L1_1 = footerpage
    L2_2 = mp
    L2_2 = L2_2.FOOTERPAGE_SZ
    L2_2 = L2_2 - 7
    L0_0 = L0_0(L1_1, L2_2)
    L1_1 = mp
    L1_1 = L1_1.readu_u32
    L2_2 = footerpage
    L3_3 = mp
    L3_3 = L3_3.FOOTERPAGE_SZ
    L3_3 = L3_3 - 3
    L1_1 = L1_1(L2_2, L3_3)
    if L0_0 ~= 0 and L1_1 ~= 0 then
      L2_2 = mp
      L2_2 = L2_2.bitand
      L3_3 = L0_0
      L4_4 = 61680
      L2_2 = L2_2(L3_3, L4_4)
      if L2_2 == 0 then
        L2_2 = mp
        L2_2 = L2_2.bitand
        L3_3 = L1_1
        L4_4 = 61680
        L2_2 = L2_2(L3_3, L4_4)
        if L2_2 == 0 then
          L2_2 = mp
          L2_2 = L2_2.getfilesize
          L2_2 = L2_2()
          L3_3 = mp
          L3_3 = L3_3.readu_u16
          L4_4 = footerpage
          L3_3 = L3_3(L4_4, mp.FOOTERPAGE_SZ - 40 - L2_2 % 40 + 1)
          L4_4 = footerpage
          L4_4 = L4_4[mp.FOOTERPAGE_SZ - 40 - L2_2 % 40 + 7]
          if L3_3 ~= 0 and L4_4 ~= 0 and mp.bitxor(mp.readu_u16(headerpage, 1), L3_3) == 26704 and mp.bitxor(headerpage[7], L4_4) == 232 then
            mp.set_mpattribute("MpNonPIIFileType")
            return mp.INFECTED
          end
        end
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
