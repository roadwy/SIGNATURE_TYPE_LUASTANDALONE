local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
if L0_0 ~= L1_1 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 > 1048576 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readprotection
L2_2 = false
L1_1(L2_2)
L1_1 = mp
L1_1 = L1_1.readfile
L2_2 = 0
L3_3 = L0_0
L1_1 = L1_1(L2_2, L3_3)
L2_2 = MpCommon
L2_2 = L2_2.DecodeAsn1
L3_3 = L1_1
L2_2 = L2_2(L3_3)
if not L2_2 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
function L3_3(A0_13)
  local L1_14, L2_15, L3_16, L4_17, L5_18
  L1_14 = {}
  for L5_18 = 1, #A0_13, 2 do
    L1_14[#L1_14 + 1] = string.char(tonumber(A0_13:sub(L5_18, L5_18 + 1), 16))
  end
  return L2_15(L3_16)
end
function L4_4(A0_19, A1_20, A2_21, A3_22)
  local L4_23, L5_24, L6_25
  L4_23 = ""
  L5_24 = A2_21 + 8
  if A3_22 > L5_24 then
    L5_24 = A2_21 + 1
    L6_25 = _UPVALUE0_
    L6_25 = L6_25(string.sub(A0_19, L5_24, L5_24 + 8))
    A2_21 = A2_21 + 8
    if not (mp.readu_u32(L6_25, 1) > 0) then
      return "", A2_21
    end
    if A3_22 > A2_21 + mp.readu_u32(L6_25, 1) * 2 then
      if A1_20 then
        L5_24 = A2_21 + 1
        L4_23 = _UPVALUE0_(string.sub(A0_19, L5_24, L5_24 + mp.readu_u32(L6_25, 1) * 2))
        if L4_23 == nil then
          L4_23 = ""
        end
      end
      A2_21 = A2_21 + (mp.readu_u32(L6_25, 1) + mp.bitand(4 - mp.readu_u32(L6_25, 1) % 4, 3)) * 2
    end
  end
  L5_24 = L4_23
  L6_25 = A2_21
  return L5_24, L6_25
end
function L5_5(A0_26, A1_27, A2_28)
  local L3_29, L4_30, L5_31
  L3_29 = ""
  L4_30 = A1_27 + 8
  if A2_28 > L4_30 then
    L4_30 = A1_27 + 1
    L5_31 = _UPVALUE0_
    L5_31 = L5_31(string.sub(A0_26, L4_30, L4_30 + 8))
    A1_27 = A1_27 + 8
    if not (mp.readu_u32(L5_31, 1) > 0) then
      A1_27 = A1_27 + 8
      return "", A1_27
    end
    if A2_28 > A1_27 + mp.readu_u32(L5_31, 1) * 2 then
      L4_30 = A1_27 + 1
      L3_29 = _UPVALUE0_(string.sub(A0_26, L4_30, L4_30 + mp.readu_u32(L5_31, 1) * 2))
      A1_27 = A1_27 + mp.readu_u32(L5_31, 1) * 2
      if L3_29 ~= nil then
        L3_29 = string.gsub(L3_29, "%z", "")
      end
    end
    A1_27 = A1_27 + (mp.bitand(4 - mp.readu_u32(L5_31, 1) % 4, 3) + 4) * 2
  end
  L4_30 = L3_29
  L5_31 = A1_27
  return L4_30, L5_31
end
function L6_6(A0_32)
  local L1_33, L2_34, L3_35, L4_36, L5_37, L6_38, L7_39, L8_40, L9_41, L10_42, L11_43, L12_44, L13_45, L14_46, L15_47, L16_48, L17_49, L18_50, L19_51, L20_52, L21_53, L22_54, L23_55, L24_56, L25_57, L26_58
  L1_33 = string
  L1_33 = L1_33.len
  L2_34 = A0_32
  L1_33 = L1_33(L2_34)
  L2_34 = _UPVALUE0_
  L3_35 = string
  L3_35 = L3_35.sub
  L4_36 = A0_32
  L5_37 = 1
  L6_38 = 9
  L26_58 = L3_35(L4_36, L5_37, L6_38)
  L2_34 = L2_34(L3_35, L4_36, L5_37, L6_38, L7_39, L8_40, L9_41, L10_42, L11_43, L12_44, L13_45, L14_46, L15_47, L16_48, L17_49, L18_50, L19_51, L20_52, L21_53, L22_54, L23_55, L24_56, L25_57, L26_58, L3_35(L4_36, L5_37, L6_38))
  L3_35 = mp
  L3_35 = L3_35.readu_u32
  L4_36 = L2_34
  L5_37 = 1
  L3_35 = L3_35(L4_36, L5_37)
  L4_36 = 81
  L5_37 = _UPVALUE0_
  L6_38 = string
  L6_38 = L6_38.sub
  L7_39 = A0_32
  L8_40 = L4_36
  L26_58 = L6_38(L7_39, L8_40, L9_41)
  L5_37 = L5_37(L6_38, L7_39, L8_40, L9_41, L10_42, L11_43, L12_44, L13_45, L14_46, L15_47, L16_48, L17_49, L18_50, L19_51, L20_52, L21_53, L22_54, L23_55, L24_56, L25_57, L26_58, L6_38(L7_39, L8_40, L9_41))
  L6_38 = mp
  L6_38 = L6_38.readu_u32
  L7_39 = L5_37
  L8_40 = 1
  L6_38 = L6_38(L7_39, L8_40)
  L4_36 = 89
  L7_39 = _UPVALUE0_
  L8_40 = string
  L8_40 = L8_40.sub
  L26_58 = L8_40(L9_41, L10_42, L11_43)
  L7_39 = L7_39(L8_40, L9_41, L10_42, L11_43, L12_44, L13_45, L14_46, L15_47, L16_48, L17_49, L18_50, L19_51, L20_52, L21_53, L22_54, L23_55, L24_56, L25_57, L26_58, L8_40(L9_41, L10_42, L11_43))
  L5_37 = L7_39
  L7_39 = mp
  L7_39 = L7_39.readu_u32
  L8_40 = L5_37
  L7_39 = L7_39(L8_40, L9_41)
  if L7_39 == 0 then
    L8_40 = false
    return L8_40
  end
  if L7_39 > 300 then
    L8_40 = false
    return L8_40
  end
  L8_40 = 136
  if L6_38 > 0 then
    for L12_44 = 1, L6_38 do
      L14_46 = _UPVALUE1_
      L15_47 = A0_32
      L16_48 = false
      L17_49 = L8_40
      L18_50 = L1_33
      L15_47 = L13_45(L14_46, L15_47, L16_48, L17_49, L18_50)
      L8_40 = L15_47
    end
  end
  L9_41["mssense.exe"] = true
  L9_41["msmpenge.exe"] = true
  L9_41["wdfilter.sys"] = true
  L9_41["wdnisdrv.sys"] = true
  for L14_46 = 1, L7_39 do
    L15_47 = L8_40 + 8
    if L1_33 >= L15_47 then
      L4_36 = L8_40 + 1
      L15_47 = _UPVALUE0_
      L16_48 = string
      L16_48 = L16_48.sub
      L17_49 = A0_32
      L18_50 = L4_36
      L26_58 = L16_48(L17_49, L18_50, L19_51)
      L15_47 = L15_47(L16_48, L17_49, L18_50, L19_51, L20_52, L21_53, L22_54, L23_55, L24_56, L25_57, L26_58, L16_48(L17_49, L18_50, L19_51))
      L5_37 = L15_47
      L15_47 = mp
      L15_47 = L15_47.readu_u32
      L16_48 = L5_37
      L17_49 = 1
      L15_47 = L15_47(L16_48, L17_49)
      L8_40 = L8_40 + 8
      L16_48 = ""
      L17_49 = pcall
      L18_50 = _UPVALUE2_
      L18_50 = L17_49(L18_50, L19_51, L20_52, L21_53)
      L8_40 = L19_51
      L16_48 = L18_50
      _ = L17_49
      if L15_47 == 0 then
        L17_49 = string
        L17_49 = L17_49.lower
        L18_50 = L16_48
        L17_49 = L17_49(L18_50)
        L17_49 = L9_41[L17_49]
        if L17_49 then
          L17_49 = mp
          L17_49 = L17_49.set_mpattribute
          L18_50 = string
          L18_50 = L18_50.format
          L26_58 = L20_52(L21_53)
          L26_58 = L18_50(L19_51, L20_52, L21_53, L22_54, L23_55, L24_56, L25_57, L26_58, L20_52(L21_53))
          L17_49(L18_50, L19_51, L20_52, L21_53, L22_54, L23_55, L24_56, L25_57, L26_58, L18_50(L19_51, L20_52, L21_53, L22_54, L23_55, L24_56, L25_57, L26_58, L20_52(L21_53)))
          L17_49 = true
          return L17_49
        end
      end
      L8_40 = L8_40 + 16
      L17_49 = ""
      L18_50 = pcall
      L18_50 = L18_50(L19_51, L20_52, L21_53, L22_54, L23_55)
      L8_40 = L20_52
      L17_49 = L19_51
      _ = L18_50
      L18_50 = #L17_49
      if L18_50 > 0 then
        L18_50 = ""
        for L22_54 = 1, #L17_49 do
          L25_57 = L22_54
          L25_57 = string
          L25_57 = L25_57.format
          L26_58 = "%02X "
          L25_57 = L25_57(L26_58, L23_55)
          L18_50 = L24_56 .. L25_57
        end
      end
      if L15_47 == 0 and L16_48 == "" and L17_49 == "" then
        L10_42[L14_46] = true
      end
    end
  end
  if L3_35 == 7 then
  elseif not L11_43 then
    return L11_43
  end
  L8_40 = 136
  if L12_44 < 8000 then
  else
    L8_40 = L1_33 - 8000
  end
  L4_36 = L8_40 + 1
  L14_46 = A0_32
  L15_47 = L4_36
  L16_48 = L4_36 + L11_43
  L26_58 = L13_45(L14_46, L15_47, L16_48)
  if L12_44 == nil then
    return L13_45
  end
  L14_46 = "."
  L15_47 = L14_46
  L14_46 = L14_46.rep
  L16_48 = 36
  L14_46 = L14_46(L15_47, L16_48)
  L15_47 = "\a%z%z%z"
  L15_47 = L12_44
  L14_46 = L12_44.find
  L16_48 = L13_45
  L14_46 = L14_46(L15_47, L16_48)
  if L14_46 == nil then
    L15_47 = false
    return L15_47
  end
  L15_47 = {}
  L15_47["c:\\programdata\\microsoft\\windows defender"] = true
  L15_47["c:\\programdata\\microsoft\\windows defender advanced threat protection"] = true
  L15_47["c:\\program files\\windows defender advanced threat protection"] = true
  L15_47["c:\\program files (x86)\\windows defender advanced threat protection"] = true
  L15_47["c:\\program files\\windows defender"] = true
  L15_47["c:\\program files (x86)\\windows defender"] = true
  L15_47["c:\\windows\\*"] = true
  L15_47["c:\\program files\\*"] = true
  L15_47["c:\\program files (x86)\\*"] = true
  L16_48 = 1
  L17_49 = L14_46 + 44
  while true do
    L18_50 = L17_49 + 4
    if L1_33 >= L18_50 and L7_39 >= L16_48 then
      L18_50 = mp
      L18_50 = L18_50.readu_u32
      L18_50 = L18_50(L19_51, L20_52)
      L17_49 = L17_49 + 4
      if L1_33 >= L22_54 then
        for L25_57 = L17_49, L21_53 + L18_50, 2 do
          L26_58 = mp
          L26_58 = L26_58.readu_u16
          L26_58 = L26_58(L12_44, L25_57)
          if L26_58 ~= 0 then
            L17_49 = L17_49 + 2
          end
        end
        L17_49 = L22_54 + 4
        if L22_54 then
          if L22_54 then
            L25_57 = "MpInternal_researchdata=MDEPathDenied=%s"
            L26_58 = MpCommon
            L26_58 = L26_58.Base64Encode
            L26_58 = L26_58(L22_54)
            L26_58 = L24_56(L25_57, L26_58, L26_58(L22_54))
            L23_55(L24_56, L25_57, L26_58, L24_56(L25_57, L26_58, L26_58(L22_54)))
            return L23_55
          end
        end
      end
      L16_48 = L16_48 + 1
    end
  end
  L18_50 = false
  return L18_50
end
function L7_7(A0_59)
  local L1_60, L2_61, L3_62, L4_63, L5_64
  if L1_60 == "OCTET STRING" then
    L4_63 = 8
    if L1_60 == "07000000" or L1_60 == "06000000" or L1_60 == "05000000" or L1_60 == "04000000" or L1_60 == "03000000" or L1_60 == "02000000" or L1_60 == "01000000" then
      return L2_61(L3_62)
    end
  end
  if L1_60 then
    for L4_63, L5_64 in L1_60(L2_61) do
      if _UPVALUE1_(L5_64) then
        return true
      end
    end
  end
  return L1_60
end
for L11_11, L12_12 in L8_8(L9_9) do
  if L7_7(L12_12) then
    return mp.INFECTED
  end
end
return L8_8
