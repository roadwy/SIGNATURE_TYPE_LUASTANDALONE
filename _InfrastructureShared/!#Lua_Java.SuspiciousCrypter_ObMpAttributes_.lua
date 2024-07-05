local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L20_20, L21_21, L22_22, L23_23, L24_24
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
L0_0 = L0_0.readu_u32
L1_1 = headerpage
L2_2 = 1
L0_0 = L0_0(L1_1, L2_2)
if L0_0 ~= 67324752 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 > 16777216 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readprotection
L2_2 = false
L1_1(L2_2)
L1_1 = mp
L1_1 = L1_1.FOOTERPAGE_SZ
L1_1 = L1_1 - 21
L2_2 = mp
L2_2 = L2_2.readu_u32
L3_3 = footerpage
L4_4 = L1_1
L2_2 = L2_2(L3_3, L4_4)
if L2_2 ~= 101010256 then
  L2_2 = 276
  L3_3 = mp
  L3_3 = L3_3.readfile
  L4_4 = L0_0 - L2_2
  L5_5 = L2_2
  L3_3 = L3_3(L4_4, L5_5)
  if L3_3 == nil then
    L4_4 = mp
    L4_4 = L4_4.CLEAN
    return L4_4
  end
  L4_4 = string
  L4_4 = L4_4.find
  L5_5 = L3_3
  L6_6 = "PK\005\006"
  L7_7 = 1
  L8_8 = true
  L4_4 = L4_4(L5_5, L6_6, L7_7, L8_8)
  L1_1 = L4_4
  if L1_1 == nil then
    L4_4 = mp
    L4_4 = L4_4.CLEAN
    return L4_4
  end
  L4_4 = mp
  L4_4 = L4_4.FOOTERPAGE_SZ
  L4_4 = L1_1 + L4_4
  L1_1 = L4_4 - L2_2
end
L2_2 = mp
L2_2 = L2_2.readu_u16
L3_3 = footerpage
L4_4 = L1_1 + 10
L2_2 = L2_2(L3_3, L4_4)
L3_3 = mp
L3_3 = L3_3.readu_u32
L4_4 = footerpage
L5_5 = L1_1 + 12
L3_3 = L3_3(L4_4, L5_5)
L4_4 = mp
L4_4 = L4_4.readu_u32
L5_5 = footerpage
L6_6 = L1_1 + 16
L4_4 = L4_4(L5_5, L6_6)
L5_5 = mp
L5_5 = L5_5.readfile
L6_6 = L4_4
L7_7 = L3_3
L5_5 = L5_5(L6_6, L7_7)
if L5_5 == nil then
  L6_6 = mp
  L6_6 = L6_6.CLEAN
  return L6_6
end
L6_6 = 700
L7_7 = 0
L8_8 = 0
L9_9 = 0
L10_10 = 0
L11_11 = 0
L12_12 = 0
L13_13 = false
L14_14 = false
L15_15 = false
L16_16 = {}
L17_17 = 0
L18_18 = 1
L19_19 = mp
L19_19 = L19_19.readu_u32
L20_20 = L5_5
L21_21 = L18_18
L19_19 = L19_19(L20_20, L21_21)
if L19_19 ~= 33639248 then
  L19_19 = mp
  L19_19 = L19_19.CLEAN
  return L19_19
end
while L18_18 ~= nil do
  L7_7 = L7_7 + 1
  L19_19 = mp
  L19_19 = L19_19.readu_u16
  L20_20 = L5_5
  L21_21 = L18_18 + 28
  L19_19 = L19_19(L20_20, L21_21)
  L20_20 = string
  L20_20 = L20_20.sub
  L21_21 = L5_5
  L22_22 = L18_18 + 46
  L23_23 = L18_18 + 46
  L23_23 = L23_23 + L19_19
  L23_23 = L23_23 - 1
  L20_20 = L20_20(L21_21, L22_22, L23_23)
  L21_21 = mp
  L21_21 = L21_21.readu_u32
  L22_22 = L5_5
  L23_23 = L18_18 + 24
  L21_21 = L21_21(L22_22, L23_23)
  L22_22 = mp
  L22_22 = L22_22.readu_u16
  L23_23 = L5_5
  L24_24 = L18_18 + 12
  L22_22 = L22_22(L23_23, L24_24)
  L23_23 = mp
  L23_23 = L23_23.readu_u16
  L24_24 = L5_5
  L23_23 = L23_23(L24_24, L18_18 + 14)
  if L19_19 >= 6 and L20_20 ~= nil then
    L24_24 = string
    L24_24 = L24_24.lower
    L24_24 = L24_24(string.sub(L20_20, -6))
    if L24_24 == ".class" then
      L8_8 = L8_8 + 1
    elseif string.find(L24_24, ".b64", 3, true) == 3 then
      L9_9 = L9_9 + 1
    elseif (string.find(L20_20, "com/", 1, true) == 1 or string.find(L20_20, "net/", 1, true) == 1) and string.find(L20_20, ".", 1, true) == nil and string.sub(L20_20, -1) ~= "/" then
      L10_10 = L10_10 + 1
    end
    if L17_17 <= 100 then
      L24_24 = string.match(L24_24, "%.(.*)")
      if L24_24 ~= nil and L24_24 ~= "class" and L24_24 ~= "b64" and L24_24 ~= "mf" and L16_16[L24_24] == nil then
        L16_16[L24_24] = true
        L17_17 = L17_17 + 1
      end
    end
    if L15_15 == false and string.find(L20_20, "[0-9]") ~= nil and string.sub(L20_20, string.find(L20_20, "[0-9]") - 1, string.find(L20_20, "[0-9]") - 1) ~= "$" then
      L15_15 = true
    end
    if string.find(L20_20, "META-INF/", 1, true) == 1 and L20_20 ~= "META-INF/MANIFEST.MF" then
      L12_12 = L12_12 + 1
    end
  end
  L24_24 = L18_18 + 46
  L24_24 = L24_24 + L19_19
  if L20_20 == "META-INF/MANIFEST.MF" then
    if MpCommon.DosTimeToFileTime(L22_22, L23_23) ~= 0 and MpCommon.DosTimeToFileTime(L22_22, L23_23) < MpCommon.TimeTToFileTime(MpCommon.GetCurrentTimeT()) then
      L13_13 = MpCommon.TimeTToFileTime(MpCommon.GetCurrentTimeT()) - MpCommon.DosTimeToFileTime(L22_22, L23_23) <= 15 * 864000000000
    end
    if mp.readu_u32(L5_5, L24_24) == 51966 then
      L24_24 = L24_24 + 4
    end
    if L21_21 <= 150 then
      L14_14 = true
    end
    L11_11 = L11_11 + 1
  end
  L18_18 = nil
  if L3_3 > L24_24 and mp.readu_u32(L5_5, L24_24) == 33639248 then
    L18_18 = L24_24
  end
  if L6_6 < L7_7 then
    break
  end
end
if L14_14 then
  L19_19 = mp
  L19_19 = L19_19.set_mpattribute
  L20_20 = "//Lua:JarManifestSizeLT150"
  L19_19(L20_20)
end
if L15_15 == false then
  L19_19 = mp
  L19_19 = L19_19.set_mpattribute
  L20_20 = "//Lua:JarNoNumberInFilenames"
  L19_19(L20_20)
end
if L10_10 >= 1 then
  L19_19 = mp
  L19_19 = L19_19.set_mpattribute
  L20_20 = "//Lua:JarNoExtFiles"
  L19_19(L20_20)
  if L10_10 >= 10 then
    L19_19 = mp
    L19_19 = L19_19.set_mpattribute
    L20_20 = "//Lua:JarNoExtFilesGE10"
    L19_19(L20_20)
  end
  if L10_10 >= 25 then
    L19_19 = mp
    L19_19 = L19_19.set_mpattribute
    L20_20 = "//Lua:JarNoExtFilesGE25"
    L19_19(L20_20)
  end
  if L10_10 >= 50 then
    L19_19 = mp
    L19_19 = L19_19.set_mpattribute
    L20_20 = "//Lua:JarNoExtFilesGE50"
    L19_19(L20_20)
  end
  if L10_10 >= 100 then
    L19_19 = mp
    L19_19 = L19_19.set_mpattribute
    L20_20 = "//Lua:JarNoExtFilesGE100"
    L19_19(L20_20)
  end
end
if L17_17 >= 10 then
  L19_19 = mp
  L19_19 = L19_19.set_mpattribute
  L20_20 = "//Lua:JarDifferentExtsInsideGE10"
  L19_19(L20_20)
  if L17_17 >= 25 then
    L19_19 = mp
    L19_19 = L19_19.set_mpattribute
    L20_20 = "//Lua:JarDifferentExtsInsideGE25"
    L19_19(L20_20)
  end
  if L17_17 >= 50 then
    L19_19 = mp
    L19_19 = L19_19.set_mpattribute
    L20_20 = "//Lua:JarDifferentExtsInsideGE50"
    L19_19(L20_20)
  end
  if L17_17 >= 100 then
    L19_19 = mp
    L19_19 = L19_19.set_mpattribute
    L20_20 = "//Lua:JarDifferentExtsInsideGE100"
    L19_19(L20_20)
  end
end
if L8_8 == 0 then
  L19_19 = mp
  L19_19 = L19_19.set_mpattribute
  L20_20 = "//Lua:JarNoClassFilesInside"
  L19_19(L20_20)
elseif L8_8 == 1 then
  L19_19 = mp
  L19_19 = L19_19.set_mpattribute
  L20_20 = "//Lua:JarSingleClassFileInside"
  L19_19(L20_20)
elseif L8_8 >= 5 then
  L19_19 = mp
  L19_19 = L19_19.set_mpattribute
  L20_20 = "//Lua:JarClassFilesInsideGE5"
  L19_19(L20_20)
  if L8_8 >= 10 then
    L19_19 = mp
    L19_19 = L19_19.set_mpattribute
    L20_20 = "//Lua:JarClassFilesInsideGE10"
    L19_19(L20_20)
  end
  if L8_8 >= 25 then
    L19_19 = mp
    L19_19 = L19_19.set_mpattribute
    L20_20 = "//Lua:JarClassFilesInsideGE25"
    L19_19(L20_20)
  end
  if L8_8 >= 50 then
    L19_19 = mp
    L19_19 = L19_19.set_mpattribute
    L20_20 = "//Lua:JarClassFilesInsideGE50"
    L19_19(L20_20)
  end
  if L8_8 >= 100 then
    L19_19 = mp
    L19_19 = L19_19.set_mpattribute
    L20_20 = "//Lua:JarClassFilesInsideGE100"
    L19_19(L20_20)
  end
end
if L12_12 >= 1 then
  L19_19 = mp
  L19_19 = L19_19.set_mpattribute
  L20_20 = "//Lua:JarMoreFilesInMetaInf"
  L19_19(L20_20)
end
L19_19 = L2_2 - L11_11
L19_19 = L19_19 - L8_8
if L19_19 == L17_17 and L17_17 >= 10 then
  L19_19 = mp
  L19_19 = L19_19.set_mpattribute
  L20_20 = "//Lua:JarDifferentExtsAllFiles"
  L19_19(L20_20)
end
if L8_8 >= 15 and L10_10 >= 50 and L11_11 == 1 and L9_9 == 0 and L13_13 then
  L19_19 = mp
  L19_19 = L19_19.set_mpattribute
  L20_20 = "//Lua:Java.SuspiciousCrypter.Loose.A"
  L19_19(L20_20)
end
if L10_10 >= 400 and L11_11 == 1 and L9_9 == 0 and L13_13 then
  L19_19 = mp
  L19_19 = L19_19.set_mpattribute
  L20_20 = "//Lua:Java.SuspiciousCrypter.Loose.B"
  L19_19(L20_20)
end
if L8_8 >= 10 and L10_10 >= 10 and L11_11 == 1 and L13_13 and L14_14 and L15_15 == false then
  L19_19 = mp
  L19_19 = L19_19.set_mpattribute
  L20_20 = "//Lua:Java.SuspiciousCrypter.Loose.C"
  L19_19(L20_20)
end
if L8_8 >= 25 and L8_8 <= 55 and L10_10 >= 100 and L10_10 <= 150 and L11_11 == 1 and L13_13 and L0_0 >= 450000 and L0_0 <= 700000 then
  L19_19 = mp
  L19_19 = L19_19.set_mpattribute
  L20_20 = "//Lua:Java.SuspiciousCrypter.JRAT"
  L19_19(L20_20)
elseif L8_8 >= 200 and L8_8 <= 250 and L10_10 >= 300 and L10_10 <= 500 and L11_11 == 1 and L13_13 and L0_0 >= 580000 and L0_0 <= 720000 then
  L19_19 = mp
  L19_19 = L19_19.set_mpattribute
  L20_20 = "//Lua:Java.SuspiciousCrypter.JRAT.B"
  L19_19(L20_20)
elseif L8_8 >= 200 and L8_8 <= 250 and L10_10 >= 40 and L10_10 <= 100 and L11_11 == 1 and L13_13 and L0_0 >= 100000 and L0_0 <= 170000 then
  L19_19 = mp
  L19_19 = L19_19.set_mpattribute
  L20_20 = "//Lua:Java.SuspiciousCrypter.JRAT.C"
  L19_19(L20_20)
elseif L8_8 >= 25 and L8_8 <= 40 and (L10_10 >= 450 and L10_10 <= 550 or L10_10 >= 180 and L10_10 <= 250) and L11_11 == 1 and L13_13 and L0_0 >= 580000 and L0_0 <= 720000 then
  L19_19 = mp
  L19_19 = L19_19.set_mpattribute
  L20_20 = "//Lua:Java.SuspiciousCrypter.JRAT.D"
  L19_19(L20_20)
elseif L8_8 >= 100 and L8_8 <= 300 and (L10_10 >= 100 and L10_10 <= 200 or L10_10 >= 400 and L10_10 <= 600 or L10_10 >= 1500 and L10_10 <= 2000) and L11_11 == 1 and L13_13 then
  L19_19 = mp
  L19_19 = L19_19.set_mpattribute
  L20_20 = "//Lua:Java.SuspiciousCrypter.JRAT.E"
  L19_19(L20_20)
elseif L8_8 >= 15 and L8_8 <= 50 and L10_10 >= 120 and L10_10 <= 280 and L11_11 == 1 and L13_13 then
  L19_19 = mp
  L19_19 = L19_19.set_mpattribute
  L20_20 = "//Lua:Java.SuspiciousCrypter.JRAT.F"
  L19_19(L20_20)
elseif L8_8 == 0 and L10_10 == 700 and L11_11 == 1 and L13_13 then
  L19_19 = mp
  L19_19 = L19_19.set_mpattribute
  L20_20 = "//Lua:Java.SuspiciousCrypter.JRAT.G"
  L19_19(L20_20)
elseif L8_8 >= 40 and L8_8 <= 70 and L10_10 >= 300 and L10_10 <= 500 and L11_11 == 1 and L13_13 then
  L19_19 = mp
  L19_19 = L19_19.set_mpattribute
  L20_20 = "//Lua:Java.SuspiciousCrypter.JRAT.H"
  L19_19(L20_20)
elseif L8_8 == 1 and L10_10 == 0 and L11_11 == 1 and L13_13 and L17_17 >= 90 and L0_0 >= 100000 and L0_0 <= 700000 then
  L19_19 = mp
  L19_19 = L19_19.set_mpattribute
  L20_20 = "//Lua:Java.SuspiciousCrypter.JRAT.J"
  L19_19(L20_20)
elseif L8_8 >= 20 and L8_8 <= 55 and L10_10 >= 150 and L10_10 <= 250 and L11_11 == 1 and L13_13 and L0_0 >= 200000 and L0_0 <= 320000 then
  L19_19 = mp
  L19_19 = L19_19.set_mpattribute
  L20_20 = "//Lua:Java.SuspiciousCrypter.QRAT"
  L19_19(L20_20)
elseif L8_8 >= 26 and L8_8 <= 40 and L10_10 >= 9 and L10_10 <= 18 and L11_11 == 1 and L13_13 and L0_0 >= 48000 and L0_0 <= 62000 and L9_9 >= 15 and L9_9 <= 17 then
  L19_19 = mp
  L19_19 = L19_19.set_mpattribute
  L20_20 = "//Lua:Java.SuspiciousCrypter.QRAT.B"
  L19_19(L20_20)
end
L19_19 = mp
L19_19 = L19_19.CLEAN
return L19_19
