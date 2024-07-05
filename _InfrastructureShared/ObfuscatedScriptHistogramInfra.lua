local L0_0, L1_1
function L0_0()
  local L0_2, L1_3, L2_4, L3_5, L4_6, L5_7, L6_8, L7_9, L8_10, L9_11, L10_12, L11_13, L12_14, L13_15, L14_16
  L0_2 = 0
  L1_3 = {}
  L2_4 = 128
  for L6_8 = 0, L4_6.HEADERPAGE_SZ, L2_4 do
    L7_9 = 0
    L8_10 = mp
    L8_10 = L8_10.HEADERPAGE_SZ
    L8_10 = L8_10 - L6_8
    if L8_10 <= 0 then
      L9_11 = {L10_12, L11_13}
      L10_12 = L0_2
      return L9_11
    elseif L2_4 > L8_10 then
      L7_9 = L8_10
    else
      L7_9 = L2_4
    end
    L9_11 = mp
    L9_11 = L9_11.readheader
    L10_12 = L6_8
    L9_11 = L9_11(L10_12, L11_13)
    if L9_11 == nil and L9_11 == "" then
      break
    end
    L10_12 = tostring
    L10_12 = L10_12(L11_13)
    if L10_12 == nil and L10_12 == "" then
      break
    end
    for L14_16 in L11_13(L12_14, L13_15) do
      L0_2 = L0_2 + 1
      if L1_3[string.len(L14_16)] == 0 or L1_3[string.len(L14_16)] == nil then
        L1_3[string.len(L14_16)] = 1
      else
        L1_3[string.len(L14_16)] = L1_3[string.len(L14_16)] + 1
      end
    end
  end
  return L3_5
end
BuildTokenLengthHistogram = L0_0
function L0_0()
  local L0_17, L1_18, L2_19, L3_20, L4_21, L5_22, L6_23, L7_24, L8_25, L9_26, L10_27, L11_28
  L0_17 = 0
  L1_18 = {}
  L2_19 = {}
  L2_19["!"] = 1
  L2_19["+"] = 2
  L2_19["0"] = 3
  L2_19[","] = 4
  L2_19[";"] = 5
  L2_19["("] = 6
  L2_19[")"] = 7
  L2_19["["] = 8
  L2_19["]"] = 9
  L2_19[":"] = 10
  L2_19["."] = 11
  L2_19["="] = 12
  L2_19["'"] = 13
  L2_19["\""] = 14
  L2_19["\\"] = 15
  L2_19.x = 16
  L3_20 = 128
  for L7_24 = 0, L5_22.HEADERPAGE_SZ, L3_20 do
    L8_25 = 0
    L9_26 = mp
    L9_26 = L9_26.HEADERPAGE_SZ
    L9_26 = L9_26 - L7_24
    if L9_26 <= 0 then
      L10_27 = {L11_28, L1_18}
      L11_28 = L0_17
      return L10_27
    elseif L3_20 > L9_26 then
      L8_25 = L9_26
    else
      L8_25 = L3_20
    end
    L10_27 = mp
    L10_27 = L10_27.readheader
    L11_28 = L7_24
    L10_27 = L10_27(L11_28, L8_25)
    if L10_27 == nil and L10_27 == "" then
      break
    end
    L11_28 = tostring
    L11_28 = L11_28(L10_27)
    if L11_28 == nil and L11_28 == "" then
      break
    end
    for _FORV_15_ in string.gmatch(L11_28, "[%!%+%0%,%;%(%)%[%]%:%.%=%'\"\\x]") do
      L0_17 = L0_17 + 1
      if L2_19[_FORV_15_] == nil then
      else
      end
      if L1_18[L2_19[_FORV_15_]] == 0 or L1_18[L2_19[_FORV_15_]] == nil then
        L1_18[L2_19[_FORV_15_]] = 1
      else
        L1_18[L2_19[_FORV_15_]] = L1_18[L2_19[_FORV_15_]] + 1
      end
    end
  end
  return L4_21
end
BuildTokenCountHistogram = L0_0
function L0_0()
  local L0_29, L1_30, L2_31, L3_32, L4_33, L5_34, L6_35, L7_36, L8_37, L9_38, L10_39, L11_40, L12_41, L13_42, L14_43
  L0_29 = 0
  L1_30 = {}
  L2_31 = 128
  for L6_35 = 0, L4_33.HEADERPAGE_SZ, L2_31 do
    L7_36 = 0
    L8_37 = mp
    L8_37 = L8_37.HEADERPAGE_SZ
    L8_37 = L8_37 - L6_35
    if L8_37 <= 0 then
      L9_38 = {L10_39, L11_40}
      L10_39 = L0_29
      return L9_38
    elseif L2_31 > L8_37 then
      L7_36 = L8_37
    else
      L7_36 = L2_31
    end
    L9_38 = mp
    L9_38 = L9_38.readheader
    L10_39 = L6_35
    L9_38 = L9_38(L10_39, L11_40)
    if L9_38 == nil and L9_38 == "" then
      break
    end
    L10_39 = tostring
    L10_39 = L10_39(L11_40)
    if L10_39 == nil and L10_39 == "" then
      break
    end
    for L14_43 in L11_40(L12_41, L13_42) do
      L0_29 = L0_29 + 1
      if L1_30[string.len(L14_43)] == 0 or L1_30[string.len(L14_43)] == nil then
        L1_30[string.len(L14_43)] = 1
      else
        L1_30[string.len(L14_43)] = L1_30[string.len(L14_43)] + 1
      end
    end
  end
  return L3_32
end
BuildRepeatedTokenHistogram = L0_0
function L0_0()
  local L0_44, L1_45, L2_46, L3_47, L4_48, L5_49, L6_50, L7_51, L8_52, L9_53, L10_54, L11_55, L12_56, L13_57, L14_58
  L0_44 = 0
  L1_45 = {}
  L2_46 = 128
  for L6_50 = 0, L4_48.HEADERPAGE_SZ, L2_46 do
    L7_51 = 0
    L8_52 = mp
    L8_52 = L8_52.HEADERPAGE_SZ
    L8_52 = L8_52 - L6_50
    if L8_52 <= 0 then
      L9_53 = {L10_54, L11_55}
      L10_54 = L0_44
      return L9_53
    elseif L2_46 > L8_52 then
      L7_51 = L8_52
    else
      L7_51 = L2_46
    end
    L9_53 = mp
    L9_53 = L9_53.readheader
    L10_54 = L6_50
    L9_53 = L9_53(L10_54, L11_55)
    if L9_53 == nil and L9_53 == "" then
      break
    end
    L10_54 = tostring
    L10_54 = L10_54(L11_55)
    if L10_54 == nil and L10_54 == "" then
      break
    end
    for L14_58 in L11_55(L12_56, L13_57) do
      if string.len(L14_58) > 3 then
        L0_44 = L0_44 + 1
        if L1_45[string.len(L14_58)] == 0 or L1_45[string.len(L14_58)] == nil then
          L1_45[string.len(L14_58)] = 1
        else
          L1_45[string.len(L14_58)] = L1_45[string.len(L14_58)] + 1
        end
      end
    end
  end
  return L3_47
end
BuildHexadecimalHistogram = L0_0
function L0_0()
  local L0_59, L1_60, L2_61, L3_62, L4_63, L5_64, L6_65, L7_66, L8_67, L9_68, L10_69, L11_70, L12_71, L13_72, L14_73
  L0_59 = 0
  L1_60 = {}
  L2_61 = 128
  for L6_65 = 0, L4_63.HEADERPAGE_SZ, L2_61 do
    L7_66 = 0
    L8_67 = mp
    L8_67 = L8_67.HEADERPAGE_SZ
    L8_67 = L8_67 - L6_65
    if L8_67 <= 0 then
      L9_68 = {L10_69, L11_70}
      L10_69 = L0_59
      return L9_68
    elseif L2_61 > L8_67 then
      L7_66 = L8_67
    else
      L7_66 = L2_61
    end
    L9_68 = mp
    L9_68 = L9_68.readheader
    L10_69 = L6_65
    L9_68 = L9_68(L10_69, L11_70)
    if L9_68 == nil and L9_68 == "" then
      break
    end
    L10_69 = tostring
    L10_69 = L10_69(L11_70)
    if L10_69 == nil and L10_69 == "" then
      break
    end
    for L14_73 in L11_70(L12_71, L13_72) do
      if string.len(L14_73) > 3 then
        L0_59 = L0_59 + 1
        if L1_60[string.len(L14_73)] == 0 or L1_60[string.len(L14_73)] == nil then
          L1_60[string.len(L14_73)] = 1
        else
          L1_60[string.len(L14_73)] = L1_60[string.len(L14_73)] + 1
        end
      end
    end
  end
  return L3_62
end
BuildAlphaNumericHistogram = L0_0
