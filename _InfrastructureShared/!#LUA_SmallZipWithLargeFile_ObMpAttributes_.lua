local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L20_20
L0_0 = mp
L0_0 = L0_0.HEADERPAGE_SZ
if not (L0_0 < 128) then
  L0_0 = mp
  L0_0 = L0_0.FOOTERPAGE_SZ
elseif L0_0 < 22 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
L1_1 = 276
if L0_0 <= L1_1 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
if L0_0 > 10000000 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.FOOTERPAGE_SZ
L2_2 = L2_2 - 21
L3_3 = mp
L3_3 = L3_3.readu_u32
L4_4 = footerpage
L5_5 = L2_2
L3_3 = L3_3(L4_4, L5_5)
if L3_3 ~= 101010256 then
  L3_3 = mp
  L3_3 = L3_3.readprotection
  L4_4 = false
  L3_3(L4_4)
  L3_3 = mp
  L3_3 = L3_3.readfile
  L4_4 = L0_0 - L1_1
  L5_5 = L1_1
  L3_3 = L3_3(L4_4, L5_5)
  L4_4 = mp
  L4_4 = L4_4.readprotection
  L5_5 = true
  L4_4(L5_5)
  L4_4 = string
  L4_4 = L4_4.find
  L5_5 = L3_3
  L6_6 = "PK\005\006"
  L7_7 = 1
  L8_8 = true
  L4_4 = L4_4(L5_5, L6_6, L7_7, L8_8)
  L2_2 = L4_4
  if L3_3 == nil then
    L4_4 = mp
    L4_4 = L4_4.CLEAN
    return L4_4
  end
  if L2_2 == nil then
    L4_4 = mp
    L4_4 = L4_4.CLEAN
    return L4_4
  end
  L4_4 = mp
  L4_4 = L4_4.FOOTERPAGE_SZ
  L4_4 = L2_2 + L4_4
  L2_2 = L4_4 - L1_1
end
L3_3 = mp
L3_3 = L3_3.readu_u32
L4_4 = footerpage
L5_5 = L2_2 + 12
L3_3 = L3_3(L4_4, L5_5)
L4_4 = mp
L4_4 = L4_4.readu_u32
L5_5 = footerpage
L6_6 = L2_2 + 16
L4_4 = L4_4(L5_5, L6_6)
L5_5 = L4_4 + L3_3
if L0_0 < L5_5 then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = 338
L6_6 = mp
L6_6 = L6_6.readu_u16
L7_7 = footerpage
L8_8 = L2_2 + 10
L6_6 = L6_6(L7_7, L8_8)
L7_7 = 700
if L6_6 > L7_7 then
  L6_6 = L7_7
end
L8_8 = L5_5 * L6_6
if L3_3 > L8_8 then
  L8_8 = mp
  L8_8 = L8_8.CLEAN
  return L8_8
end
L8_8 = mp
L8_8 = L8_8.readprotection
L9_9 = false
L8_8(L9_9)
L8_8 = mp
L8_8 = L8_8.readfile
L9_9 = L4_4
L10_10 = L3_3
L8_8 = L8_8(L9_9, L10_10)
L9_9 = mp
L9_9 = L9_9.readprotection
L10_10 = true
L9_9(L10_10)
if L8_8 == nil then
  L9_9 = mp
  L9_9 = L9_9.CLEAN
  return L9_9
end
L9_9 = 0
L10_10 = 1
L11_11 = 80
L12_12 = 0
L13_13 = mp
L13_13 = L13_13.readu_u32
L14_14 = L8_8
L15_15 = L10_10
L13_13 = L13_13(L14_14, L15_15)
if L13_13 ~= 33639248 then
  L13_13 = mp
  L13_13 = L13_13.CLEAN
  return L13_13
end
L13_13 = {}
L13_13[".doc"] = ""
L13_13[".docm"] = ""
L13_13[".dotm"] = ""
L13_13[".dot"] = ""
L13_13[".xls"] = ""
L13_13[".xlsm"] = ""
L13_13[".ppt"] = ""
L13_13[".pptm"] = ""
L13_13[".exe"] = ""
L13_13[".dll"] = ""
L13_13[".scr"] = ""
L14_14 = false
while L10_10 ~= nil do
  L9_9 = L9_9 + 1
  L15_15 = mp
  L15_15 = L15_15.readu_u16
  L16_16 = L8_8
  L17_17 = L10_10 + 28
  L15_15 = L15_15(L16_16, L17_17)
  L16_16 = mp
  L16_16 = L16_16.readu_u32
  L17_17 = L8_8
  L18_18 = L10_10 + 38
  L16_16 = L16_16(L17_17, L18_18)
  L17_17 = string
  L17_17 = L17_17.sub
  L18_18 = L8_8
  L19_19 = L10_10 + 46
  L20_20 = L10_10 + 46
  L20_20 = L20_20 + L15_15
  L20_20 = L20_20 - 1
  L17_17 = L17_17(L18_18, L19_19, L20_20)
  if L17_17 ~= nil then
    L18_18 = string
    L18_18 = L18_18.lower
    L19_19 = L17_17
    L18_18 = L18_18(L19_19)
    L17_17 = L18_18
  end
  L19_19 = L17_17
  L18_18 = L17_17.sub
  L20_20 = -5
  L18_18 = L18_18(L19_19, L20_20)
  L20_20 = L18_18
  L19_19 = L18_18.sub
  L19_19 = L19_19(L20_20, -4)
  L20_20 = L13_13[L19_19]
  if L20_20 == nil then
    L20_20 = L13_13[L18_18]
  elseif L20_20 ~= nil then
    L20_20 = mp
    L20_20 = L20_20.readu_u32
    L20_20 = L20_20(L8_8, L10_10 + 24)
    if L20_20 > 268435456 and 0 < mp.readu_u32(L8_8, L10_10 + 20) and L11_11 < L20_20 / mp.readu_u32(L8_8, L10_10 + 20) then
      L12_12 = L20_20 / mp.readu_u32(L8_8, L10_10 + 20)
      mp.set_mpattribute("LUA:SmallZipWithLargeFile")
    end
  end
  if L14_14 == false then
    L20_20 = mp
    L20_20 = L20_20.bitand
    L20_20 = L20_20(L16_16, 2)
    if L20_20 == 2 then
      L20_20 = mp
      L20_20 = L20_20.bitand
      L20_20 = L20_20(L16_16, 16)
      if L20_20 ~= 16 then
        L14_14 = true
        L20_20 = mp
        L20_20 = L20_20.set_mpattribute
        L20_20("Lua:ZipHasHiddenFile")
      end
    end
  end
  L20_20 = L10_10 + 46
  L20_20 = L20_20 + L15_15
  L20_20 = L20_20 + 36
  L10_10 = nil
  if L3_3 > L20_20 and mp.readu_u32(L8_8, L20_20) == 33639248 then
    L10_10 = L20_20
    do break end
    break
  elseif L6_6 < L9_9 then
    break
  end
end
if L12_12 >= 100 then
  L15_15 = mp
  L15_15 = L15_15.set_mpattribute
  L16_16 = "//ZipCompressionRatioGTE100"
  L15_15(L16_16)
end
if L12_12 >= 250 then
  L15_15 = mp
  L15_15 = L15_15.set_mpattribute
  L16_16 = "//ZipCompressionRatioGTE250"
  L15_15(L16_16)
end
if L12_12 >= 500 then
  L15_15 = mp
  L15_15 = L15_15.set_mpattribute
  L16_16 = "//ZipCompressionRatioGTE500"
  L15_15(L16_16)
end
if L12_12 >= 1000 then
  L15_15 = mp
  L15_15 = L15_15.set_mpattribute
  L16_16 = "//ZipCompressionRatioGTE1000"
  L15_15(L16_16)
end
L15_15 = mp
L15_15 = L15_15.CLEAN
return L15_15
