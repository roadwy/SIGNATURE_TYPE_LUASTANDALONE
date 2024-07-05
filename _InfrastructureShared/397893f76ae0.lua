local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L20_20, L21_21, L22_22, L23_23
L0_0 = peattributes
L0_0 = L0_0.isdll
if not L0_0 then
  L0_0 = peattributes
  L0_0 = L0_0.amd64_image
  if not L0_0 then
    L0_0 = mp
    L0_0 = L0_0.CLEAN
    return L0_0
  end
end
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.bitor
L2_2 = mp
L2_2 = L2_2.FILEPATH_QUERY_FNAME
L3_3 = mp
L3_3 = L3_3.FILEPATH_QUERY_LOWERCASE
L23_23 = L1_1(L2_2, L3_3)
L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L20_20, L21_21, L22_22, L23_23, L1_1(L2_2, L3_3))
if L0_0 ~= "ffmpeg.dll" then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.getfilesize
L1_1 = L1_1()
if not (L1_1 < 2097652) then
  L1_1 = mp
  L1_1 = L1_1.getfilesize
  L1_1 = L1_1()
elseif L1_1 > 5242880 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
function L1_1(A0_24, A1_25)
  return string.find(A0_24, A1_25:gsub(".", function(A0_26)
    local L2_27
    L2_27 = string
    L2_27 = L2_27.format
    return L2_27("%c\000", string.byte(A0_26))
  end):gsub("%z+$", ""), 1, true)
end
function L2_2(A0_28)
  if tonumber(A0_28:reverse():gsub(".", function(A0_29)
    local L2_30
    L2_30 = string
    L2_30 = L2_30.format
    return L2_30("%02x", string.byte(A0_29))
  end), 16) >= 2147483647 then
  end
  return tonumber(A0_28:reverse():gsub(".", function(A0_31)
    local L2_32
    L2_32 = string
    L2_32 = L2_32.format
    return L2_32("%02x", string.byte(A0_31))
  end), 16) - 4294967296 or tonumber(A0_28:reverse():gsub(".", function(A0_33)
    local L2_34
    L2_34 = string
    L2_34 = L2_34.format
    return L2_34("%02x", string.byte(A0_33))
  end), 16)
end
L3_3 = hstrlog
L3_3 = L3_3[1]
L4_4 = L3_3.VA
L5_5 = hstrlog
L5_5 = L5_5[1]
L5_5 = L5_5.matched
if L5_5 == true then
  L5_5 = L3_3.match_offsets
  L6_6 = L3_3.match_offsets_count
  L5_5 = L5_5[L6_6]
  L5_5 = L4_4 + L5_5
  L6_6 = doshdr
  L6_6 = L6_6.e_lfanew
  L6_6 = L6_6 + 49
  L7_7 = mp
  L7_7 = L7_7.readu_u64
  L8_8 = headerpage
  L9_9 = L6_6
  L7_7 = L7_7(L8_8, L9_9)
  L8_8 = L5_5 + 5
  L9_9 = L2_2
  L10_10 = pe
  L10_10 = L10_10.mmap_va
  L11_11 = L5_5 + 1
  L12_12 = 4
  L23_23 = L10_10(L11_11, L12_12)
  L9_9 = L9_9(L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L20_20, L21_21, L22_22, L23_23, L10_10(L11_11, L12_12))
  L5_5 = L8_8 + L9_9
  L8_8 = pesecs
  L9_9 = pevars
  L9_9 = L9_9.epsec
  L8_8 = L8_8[L9_9]
  L8_8 = L8_8.VirtualAddress
  L8_8 = L5_5 - L8_8
  L9_9 = pesecs
  L10_10 = pevars
  L10_10 = L10_10.epsec
  L9_9 = L9_9[L10_10]
  L9_9 = L9_9.PointerToRawData
  L9_9 = L9_9 + L8_8
  L9_9 = L9_9 - L7_7
  L10_10 = mp
  L10_10 = L10_10.readprotection
  L11_11 = false
  L10_10(L11_11)
  L10_10 = L9_9 + 9
  L11_11 = mp
  L11_11 = L11_11.readfile
  L12_12 = L10_10
  L13_13 = 5
  L11_11 = L11_11(L12_12, L13_13)
  L13_13 = L11_11
  L12_12 = L11_11.byte
  L14_14 = 1
  L12_12 = L12_12(L13_13, L14_14)
  if L12_12 == 232 then
    L12_12 = L10_10 + 5
    L13_13 = L2_2
    L15_15 = L11_11
    L14_14 = L11_11.sub
    L16_16 = 2
    L23_23 = L14_14(L15_15, L16_16, L17_17)
    L13_13 = L13_13(L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L20_20, L21_21, L22_22, L23_23, L14_14(L15_15, L16_16, L17_17))
    L10_10 = L12_12 + L13_13
    L12_12 = "VWUSH\129\236\144\001\004H\139\144\001\016L\141\r\144\000"
    L13_13 = 32
    L14_14 = mp
    L14_14 = L14_14.BMSearchFile
    L15_15 = L10_10
    L16_16 = 100
    L14_14 = L14_14(L15_15, L16_16, L17_17)
    if L14_14 ~= -1 then
      L15_15 = L10_10 + L14_14
      L14_14 = L15_15 + L13_13
      L15_15 = pesecs
      L16_16 = pevars
      L16_16 = L16_16.epsec
      L15_15 = L15_15[L16_16]
      L15_15 = L15_15.PointerToRawData
      L15_15 = L14_14 - L15_15
      L16_16 = pesecs
      L16_16 = L16_16[L17_17]
      L16_16 = L16_16.VirtualAddress
      L15_15 = L15_15 + L16_16
      L16_16 = L15_15 + 4
      L23_23 = L18_18(L19_19, L20_20)
      L15_15 = L16_16 + L17_17
      L16_16 = 0
      for L20_20 = 1, L18_18.NumberOfSections do
        L22_22 = L20_20
        L23_23 = L15_15
        if L21_21 then
          L22_22 = pesecs
          L22_22 = L22_22[L20_20]
          L22_22 = L22_22.PointerToRawData
          L16_16 = L21_21 + L22_22
          break
        end
      end
      if L16_16 ~= 0 then
        for L22_22, L23_23 in L19_19(L20_20) do
          if L1_1(L17_17, L23_23) == nil then
            return mp.CLEAN
          end
        end
        return L19_19
      end
    end
  end
end
L5_5 = mp
L5_5 = L5_5.CLEAN
return L5_5
