local L0_0, L1_1, L2_2, L3_3, L4_4
function L0_0(A0_5, A1_6)
  if 32 < string.len(A0_5) then
    return false
  end
  return 4 <= string.len(A1_6) and 1024 >= string.len(A1_6)
end
validate_research_data = L0_0
function L0_0(A0_7, A1_8, A2_9)
  local L3_10, L4_11
  L3_10 = validate_research_data
  L4_11 = A0_7
  L3_10 = L3_10(L4_11, A1_8)
  if L3_10 == false then
    L3_10 = false
    return L3_10
  end
  if A2_9 then
    L3_10 = bm
    L3_10 = L3_10.add_related_string
    L4_11 = A0_7
    L3_10(L4_11, A1_8, bm.RelatedStringBMReport)
  else
    L3_10 = "MpInternal_researchdata="
    L4_11 = L3_10
    L4_11 = L4_11 .. A0_7 .. "=" .. A1_8
    mp.set_mpattribute(L4_11)
  end
  L3_10 = true
  return L3_10
end
set_research_data = L0_0
function L0_0(...)
  local L1_13, L2_14, L3_15, L4_16, L5_17, L6_18, L7_19, L8_20, L9_21, L10_22
  L3_15 = "MpInternal_researchdata="
  L4_16 = L3_15
  L10_22 = ...
  ;({
    [5] = ...
  })[1] = L7_19
  ;({
    [5] = ...
  })[2] = L8_20
  ;({
    [5] = ...
  })[3] = L9_21
  ;({
    [5] = ...
  })[4] = L10_22
  for L8_20, L9_21 in L5_17(L6_18) do
    L10_22 = L8_20 % 2
    if L10_22 == 1 then
      L1_13 = L9_21
    else
      L2_14 = L9_21
      L10_22 = validate_research_data
      L10_22 = L10_22(L1_13, L2_14)
      if not L10_22 then
        L10_22 = false
        return L10_22
      end
      L10_22 = L1_13
      L10_22 = L10_22 .. "=" .. L2_14
      if L8_20 <= 2 then
        L4_16 = L4_16 .. L10_22
      else
        L4_16 = L4_16 .. "," .. L10_22
      end
    end
  end
  L5_17(L6_18)
  return L5_17
end
set_research_data_ex = L0_0
function L0_0()
  local L0_23, L1_24
  L0_23 = 4
  return L0_23
end
function L1_1()
  local L0_25, L1_26, L2_27, L3_28, L4_29, L5_30, L6_31, L7_32, L8_33
  L0_25 = "FTAT_STC"
  L1_26 = _UPVALUE0_
  L1_26 = L1_26()
  L2_27 = GetRollingQueue
  L3_28 = L0_25
  L2_27 = L2_27(L3_28)
  L3_28 = MpCommon
  L3_28 = L3_28.GetCurrentTimeT
  L3_28 = L3_28()
  if L2_27 == nil then
    for L7_32 = 1, L1_26 do
      L8_33 = AppendToRollingQueue
      L8_33(L0_25, L7_32, L3_28, 157680000, 300)
    end
  elseif L4_29 ~= L1_26 then
    for L8_33 in L5_30(L6_31) do
      L4_29[L2_27[L8_33].key] = true
    end
    for L8_33 = 1, L1_26 do
      if not L4_29[L8_33] then
        AppendToRollingQueue(L0_25, L8_33, L3_28, 157680000)
      end
    end
  elseif L4_29 > 94608000 then
    for L7_32 = 1, L1_26 do
      L8_33 = L2_27[L7_32]
      L8_33 = L8_33.insert_time
      AppendToRollingQueue(L0_25, L7_32, L8_33, 157680000)
    end
  end
  return
end
initRQFTAT = L1_1
function L1_1()
  return versioning.IsEnterprise() or versioning.IsServer() or versioning.IsSeville()
end
isFirstTimeATActive = L1_1
function L1_1(A0_34, A1_35, A2_36)
  local L3_37, L4_38, L5_39, L6_40
  L6_40 = "FTAT_"
  L6_40 = L6_40 .. A0_34
  L5_39, L3_37 = IsKeyInRollingQueue(L6_40 .. "_C", A2_36, true)
  if L5_39 == true then
    L3_37 = L3_37 + 1
  else
    L3_37 = 1
  end
  AppendToRollingQueue(L6_40 .. "_C", A2_36, L3_37, 157680000, 300)
  L5_39, L4_38 = IsKeyInRollingQueue(L6_40 .. "_LT", A2_36, true)
  if L5_39 == false then
    L4_38 = 0
  end
  AppendToRollingQueue(L6_40 .. "_LT", A2_36, A1_35, 157680000, 300)
  return L3_37, L4_38
end
updateToolID = L1_1
function L1_1(A0_41)
  local L1_42, L2_43
  L1_42 = {}
  L2_43 = GetRollingQueue
  L2_43 = L2_43(A0_41)
  if L2_43 == nil then
    return L1_42
  end
  for _FORV_6_ in pairs(L2_43) do
    L1_42[#L1_42 + 1] = L2_43[_FORV_6_].key
  end
  return L1_42
end
function L2_2(A0_44)
  local L1_45
  L1_45 = _UPVALUE0_
  L1_45 = L1_45(A0_44)
  if L1_45 == nil then
    return ""
  end
  return table.concat(L1_45, ",")
end
createToolsList = L2_2
function L2_2(A0_46)
  local L2_47
  while true do
    L2_47 = sigattr_tail[A0_46 - 1].attribute
    if L2_47 ~= 16389 and sigattr_tail[A0_46 - 1].utf8p1:lower() == sigattr_tail[A0_46].utf8p1:lower() then
      return L2_47
    end
    if A0_46 - 1 - 1 <= 1 then
      return nil
    end
  end
  return nil
end
function L3_3(A0_48)
  local L1_49, L2_50, L3_51, L4_52, L5_53
  L1_49 = mp
  L1_49 = L1_49.SIGATTR_LOG_SZ
  if L2_50 == "string" then
    for L5_53 = L1_49, 1, -1 do
      if sigattr_tail[L5_53].utf8p2 == A0_48 then
        return _UPVALUE0_(L5_53)
      end
    end
    return L2_50
  end
  return L2_50
end
whatEventGeneratedThisEvent = L3_3
function L3_3(A0_54, A1_55, A2_56)
  local L3_57, L4_58, L5_59, L6_60, L7_61, L8_62, L9_63, L10_64, L11_65, L12_66, L13_67, L14_68, L15_69, L16_70, L17_71, L18_72
  L3_57 = initRQFTAT
  L3_57()
  L3_57 = sysio
  L3_57 = L3_57.RegOpenKey
  L4_58 = "HKLM\\SYSTEM\\CurrentControlSet\\Control\\TimeZoneInformation"
  L3_57 = L3_57(L4_58)
  L4_58 = -1
  if L3_57 ~= nil then
    L5_59 = sysio
    L5_59 = L5_59.GetRegValueAsDword
    L6_60 = L3_57
    L7_61 = "ActiveTimeBias"
    L5_59 = L5_59(L6_60, L7_61)
    L4_58 = L5_59
    if L4_58 == nil then
      L4_58 = -1
    end
  end
  L5_59 = bm
  L5_59 = L5_59.get_current_process_startup_info
  L5_59 = L5_59()
  L6_60, L7_61 = nil, nil
  if L5_59 ~= nil then
    L8_62 = pcall
    L9_63 = MpCommon
    L9_63 = L9_63.QuerySessionInformationSession
    L10_64 = A2_56
    L11_65 = MpCommon
    L11_65 = L11_65.WTSUserName
    L9_63 = L8_62(L9_63, L10_64, L11_65)
    L7_61 = L9_63
    L6_60 = L8_62
    if not L6_60 then
      L7_61 = "UserNameError"
    end
  end
  if L7_61 ~= nil then
    L9_63 = L7_61
    L8_62 = L7_61.len
    L8_62 = L8_62(L9_63)
  elseif L8_62 == 0 then
    L7_61 = "UserNameError"
  end
  L8_62 = #L7_61
  L9_63 = mp
  L9_63 = L9_63.crc32
  L10_64 = 0
  L11_65 = L7_61
  L12_66 = 1
  L13_67 = L8_62
  L9_63 = L9_63(L10_64, L11_65, L12_66, L13_67)
  L7_61 = L9_63
  L9_63 = MpCommon
  L9_63 = L9_63.GetCurrentTimeT
  L9_63 = L9_63()
  if L9_63 == nil or L9_63 == 0 then
    L9_63 = 1604188800
  end
  L10_64 = IsKeyInRollingQueue
  L11_65 = "FTAT_STC"
  L12_66 = A0_54
  L13_67 = true
  L11_65 = L10_64(L11_65, L12_66, L13_67)
  if L10_64 == false then
    L11_65 = L9_63
  end
  L12_66, L13_67, L14_68, L15_69 = nil, nil, nil, nil
  L16_70 = updateToolID
  L17_71 = L7_61
  L18_72 = L9_63
  L17_71 = L16_70(L17_71, L18_72, A1_55)
  L13_67 = L17_71
  L12_66 = L16_70
  L16_70 = updateToolID
  L17_71 = "PC"
  L18_72 = L9_63
  L17_71 = L16_70(L17_71, L18_72, A1_55)
  L15_69 = L17_71
  L14_68 = L16_70
  L16_70 = createToolsList
  L17_71 = "FTAT_PC_C"
  L16_70 = L16_70(L17_71)
  L17_71 = A1_55
  L18_72 = "_"
  L17_71 = L17_71 .. L18_72 .. L11_65 .. "_" .. L9_63 .. "_" .. L12_66 .. "_" .. L13_67 .. "_" .. L14_68 .. "_" .. L15_69 .. "_" .. L16_70 .. "_" .. L4_58
  L18_72 = L9_63 - L13_67
  return L17_71, L18_72
end
updateFTATData = L3_3
function L3_3(A0_73, A1_74)
  local L2_75, L3_76, L4_77
  L2_75 = {}
  L3_76 = {}
  L4_77 = GetRollingQueue
  L4_77 = L4_77(A0_73)
  if L4_77 == nil then
    return {}
  end
  for _FORV_8_ in pairs(L4_77) do
    if A1_74 < L4_77[_FORV_8_].value then
      L3_76[#L3_76 + 1] = L4_77[_FORV_8_].key
    else
      L2_75[#L2_75 + 1] = L4_77[_FORV_8_].key
    end
  end
  return table.concat(L3_76, ","), table.concat(L2_75, ",")
end
function L4_4(A0_78)
  local L1_79, L2_80, L3_81, L4_82, L5_83, L6_84, L7_85, L8_86
  L1_79 = isFirstTimeATActive
  L1_79 = L1_79()
  if L1_79 == false then
    L1_79 = false
    return L1_79
  end
  L1_79 = _UPVALUE0_
  L1_79 = L1_79()
  L2_80 = MpCommon
  L2_80 = L2_80.GetCurrentTimeT
  L2_80 = L2_80()
  L3_81 = A0_78 * 60
  L3_81 = L3_81 * 60
  L3_81 = L3_81 * 24
  L3_81 = L2_80 - L3_81
  L4_82 = "FTAT_PC_LT"
  L5_83, L6_84 = nil, nil
  L7_85 = _UPVALUE1_
  L8_86 = L4_82
  L8_86 = L7_85(L8_86, L3_81)
  L5_83 = L8_86
  L6_84 = L7_85
  L7_85 = IsKeyInRollingQueue
  L8_86 = "FTAT_STC"
  L7_85 = L7_85(L8_86, L1_79, true)
  L8_86 = L2_80 - L7_85
  return L8_86 .. "_" .. L5_83 .. "_" .. L6_84
end
getToolsUsedBeforeAfter = L4_4
function L4_4(A0_87, A1_88)
  local L2_89, L3_90, L4_91, L5_92, L6_93
  for L5_92, L6_93 in L2_89(L3_90) do
    if type(L6_93) == "table" then
      if areTheseOrgsInThisCertChain(L6_93, A1_88) then
        return true
      end
    elseif type(L6_93) == "string" and tostring(L5_92) == "Organization" and A1_88[mp.utf16to8(L6_93)] then
      return true
    end
  end
  return L2_89
end
areTheseOrgsInThisCertChain = L4_4
function L4_4(A0_94)
  local L1_95
  L1_95 = mp
  L1_95 = L1_95.GetCertificateInfo
  L1_95 = L1_95()
  if L1_95 == nil then
    return false
  end
  if areTheseOrgsInThisCertChain(L1_95, A0_94) then
    return true
  end
  return false
end
areTheseOrgInFileCertChain = L4_4
function L4_4(A0_96)
  local L1_97, L2_98, L3_99, L4_100
  L1_97 = 60
  L2_98 = "MpTamperProtectionState"
  if A0_96 == nil then
    A0_96 = true
  end
  if A0_96 then
    L3_99 = MpCommon
    L3_99 = L3_99.QueryPersistContextNoPath
    L4_100 = L2_98
    L3_99 = L3_99(L4_100, "off")
    if L3_99 then
      L3_99 = false
      return L3_99
    end
    L3_99 = MpCommon
    L3_99 = L3_99.QueryPersistContextNoPath
    L4_100 = L2_98
    L3_99 = L3_99(L4_100, "on")
    if L3_99 then
      L3_99 = true
      return L3_99
    end
  end
  L3_99 = sysio
  L3_99 = L3_99.RegOpenKey
  L4_100 = "HKLM\\SOFTWARE\\Microsoft\\Windows Defender\\Features"
  L3_99 = L3_99(L4_100)
  if L3_99 then
    L4_100 = sysio
    L4_100 = L4_100.GetRegValueAsDword
    L4_100 = L4_100(L3_99, "TamperProtection")
    if L4_100 then
      if mp.bitand(L4_100, 1) == 1 then
        MpCommon.SetPersistContextNoPath(L2_98, {"on"}, L1_97)
        return L4_100
      else
        MpCommon.SetPersistContextNoPath(L2_98, {"off"}, L1_97)
        return false
      end
    end
  end
  L4_100 = false
  return L4_100
end
isTamperProtectionOn = L4_4
