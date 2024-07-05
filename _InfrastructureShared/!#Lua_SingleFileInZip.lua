local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16
function L0_0(A0_17, A1_18)
  local L2_19, L3_20
  if A1_18 ~= nil and A0_17 ~= nil then
    L2_19 = mp
    L2_19 = L2_19.readu_u16
    L3_20 = A0_17
    L2_19 = L2_19(L3_20, A1_18 + 25)
    L3_20 = A0_17.sub
    L3_20 = L3_20(A0_17, A1_18 + 43, A1_18 + 42 + L2_19)
    return L2_19, L3_20
  end
  L2_19 = nil
  return L2_19
end
function L1_1(A0_21, A1_22)
  local L2_23, L3_24
  if A1_22 == nil or A0_21 < 4 then
    L2_23 = false
    return L2_23
  end
  L2_23 = {}
  L2_23[".js"] = true
  L2_23[".vbs"] = true
  L2_23[".lnk"] = true
  L2_23[".wsf"] = true
  L2_23[".vbe"] = true
  L2_23[".jse"] = true
  L2_23[".hta"] = true
  L2_23[".exe"] = true
  L2_23[".scr"] = true
  L2_23[".pif"] = true
  L3_24 = string
  L3_24 = L3_24.lower
  L3_24 = L3_24(string.sub(A1_22, -4))
  return L2_23[L3_24] or L2_23[string.sub(L3_24, -3)]
end
L2_2 = mp
L2_2 = L2_2.HEADERPAGE_SZ
if not (L2_2 < 128) then
  L2_2 = mp
  L2_2 = L2_2.FOOTERPAGE_SZ
elseif L2_2 < 22 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.readu_u32
L3_3 = headerpage
L4_4 = 1
L2_2 = L2_2(L3_3, L4_4)
if L2_2 ~= 67324752 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.getfilesize
L2_2 = L2_2()
if L2_2 <= 276 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.readprotection
L4_4 = false
L3_3(L4_4)
L3_3 = 276
L4_4 = mp
L4_4 = L4_4.readfile
L5_5 = mp
L5_5 = L5_5.getfilesize
L5_5 = L5_5()
L5_5 = L5_5 - L3_3
L6_6 = L3_3
L4_4 = L4_4(L5_5, L6_6)
L5_5 = mp
L5_5 = L5_5.readprotection
L6_6 = true
L5_5(L6_6)
if L4_4 == nil then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = mp
L5_5 = L5_5.FOOTERPAGE_SZ
L5_5 = L5_5 - 21
L6_6 = mp
L6_6 = L6_6.readu_u32
L7_7 = footerpage
L8_8 = L5_5
L6_6 = L6_6(L7_7, L8_8)
if L6_6 ~= 101010256 then
  L6_6 = string
  L6_6 = L6_6.find
  L7_7 = L4_4
  L8_8 = "PK\005\006"
  L9_9 = 1
  L10_10 = true
  L6_6 = L6_6(L7_7, L8_8, L9_9, L10_10)
  L5_5 = L6_6
  if L5_5 == nil then
    L6_6 = mp
    L6_6 = L6_6.CLEAN
    return L6_6
  end
  L6_6 = mp
  L6_6 = L6_6.FOOTERPAGE_SZ
  L6_6 = L5_5 + L6_6
  L5_5 = L6_6 - L3_3
end
L6_6 = mp
L6_6 = L6_6.UfsSetMetadataBool
L7_7 = "Lua:FileInZip"
L8_8 = true
L6_6(L7_7, L8_8)
L6_6 = mp
L6_6 = L6_6.readu_u16
L7_7 = footerpage
L8_8 = L5_5 + 10
L6_6 = L6_6(L7_7, L8_8)
if L6_6 == 2 then
  L8_8 = L4_4
  L7_7 = L4_4.find
  L9_9 = "PK\001\002"
  L10_10 = 1
  L11_11 = true
  L8_8 = L7_7(L8_8, L9_9, L10_10, L11_11)
  if L8_8 ~= nil then
    L9_9 = L0_0
    L10_10 = L4_4
    L11_11 = L8_8
    L10_10 = L9_9(L10_10, L11_11)
    L11_11 = mp
    L11_11 = L11_11.readu_u16
    L12_12 = L4_4
    L13_13 = L8_8 + 27
    L11_11 = L11_11(L12_12, L13_13)
    L12_12 = mp
    L12_12 = L12_12.readu_u16
    L13_13 = L4_4
    L14_14 = L8_8 + 29
    L12_12 = L12_12(L13_13, L14_14)
    if L10_10 ~= nil then
      L14_14 = L10_10
      L13_13 = L10_10.sub
      L15_15 = -1
      L13_13 = L13_13(L14_14, L15_15)
    elseif L13_13 ~= "/" then
      L13_13 = mp
      L13_13 = L13_13.CLEAN
      return L13_13
    end
    L13_13 = L8_8 + L9_9
    L13_13 = L13_13 + L11_11
    L13_13 = L13_13 + L12_12
    L8_8 = L13_13 + 46
    L13_13 = L0_0
    L14_14 = L4_4
    L15_15 = L8_8
    L14_14 = L13_13(L14_14, L15_15)
    L15_15 = L1_1
    L16_16 = L13_13
    L15_15 = L15_15(L16_16, L14_14)
    if L15_15 then
      L15_15 = mp
      L15_15 = L15_15.set_mpattribute
      L16_16 = "Lua:SingleSuspiciousExtensionInZip"
      L15_15(L16_16)
    end
    if L14_14 ~= nil then
      L16_16 = L14_14
      L15_15 = L14_14.sub
      L15_15 = L15_15(L16_16, 0, L9_9)
      if L10_10 == L15_15 then
        L15_15 = mp
        L15_15 = L15_15.set_mpattribute
        L16_16 = "Lua:FolderNameSameAsFileName"
        L15_15(L16_16)
      end
    end
  else
    L9_9 = mp
    L9_9 = L9_9.CLEAN
    return L9_9
  end
elseif L6_6 ~= 1 then
  L7_7 = mp
  L7_7 = L7_7.CLEAN
  return L7_7
else
  L8_8 = L4_4
  L7_7 = L4_4.find
  L9_9 = "PK\001\002"
  L10_10 = 1
  L11_11 = true
  L8_8 = L7_7(L8_8, L9_9, L10_10, L11_11)
  L9_9 = L0_0
  L10_10 = L4_4
  L11_11 = L8_8
  L10_10 = L9_9(L10_10, L11_11)
  L11_11 = L1_1
  L12_12 = L9_9
  L13_13 = L10_10
  L11_11 = L11_11(L12_12, L13_13)
  if L11_11 then
    L11_11 = mp
    L11_11 = L11_11.set_mpattribute
    L12_12 = "Lua:SingleSuspiciousExtensionInZip"
    L11_11(L12_12)
  end
end
L7_7 = mp
L7_7 = L7_7.readu_u32
L8_8 = headerpage
L9_9 = 19
L7_7 = L7_7(L8_8, L9_9)
if L7_7 > 4194304 then
  L8_8 = mp
  L8_8 = L8_8.CLEAN
  return L8_8
end
L8_8 = mp
L8_8 = L8_8.readu_u16
L9_9 = headerpage
L10_10 = 27
L8_8 = L8_8(L9_9, L10_10)
L9_9 = mp
L9_9 = L9_9.readu_u32
L10_10 = headerpage
L11_11 = 31 + L8_8
L11_11 = L11_11 - 4
L9_9 = L9_9(L10_10, L11_11)
if L9_9 == 1885960750 then
  L9_9 = mp
  L9_9 = L9_9.set_mpattribute
  L10_10 = "Lua:SingleZipInZip"
  L9_9(L10_10)
end
L9_9 = mp
L9_9 = L9_9.UfsSetMetadataBool
L10_10 = "Lua:SingleFileInZip"
L11_11 = true
L9_9(L10_10, L11_11)
L9_9 = mp
L9_9 = L9_9.INFECTED
return L9_9
