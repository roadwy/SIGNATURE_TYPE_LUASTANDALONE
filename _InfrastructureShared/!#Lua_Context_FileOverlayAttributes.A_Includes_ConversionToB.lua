local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "CMN:HSTR:InstallerFile"
L0_0 = L0_0(L1_1)
if L0_0 ~= true then
  L0_0 = mp
  L0_0 = L0_0.ispackedwith
  L1_1 = "AutoIt+"
  L0_0 = L0_0(L1_1)
  if L0_0 ~= true then
    L0_0 = mp
    L0_0 = L0_0.get_mpattributesubstring
    L1_1 = "Win32/AutoIt"
    L0_0 = L0_0(L1_1)
    if not L0_0 then
      L0_0 = mp
      L0_0 = L0_0.get_mpattributesubstring
      L1_1 = "PESTATIC:cleanstub_autoitv"
      L0_0 = L0_0(L1_1)
      if not L0_0 then
        L0_0 = mp
        L0_0 = L0_0.get_mpattribute
        L1_1 = "Exception:FileOverlayAttributes"
        L0_0 = L0_0(L1_1)
      end
    end
  end
elseif L0_0 == true then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pehdr
if L0_0 ~= nil then
  L0_0 = pehdr
  L0_0 = L0_0.ImageBase
  if L0_0 ~= nil then
    L0_0 = pehdr
    L0_0 = L0_0.NumberOfSections
  end
elseif L0_0 == nil then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pesecs
L1_1 = pehdr
L1_1 = L1_1.NumberOfSections
L0_0 = L0_0[L1_1]
L0_0 = L0_0.PointerToRawData
L1_1 = pesecs
L2_2 = pehdr
L2_2 = L2_2.NumberOfSections
L1_1 = L1_1[L2_2]
L1_1 = L1_1.SizeOfRawData
L0_0 = L0_0 + L1_1
L1_1 = mp
L1_1 = L1_1.getfilesize
L1_1 = L1_1()
if L0_0 == nil or L1_1 == nil or L0_0 >= L1_1 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = L1_1 - L0_0
if L2_2 <= 4096 then
  return L3_3
end
if L2_2 > 4096 then
  L3_3(L4_4)
end
if L2_2 > 12288 then
  L3_3(L4_4)
end
if L2_2 > 20480 then
  L3_3(L4_4)
end
if L2_2 > 65536 then
  L3_3(L4_4)
end
if L2_2 > 131072 then
  L3_3(L4_4)
end
if L2_2 > 327680 then
  L3_3(L4_4)
end
if L2_2 < 5376 then
  return L3_3
end
if not L3_3 then
  return L3_3
end
if not L3_3 then
  if not L3_3 then
    if not L3_3 then
      return L3_3
    end
  end
end
if L3_3 == true then
  return L3_3
end
checkPatternEscape = L3_3
for L6_6 = 0, 255 do
  L7_7 = checkPatternEscape
  L8_8 = string
  L8_8 = L8_8.char
  L9_9 = mp
  L9_9 = L9_9.bitxor
  L10_10 = 77
  L11_11 = L6_6
  L14_14 = L9_9(L10_10, L11_11)
  L14_14 = L8_8(L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L9_9(L10_10, L11_11))
  L7_7 = L7_7(L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L8_8(L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L9_9(L10_10, L11_11)))
  L8_8 = checkPatternEscape
  L9_9 = string
  L9_9 = L9_9.char
  L10_10 = mp
  L10_10 = L10_10.bitxor
  L11_11 = 90
  L12_12 = L6_6
  L14_14 = L10_10(L11_11, L12_12)
  L14_14 = L9_9(L10_10, L11_11, L12_12, L13_13, L14_14, L10_10(L11_11, L12_12))
  L8_8 = L8_8(L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L9_9(L10_10, L11_11, L12_12, L13_13, L14_14, L10_10(L11_11, L12_12)))
  L9_9 = checkPatternEscape
  L10_10 = string
  L10_10 = L10_10.char
  L11_11 = mp
  L11_11 = L11_11.bitxor
  L12_12 = 105
  L13_13 = L6_6
  L14_14 = L11_11(L12_12, L13_13)
  L14_14 = L10_10(L11_11, L12_12, L13_13, L14_14, L11_11(L12_12, L13_13))
  L9_9 = L9_9(L10_10, L11_11, L12_12, L13_13, L14_14, L10_10(L11_11, L12_12, L13_13, L14_14, L11_11(L12_12, L13_13)))
  L10_10 = checkPatternEscape
  L11_11 = string
  L11_11 = L11_11.char
  L12_12 = mp
  L12_12 = L12_12.bitxor
  L13_13 = 110
  L14_14 = L6_6
  L14_14 = L12_12(L13_13, L14_14)
  L14_14 = L11_11(L12_12, L13_13, L14_14, L12_12(L13_13, L14_14))
  L10_10 = L10_10(L11_11, L12_12, L13_13, L14_14, L11_11(L12_12, L13_13, L14_14, L12_12(L13_13, L14_14)))
  L11_11 = checkPatternEscape
  L12_12 = string
  L12_12 = L12_12.char
  L13_13 = mp
  L13_13 = L13_13.bitxor
  L14_14 = 32
  L14_14 = L13_13(L14_14, L6_6)
  L14_14 = L12_12(L13_13, L14_14, L13_13(L14_14, L6_6))
  L11_11 = L11_11(L12_12, L13_13, L14_14, L12_12(L13_13, L14_14, L13_13(L14_14, L6_6)))
  L12_12 = checkPatternEscape
  L13_13 = string
  L13_13 = L13_13.char
  L14_14 = mp
  L14_14 = L14_14.bitxor
  L14_14 = L14_14(68, L6_6)
  L14_14 = L13_13(L14_14, L14_14(68, L6_6))
  L12_12 = L12_12(L13_13, L14_14, L13_13(L14_14, L14_14(68, L6_6)))
  L13_13 = checkPatternEscape
  L14_14 = string
  L14_14 = L14_14.char
  L14_14 = L14_14(mp.bitxor(79, L6_6))
  L13_13 = L13_13(L14_14, L14_14(mp.bitxor(79, L6_6)))
  L14_14 = checkPatternEscape
  L14_14 = L14_14(string.char(mp.bitxor(83, L6_6)))
  L9_9 = L9_9 .. L10_10 .. L11_11 .. L12_12 .. L13_13 .. L14_14 .. checkPatternEscape(string.char(mp.bitxor(32, L6_6))) .. checkPatternEscape(string.char(mp.bitxor(109, L6_6))) .. checkPatternEscape(string.char(mp.bitxor(111, L6_6))) .. checkPatternEscape(string.char(mp.bitxor(100, L6_6))) .. checkPatternEscape(string.char(mp.bitxor(101, L6_6)))
  L10_10 = checkPatternEscape
  L11_11 = string
  L11_11 = L11_11.char
  L12_12 = mp
  L12_12 = L12_12.bitxor
  L13_13 = 80
  L14_14 = L6_6
  L14_14 = L12_12(L13_13, L14_14)
  L14_14 = L11_11(L12_12, L13_13, L14_14, L12_12(L13_13, L14_14))
  L10_10 = L10_10(L11_11, L12_12, L13_13, L14_14, L11_11(L12_12, L13_13, L14_14, L12_12(L13_13, L14_14)))
  L11_11 = checkPatternEscape
  L12_12 = string
  L12_12 = L12_12.char
  L13_13 = mp
  L13_13 = L13_13.bitxor
  L14_14 = 69
  L14_14 = L13_13(L14_14, L6_6)
  L14_14 = L12_12(L13_13, L14_14, L13_13(L14_14, L6_6))
  L11_11 = L11_11(L12_12, L13_13, L14_14, L12_12(L13_13, L14_14, L13_13(L14_14, L6_6)))
  if L7_7 == nil or L8_8 == nil or L9_9 == nil or L10_10 == nil or L11_11 == nil then
    L12_12 = mp
    L12_12 = L12_12.CLEAN
    return L12_12
  end
  L12_12 = L7_7
  L13_13 = L8_8
  L14_14 = "\144\b\000\002"
  L12_12 = L12_12 .. L13_13 .. L14_14 .. L9_9 .. "\144\b\000\002" .. L10_10 .. L11_11 .. "\144\000"
  L13_13 = #L12_12
  if L13_13 > 15 then
    L13_13 = #L12_12
    if L13_13 < 50 then
      L13_13 = mp
      L13_13 = L13_13.BMSearchFile
      L14_14 = L0_0
      L13_13 = L13_13(L14_14, 4096, L12_12)
      if L13_13 ~= -1 then
        if L6_6 == 0 then
          L14_14 = mp
          L14_14 = L14_14.set_mpattribute
          L14_14("Lua:Context/PeFileInOverlay.A")
          L14_14 = mp
          L14_14 = L14_14.CLEAN
          return L14_14
        else
          L14_14 = mp
          L14_14 = L14_14.set_mpattribute
          L14_14("Lua:Context/PossibleXorPeFileInOverlay.A")
          L14_14 = string
          L14_14 = L14_14.format
          L14_14 = L14_14("0x%x", L6_6)
          mp.set_mpattribute("Lua:Context/PossibleXorPeFileInOverlay.A!" .. tostring(L14_14))
          break
        end
      end
    end
  end
end
return L3_3
