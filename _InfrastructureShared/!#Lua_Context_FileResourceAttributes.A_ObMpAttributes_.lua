local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "CMN:HSTR:InstallerFile"
L0_0 = L0_0(L1_1)
if L0_0 ~= true then
  L0_0 = mp
  L0_0 = L0_0.get_mpattribute
  L1_1 = "Exception:FileResourceAttributes"
  L0_0 = L0_0(L1_1)
elseif L0_0 == true then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
function L0_0(A0_16)
  local L1_17, L3_18, L4_19
  if A0_16 == nil then
    return
  end
  for _FORV_4_ = 1, L3_18.NumberOfSections do
    if tostring(pesecs[_FORV_4_].Name) == A0_16 then
      return pesecs[_FORV_4_].PointerToRawData, pesecs[_FORV_4_].SizeOfRawData
    end
  end
end
L1_1 = pehdr
if L1_1 ~= nil then
  L1_1 = pehdr
  L1_1 = L1_1.ImageBase
elseif L1_1 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = L0_0
L2_2 = ".rsrc"
L2_2 = L1_1(L2_2)
if L1_1 == nil or L2_2 == nil or L2_2 <= 4096 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
if L2_2 > 4096 then
  L3_3 = mp
  L3_3 = L3_3.set_mpattribute
  L3_3(L4_4)
end
if L2_2 > 12288 then
  L3_3 = mp
  L3_3 = L3_3.set_mpattribute
  L3_3(L4_4)
end
if L2_2 > 20480 then
  L3_3 = mp
  L3_3 = L3_3.set_mpattribute
  L3_3(L4_4)
end
if L2_2 > 65536 then
  L3_3 = mp
  L3_3 = L3_3.set_mpattribute
  L3_3(L4_4)
end
if L2_2 > 131072 then
  L3_3 = mp
  L3_3 = L3_3.set_mpattribute
  L3_3(L4_4)
end
if L2_2 > 327680 then
  L3_3 = mp
  L3_3 = L3_3.set_mpattribute
  L3_3(L4_4)
end
L3_3 = pehdr
L3_3 = L3_3.SizeOfCode
if L2_2 > L3_3 then
  L4_4(L5_5)
end
if not L4_4 then
  return L4_4
end
if not L4_4 then
  if not L4_4 then
    if not L4_4 then
      return L4_4
    end
  end
end
if L4_4 == true then
  return L4_4
end
if L2_2 < 5376 then
  return L4_4
end
checkPatternEscape = L4_4
for L7_7 = 0, 255 do
  L8_8 = checkPatternEscape
  L9_9 = string
  L9_9 = L9_9.char
  L10_10 = mp
  L10_10 = L10_10.bitxor
  L11_11 = 77
  L12_12 = L7_7
  L15_15 = L10_10(L11_11, L12_12)
  L15_15 = L9_9(L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L10_10(L11_11, L12_12))
  L8_8 = L8_8(L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L9_9(L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L10_10(L11_11, L12_12)))
  L9_9 = checkPatternEscape
  L10_10 = string
  L10_10 = L10_10.char
  L11_11 = mp
  L11_11 = L11_11.bitxor
  L12_12 = 90
  L13_13 = L7_7
  L15_15 = L11_11(L12_12, L13_13)
  L15_15 = L10_10(L11_11, L12_12, L13_13, L14_14, L15_15, L11_11(L12_12, L13_13))
  L9_9 = L9_9(L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L10_10(L11_11, L12_12, L13_13, L14_14, L15_15, L11_11(L12_12, L13_13)))
  L10_10 = checkPatternEscape
  L11_11 = string
  L11_11 = L11_11.char
  L12_12 = mp
  L12_12 = L12_12.bitxor
  L13_13 = 105
  L14_14 = L7_7
  L15_15 = L12_12(L13_13, L14_14)
  L15_15 = L11_11(L12_12, L13_13, L14_14, L15_15, L12_12(L13_13, L14_14))
  L10_10 = L10_10(L11_11, L12_12, L13_13, L14_14, L15_15, L11_11(L12_12, L13_13, L14_14, L15_15, L12_12(L13_13, L14_14)))
  L11_11 = checkPatternEscape
  L12_12 = string
  L12_12 = L12_12.char
  L13_13 = mp
  L13_13 = L13_13.bitxor
  L14_14 = 110
  L15_15 = L7_7
  L15_15 = L13_13(L14_14, L15_15)
  L15_15 = L12_12(L13_13, L14_14, L15_15, L13_13(L14_14, L15_15))
  L11_11 = L11_11(L12_12, L13_13, L14_14, L15_15, L12_12(L13_13, L14_14, L15_15, L13_13(L14_14, L15_15)))
  L12_12 = checkPatternEscape
  L13_13 = string
  L13_13 = L13_13.char
  L14_14 = mp
  L14_14 = L14_14.bitxor
  L15_15 = 32
  L15_15 = L14_14(L15_15, L7_7)
  L15_15 = L13_13(L14_14, L15_15, L14_14(L15_15, L7_7))
  L12_12 = L12_12(L13_13, L14_14, L15_15, L13_13(L14_14, L15_15, L14_14(L15_15, L7_7)))
  L13_13 = checkPatternEscape
  L14_14 = string
  L14_14 = L14_14.char
  L15_15 = mp
  L15_15 = L15_15.bitxor
  L15_15 = L15_15(68, L7_7)
  L15_15 = L14_14(L15_15, L15_15(68, L7_7))
  L13_13 = L13_13(L14_14, L15_15, L14_14(L15_15, L15_15(68, L7_7)))
  L14_14 = checkPatternEscape
  L15_15 = string
  L15_15 = L15_15.char
  L15_15 = L15_15(mp.bitxor(79, L7_7))
  L14_14 = L14_14(L15_15, L15_15(mp.bitxor(79, L7_7)))
  L15_15 = checkPatternEscape
  L15_15 = L15_15(string.char(mp.bitxor(83, L7_7)))
  L10_10 = L10_10 .. L11_11 .. L12_12 .. L13_13 .. L14_14 .. L15_15 .. checkPatternEscape(string.char(mp.bitxor(32, L7_7))) .. checkPatternEscape(string.char(mp.bitxor(109, L7_7))) .. checkPatternEscape(string.char(mp.bitxor(111, L7_7))) .. checkPatternEscape(string.char(mp.bitxor(100, L7_7))) .. checkPatternEscape(string.char(mp.bitxor(101, L7_7)))
  L11_11 = checkPatternEscape
  L12_12 = string
  L12_12 = L12_12.char
  L13_13 = mp
  L13_13 = L13_13.bitxor
  L14_14 = 80
  L15_15 = L7_7
  L15_15 = L13_13(L14_14, L15_15)
  L15_15 = L12_12(L13_13, L14_14, L15_15, L13_13(L14_14, L15_15))
  L11_11 = L11_11(L12_12, L13_13, L14_14, L15_15, L12_12(L13_13, L14_14, L15_15, L13_13(L14_14, L15_15)))
  L12_12 = checkPatternEscape
  L13_13 = string
  L13_13 = L13_13.char
  L14_14 = mp
  L14_14 = L14_14.bitxor
  L15_15 = 69
  L15_15 = L14_14(L15_15, L7_7)
  L15_15 = L13_13(L14_14, L15_15, L14_14(L15_15, L7_7))
  L12_12 = L12_12(L13_13, L14_14, L15_15, L13_13(L14_14, L15_15, L14_14(L15_15, L7_7)))
  if L8_8 == nil or L9_9 == nil or L10_10 == nil or L11_11 == nil or L12_12 == nil then
    L13_13 = mp
    L13_13 = L13_13.CLEAN
    return L13_13
  end
  L13_13 = L8_8
  L14_14 = L9_9
  L15_15 = "\144\b\000\002"
  L13_13 = L13_13 .. L14_14 .. L15_15 .. L10_10 .. "\144\b\000\002" .. L11_11 .. L12_12 .. "\144\000"
  L14_14 = #L13_13
  if L14_14 > 15 then
    L14_14 = #L13_13
    if L14_14 < 50 then
      L14_14 = mp
      L14_14 = L14_14.BMSearchFile
      L15_15 = L1_1
      L14_14 = L14_14(L15_15, 4096, L13_13)
      if L14_14 ~= -1 then
        if L7_7 == 0 then
          L15_15 = mp
          L15_15 = L15_15.set_mpattribute
          L15_15("Lua:Context/PeFileInResource.A")
          L15_15 = mp
          L15_15 = L15_15.CLEAN
          return L15_15
        else
          L15_15 = mp
          L15_15 = L15_15.set_mpattribute
          L15_15("Lua:Context/PossibleXorPeFileInResource.A")
          L15_15 = string
          L15_15 = L15_15.format
          L15_15 = L15_15("0x%x", L7_7)
          mp.set_mpattribute("Lua:Context/PossibleXorPeFileInResource.A!" .. tostring(L15_15))
          break
        end
      end
    end
  end
end
return L4_4
