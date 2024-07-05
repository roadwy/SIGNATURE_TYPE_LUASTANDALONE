local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONOPEN
if L0_0 ~= L1_1 then
  L1_1 = mp
  L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
elseif L0_0 == L1_1 then
  L1_1 = mp
  L1_1 = L1_1.getfilesize
  L1_1 = L1_1()
  if L1_1 > 700416 or L1_1 < 196608 then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
  L2_2 = mp
  L2_2 = L2_2.get_mpattribute
  L3_3 = "BM_UNKNOWN_FILE"
  L2_2 = L2_2(L3_3)
  if not L2_2 then
    L2_2 = mp
    L2_2 = L2_2.readu_u16
    L3_3 = headerpage
    L4_4 = 1
    L2_2 = L2_2(L3_3, L4_4)
    if L2_2 == 23117 then
      L2_2 = mp
      L2_2 = L2_2.CLEAN
      return L2_2
    end
    L2_2 = mp
    L2_2 = L2_2.readu_u16
    L3_3 = headerpage
    L4_4 = 1
    L2_2 = L2_2(L3_3, L4_4)
    if L2_2 == 53200 then
      L2_2 = mp
      L2_2 = L2_2.CLEAN
      return L2_2
    end
    L2_2 = mp
    L2_2 = L2_2.readu_u16
    L3_3 = headerpage
    L4_4 = 1
    L2_2 = L2_2(L3_3, L4_4)
    if L2_2 == 19280 then
      L2_2 = mp
      L2_2 = L2_2.CLEAN
      return L2_2
    end
    L2_2 = mp
    L2_2 = L2_2.readu_u32
    L3_3 = headerpage
    L4_4 = 1
    L2_2 = L2_2(L3_3, L4_4)
    if L2_2 == 1836597052 then
      L2_2 = mp
      L2_2 = L2_2.CLEAN
      return L2_2
    end
    L2_2 = mp
    L2_2 = L2_2.readu_u32
    L3_3 = headerpage
    L4_4 = 1
    L2_2 = L2_2(L3_3, L4_4)
    if L2_2 == 1179866185 then
      L2_2 = mp
      L2_2 = L2_2.CLEAN
      return L2_2
    end
  end
  L2_2 = string
  L2_2 = L2_2.lower
  L3_3 = string
  L3_3 = L3_3.sub
  L4_4 = mp
  L4_4 = L4_4.getfilename
  L4_4 = L4_4()
  L5_5 = -3
  L19_19 = L3_3(L4_4, L5_5)
  L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L3_3(L4_4, L5_5))
  if L2_2 == "log" then
    L3_3 = mp
    L3_3 = L3_3.CLEAN
    return L3_3
  end
  L3_3 = mp
  L3_3 = L3_3.FOOTERPAGE_SZ
  if not (L3_3 < 256) then
    L3_3 = footerpage
    L3_3 = #L3_3
  elseif L3_3 < 256 then
    L3_3 = mp
    L3_3 = L3_3.CLEAN
    return L3_3
  end
  L3_3 = mp
  L3_3 = L3_3.readu_u32
  L4_4 = footerpage
  L5_5 = mp
  L5_5 = L5_5.FOOTERPAGE_SZ
  L5_5 = L5_5 - 3
  L3_3 = L3_3(L4_4, L5_5)
  if L3_3 == 0 then
    L3_3 = mp
    L3_3 = L3_3.CLEAN
    return L3_3
  end
  L3_3 = mp
  L3_3 = L3_3.readu_u32
  L4_4 = footerpage
  L5_5 = mp
  L5_5 = L5_5.FOOTERPAGE_SZ
  L5_5 = L5_5 - 7
  L3_3 = L3_3(L4_4, L5_5)
  if L3_3 == 0 then
    L3_3 = mp
    L3_3 = L3_3.CLEAN
    return L3_3
  end
  L3_3 = string
  L3_3 = L3_3.lower
  L4_4 = mp
  L4_4 = L4_4.get_contextdata
  L5_5 = mp
  L5_5 = L5_5.CONTEXT_DATA_FILEPATH
  L19_19 = L4_4(L5_5)
  L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L4_4(L5_5))
  L4_4 = string
  L4_4 = L4_4.sub
  L5_5 = L3_3
  L6_6 = -5
  L4_4 = L4_4(L5_5, L6_6)
  if L4_4 == "\\temp" then
    L4_4 = tostring
    L5_5 = footerpage
    L4_4 = L4_4(L5_5)
    L6_6 = L4_4
    L5_5 = L4_4.find
    L7_7 = "\000\000\000\000\000\000\000\000"
    L8_8 = 1
    L9_9 = true
    L5_5 = L5_5(L6_6, L7_7, L8_8, L9_9)
    if not L5_5 then
      L6_6 = L4_4
      L5_5 = L4_4.find
      L7_7 = "PADDING"
      L8_8 = 1
      L9_9 = true
      L5_5 = L5_5(L6_6, L7_7, L8_8, L9_9)
    elseif L5_5 then
      L5_5 = mp
      L5_5 = L5_5.CLEAN
      return L5_5
    end
    L5_5 = 1768444961
    L6_6 = 1881145459
    L7_7 = 1919381362
    L8_8 = 536898913
    L9_9 = ""
    L10_10 = ""
    L11_11 = 512
    for L15_15 = L11_11, 1536 do
      L19_19 = L15_15
      L9_9 = L16_16
      L19_19 = L15_15 + 4
      L10_10 = L16_16
      for L19_19 = 1, 6 do
        if L9_9 + L19_19 == L10_10 and L9_9 + L19_19 * 2 == mp.bitxor(mp.readu_u32(headerpage, L15_15 + 8), L7_7) and L9_9 + L19_19 * 3 == mp.bitxor(mp.readu_u32(headerpage, L15_15 + 12), L8_8) then
          return mp.INFECTED
        end
        if L9_9 - L19_19 == L10_10 and L9_9 - L19_19 * 2 == mp.bitxor(mp.readu_u32(headerpage, L15_15 + 8), L7_7) and L9_9 - L19_19 * 3 == mp.bitxor(mp.readu_u32(headerpage, L15_15 + 12), L8_8) then
          return mp.INFECTED
        end
        if mp.rol32(L9_9, L19_19) == L10_10 and mp.rol32(L9_9, L19_19 * 2) == mp.bitxor(mp.readu_u32(headerpage, L15_15 + 8), L7_7) and mp.rol32(L9_9, L19_19 * 3) == mp.bitxor(mp.readu_u32(headerpage, L15_15 + 12), L8_8) then
          return mp.INFECTED
        end
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
