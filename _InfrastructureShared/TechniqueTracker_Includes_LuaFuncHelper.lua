local L0_0, L1_1
function L0_0(A0_2, A1_3)
  if 32 < string.len(A0_2) then
    return false
  end
  return 4 <= string.len(A1_3) and 1024 >= string.len(A1_3)
end
validate_research_data = L0_0
function L0_0(A0_4, A1_5)
  local L2_6, L3_7, L4_8, L5_9, L6_10, L7_11
  if A0_4 == nil then
    return L2_6
  end
  A1_5 = A1_5 or false
  if A1_5 then
    if L2_6 ~= nil then
      L5_9 = L2_6
      L6_10 = bm
      L6_10 = L6_10.RelatedStringBMReport
      L3_7(L4_8, L5_9, L6_10)
    end
  else
    for L5_9, L6_10 in L2_6(L3_7) do
      L7_11 = string
      L7_11 = L7_11.format
      L7_11 = L7_11("MpInternal_researchdata=%s=%s", L5_9, tostring(L6_10))
      mp.set_mpattribute(L7_11)
    end
  end
  return L2_6
end
set_researchdata_fromtable = L0_0
function L0_0(A0_12, A1_13)
  return A1_13 == "" or string.sub(A0_12, -string.len(A1_13)) == A1_13
end
StringEndsWith = L0_0
function L0_0(A0_14, A1_15)
  local L2_16, L3_17, L4_18
  L2_16 = A1_15 == "" or L2_16 == A1_15
  return L2_16
end
StringStartsWith = L0_0
function L0_0(A0_19, A1_20)
  local L2_21, L3_22, L4_23, L5_24, L6_25
  if A1_20 == nil then
    A1_20 = "%s"
  end
  L2_21 = {}
  L6_25 = A1_20
  for L6_25 in L3_22(L4_23, L5_24) do
    table.insert(L2_21, L6_25)
  end
  return L2_21
end
StringSplit = L0_0
function L0_0(A0_26, A1_27)
  local L2_28, L3_29, L4_30
  L2_28 = IsTechniqueObservedGlobal
  L3_29 = A0_26
  L4_30 = true
  L3_29 = L2_28(L3_29, L4_30)
  L4_30 = 1
  if L2_28 then
    L4_30 = tonumber(L3_29) + L4_30
  end
  AppendToRollingQueue("gTechniquesTable", A0_26, L4_30, A1_27, 100, 1)
end
AddTechniqueGlobal = L0_0
function L0_0(A0_31, A1_32)
  local L2_33, L3_34, L4_35
  L2_33 = IsTacticObservedGlobal
  L3_34 = A0_31
  L4_35 = true
  L3_34 = L2_33(L3_34, L4_35)
  L4_35 = 1
  if L2_33 then
    L4_35 = tonumber(L3_34) + L4_35
  end
  AppendToRollingQueue("gTacticsTable", A0_31, L4_35, A1_32, 100, 1)
end
AddTacticGlobal = L0_0
function L0_0(A0_36, A1_37, A2_38)
  local L3_39, L4_40
  if A0_36 == nil or A0_36 == "" or A1_37 == nil or A1_37 == "" then
    return
  end
  A2_38 = A2_38 or 3600
  L3_39 = GetRealPidForScenario
  L4_40 = A0_36
  L3_39 = L3_39(L4_40)
  A0_36 = L3_39
  L3_39 = IsTechniqueObservedForPid
  L4_40 = A0_36
  L4_40 = L3_39(L4_40, A1_37)
  if L3_39 then
    L4_40 = L4_40 + 1
  else
    L4_40 = 1
  end
  AppendToRollingQueue("Tech-" .. A0_36, A1_37, L4_40, A2_38)
end
AddTechniqueForPid = L0_0
function L0_0(A0_41, A1_42, A2_43)
  local L3_44, L4_45
  if A0_41 == nil or A0_41 == "" or A1_42 == nil or A1_42 == "" then
    return
  end
  A2_43 = A2_43 or 3600
  L3_44 = GetRealPidForScenario
  L4_45 = A0_41
  L3_44 = L3_44(L4_45)
  A0_41 = L3_44
  L3_44 = IsTacticObservedForPid
  L4_45 = A0_41
  L4_45 = L3_44(L4_45, A1_42)
  if L3_44 then
    L4_45 = L4_45 + 1
  else
    L4_45 = 1
  end
  AppendToRollingQueue("Tact-" .. A0_41, A1_42, L4_45, A2_43)
end
AddTacticForPid = L0_0
function L0_0(A0_46, A1_47)
  A0_46 = GetRealPidForScenario(A0_46)
  AppendToRollingQueue("gPidsTable", A0_46, 1, A1_47, 500, 1)
end
AddPidGlobal = L0_0
function L0_0(A0_48)
  local L1_49
  if A0_48 == nil then
    L1_49 = A0_48
    return L1_49, A0_48
  end
  L1_49 = A0_48.match
  L1_49 = L1_49(A0_48, "pid:.+,ProcessStart:.+")
  if L1_49 then
    L1_49 = A0_48
    return L1_49, A0_48
  end
  L1_49 = nil
  if A0_48 == "CMDHSTR" then
    if pcall(mp.GetParentProcInfo) and pcall(mp.GetParentProcInfo) ~= nil then
      L1_49 = pcall(mp.GetParentProcInfo).ppid
    else
      L1_49 = mp.GetScannedPPID()
    end
  elseif A0_48 == "BM" then
    if pcall(bm.get_current_process_startup_info) and pcall(bm.get_current_process_startup_info) ~= nil then
      L1_49 = pcall(bm.get_current_process_startup_info).ppid
    end
  elseif A0_48 == "AMSI" then
    if pcall(mp.get_contextdata, mp.CONTEXT_DATA_AMSI_OPERATION_PPID) and pcall(mp.get_contextdata, mp.CONTEXT_DATA_AMSI_OPERATION_PPID) ~= nil then
      L1_49 = pcall(mp.get_contextdata, mp.CONTEXT_DATA_AMSI_OPERATION_PPID)
    end
  elseif A0_48 == "RTP" and pcall(mp.get_contextdata, mp.CONTEXT_DATA_PROCESS_PPID) and pcall(mp.get_contextdata, mp.CONTEXT_DATA_PROCESS_PPID) ~= nil then
    L1_49 = pcall(mp.get_contextdata, mp.CONTEXT_DATA_PROCESS_PPID)
  end
  if L1_49 == nil then
    L1_49 = A0_48
  end
  return L1_49, A0_48
end
GetRealPidForScenario = L0_0
function L0_0(A0_50)
  A0_50 = GetRealPidForScenario(A0_50)
  return GetRollingQueueAsHashTable("Tech-" .. A0_50)
end
GetTechniquesTableForPid = L0_0
function L0_0(A0_51)
  A0_51 = GetRealPidForScenario(A0_51)
  return GetRollingQueueAsHashTable("Tact-" .. A0_51)
end
GetTacticsTableForPid = L0_0
function L0_0()
  return GetRollingQueueAsHashTable("gTechniquesTable")
end
GetTechniquesTableGlobal = L0_0
function L0_0()
  return GetRollingQueueAsHashTable("gTacticsTable")
end
GetTacticsTableGlobal = L0_0
function L0_0()
  return GetRollingQueueAsHashTable("gPidsTable")
end
GetPidsTableGlobal = L0_0
function L0_0()
  if pcall(MpCommon.RollingQueueCount, "gTechniquesTable") and pcall(MpCommon.RollingQueueCount, "gTechniquesTable") ~= nil then
    return pcall(MpCommon.RollingQueueCount, "gTechniquesTable")
  end
  return 0
end
GetTechniquesCountGlobal = L0_0
function L0_0()
  if pcall(MpCommon.RollingQueueCount, "gTacticsTable") and pcall(MpCommon.RollingQueueCount, "gTacticsTable") ~= nil then
    return pcall(MpCommon.RollingQueueCount, "gTacticsTable")
  end
  return 0
end
GetTacticsCountGlobal = L0_0
function L0_0()
  if pcall(MpCommon.RollingQueueCount, "gPidsTable") and pcall(MpCommon.RollingQueueCount, "gPidsTable") ~= nil then
    return pcall(MpCommon.RollingQueueCount, "gPidsTable")
  end
  return 0
end
GetTrackedPidsCountGlobal = L0_0
function L0_0(A0_52)
  A0_52 = GetRealPidForScenario(A0_52)
  if pcall(MpCommon.RollingQueueCount, "Tech-" .. A0_52) and pcall(MpCommon.RollingQueueCount, "Tech-" .. A0_52) ~= nil then
    return pcall(MpCommon.RollingQueueCount, "Tech-" .. A0_52)
  end
  return 0
end
GetTechniquesCountForPid = L0_0
function L0_0(A0_53)
  A0_53 = GetRealPidForScenario(A0_53)
  if pcall(MpCommon.RollingQueueCount, "Tact-" .. A0_53) and pcall(MpCommon.RollingQueueCount, "Tact-" .. A0_53) ~= nil then
    return pcall(MpCommon.RollingQueueCount, "Tact-" .. A0_53)
  end
  return 0
end
GetTacticsCountForPid = L0_0
function L0_0(A0_54, A1_55)
  A1_55 = A1_55 or false
  return IsKeyInRollingQueue("gTechniquesTable", A0_54, A1_55)
end
IsTechniqueObservedGlobal = L0_0
function L0_0(A0_56, A1_57)
  A1_57 = A1_57 or false
  return IsKeyInRollingQueue("gTacticsTable", A0_56, A1_57)
end
IsTacticObservedGlobal = L0_0
function L0_0(A0_58)
  A0_58 = GetRealPidForScenario(A0_58)
  return IsKeyInRollingQueue("gPidsTable", A0_58, true)
end
IsPidObservedGlobal = L0_0
function L0_0(A0_59, A1_60, A2_61)
  if A0_59 == nil or A0_59 == "" or A1_60 == nil or A1_60 == "" then
    return false, nil
  end
  A0_59 = GetRealPidForScenario(A0_59)
  A2_61 = A2_61 or false
  return IsKeyInRollingQueue("Tech-" .. A0_59, A1_60, A2_61)
end
IsTechniqueObservedForPid = L0_0
function L0_0(A0_62, A1_63, A2_64)
  if A0_62 == nil or A0_62 == "" or A1_63 == nil or A1_63 == "" then
    return false, nil
  end
  A0_62 = GetRealPidForScenario(A0_62)
  A2_64 = A2_64 or false
  return IsKeyInRollingQueue("Tact-" .. A0_62, A1_63, A2_64)
end
IsTacticObservedForPid = L0_0
function L0_0(A0_65)
  if IsTacticObservedForPid(A0_65, "ttexclusion") or IsTechniqueObservedForPid(A0_65, "ttexclusion") then
    return true
  end
  if IsLegacyOrgMachine() then
    return true
  end
  return false
end
IsPidExcluded = L0_0
function L0_0(A0_66, A1_67, A2_68, A3_69, A4_70)
  local L5_71, L6_72, L7_73, L8_74, L9_75, L10_76, L11_77, L12_78, L13_79, L14_80, L15_81, L16_82, L17_83, L18_84
  L5_71 = IsPidObservedGlobal
  L6_72 = A0_66
  L5_71 = L5_71(L6_72)
  if L5_71 then
    L6_72 = GetTechniquesCountGlobal
    L6_72 = L6_72()
    L7_73 = GetTacticsCountGlobal
    L7_73 = L7_73()
    L8_74 = 0
    L9_75 = 0
    L10_76 = ""
    L11_77 = ""
    L12_78 = GetTacticsTableForPid
    L13_79 = A0_66
    L12_78 = L12_78(L13_79)
    L13_79 = GetTechniquesTableForPid
    L13_79 = L13_79(L14_80)
    if L12_78 == nil or L13_79 == nil then
      return L14_80
    end
    for L17_83, L18_84 in L14_80(L15_81) do
      if L17_83 ~= nil then
        L11_77 = string.format("%s%s%s", L11_77, "|", L17_83)
      end
      if L18_84 ~= nil and type(L18_84) == "number" then
        L9_75 = L9_75 + L18_84
      end
    end
    L11_77 = L14_80
    for L17_83, L18_84 in L14_80(L15_81) do
      if L17_83 ~= nil then
        L10_76 = string.format("%s%s%s", L10_76, "|", L17_83)
      end
      if L18_84 ~= nil and type(L18_84) == "number" then
        L8_74 = L8_74 + L18_84
      end
    end
    L10_76 = L14_80
    L17_83 = 1
    L18_84 = true
    if not L14_80 then
      L17_83 = 1
      L18_84 = true
    elseif L14_80 then
      return L14_80
    end
    if L14_80 == "Medium" or L14_80 == "High" then
      return L15_81
    end
    if L15_81 == "High" then
      return L16_82
    end
    L17_83 = L11_77
    L18_84 = "processinjection_target"
    if not L16_82 then
      L17_83 = L11_77
      L18_84 = "processhollowing_target"
    elseif L16_82 then
      return L16_82
    end
    L17_83 = L11_77
    L18_84 = "processinjection"
    if L16_82 then
      L17_83 = L11_77
      L18_84 = "keylog"
      if L16_82 then
        return L16_82
      end
    end
    L17_83 = L11_77
    L18_84 = "indirectcmdexec"
    if L16_82 then
      return L16_82
    end
    L17_83 = L11_77
    L18_84 = "processinjection"
    if L16_82 then
      L17_83 = "processdiscovery"
      if L16_82 then
        return L16_82
      end
    end
    L17_83 = L11_77
    L18_84 = "credentialdumping"
    if L16_82 then
      return L16_82
    end
    L17_83 = L11_77
    L18_84 = "command_control_l"
    if not L16_82 then
      L17_83 = L11_77
      L18_84 = "command_control_n"
    elseif L16_82 then
      return L16_82
    end
    L17_83 = L10_76
    L18_84 = "T1036"
    if L16_82 then
      return L16_82
    end
    L17_83 = L10_76
    L18_84 = "T1027.002"
    if L16_82 then
      return L16_82
    end
    L17_83 = L10_76
    L18_84 = "T1505.003"
    if L16_82 then
      return L16_82
    end
    L17_83 = L11_77
    L18_84 = "_malware"
    if not L16_82 then
      L17_83 = L10_76
      L18_84 = "tt-thresholdmet"
      if not L16_82 then
        L17_83 = L11_77
        L18_84 = "tt-thresholdmet"
      end
    elseif L16_82 then
      return L16_82
    end
  end
  L6_72 = false
  return L6_72
end
IsDetectionThresholdMet = L0_0
function L0_0(A0_85, A1_86, A2_87, A3_88, A4_89)
  local L5_90, L6_91, L7_92, L8_93, L9_94, L10_95, L11_96, L12_97, L13_98, L14_99, L15_100, L16_101, L17_102, L18_103, L19_104, L20_105
  L5_90 = IsPidObservedGlobal
  L6_91 = A0_85
  L5_90 = L5_90(L6_91)
  L6_91 = false
  L7_92 = 0
  if L5_90 then
    L8_93 = GetTechniquesCountGlobal
    L8_93 = L8_93()
    L9_94 = GetTacticsCountGlobal
    L9_94 = L9_94()
    L10_95 = 0
    L11_96 = 0
    L12_97 = ""
    L13_98 = ""
    L14_99 = GetTacticsTableForPid
    L15_100 = A0_85
    L14_99 = L14_99(L15_100)
    L15_100 = GetTechniquesTableForPid
    L15_100 = L15_100(L16_101)
    if L14_99 == nil or L15_100 == nil then
      return L16_101, L17_102
    end
    for L19_104, L20_105 in L16_101(L17_102) do
      if L19_104 ~= nil then
        L13_98 = string.format("%s%s%s", L13_98, "|", L19_104)
      end
      if L20_105 ~= nil and type(L20_105) == "number" then
        L11_96 = L11_96 + L20_105
      end
    end
    L13_98 = L16_101
    for L19_104, L20_105 in L16_101(L17_102) do
      if L19_104 ~= nil then
        L12_97 = string.format("%s%s%s", L12_97, "|", L19_104)
      end
      if L20_105 ~= nil and type(L20_105) == "number" then
        L10_95 = L10_95 + L20_105
      end
    end
    L12_97 = L16_101
    L19_104 = 1
    L20_105 = true
    if not L16_101 then
      L19_104 = 1
      L20_105 = true
    elseif L16_101 then
      L7_92 = L16_101
    end
    if L16_101 == "Medium" or L16_101 == "High" then
      L19_104 = 1
      L7_92 = L17_102
    end
    if L17_102 == "High" then
      L19_104 = L7_92
      L20_105 = 1
      L7_92 = L18_103
    end
    L19_104 = L13_98
    L20_105 = "processinjection_target"
    if not L18_103 then
      L19_104 = L13_98
      L20_105 = "processhollowing_target"
    elseif L18_103 then
      L19_104 = L7_92
      L20_105 = 2
      L7_92 = L18_103
    end
    L19_104 = L13_98
    L20_105 = "processinjection"
    if L18_103 then
      L19_104 = L13_98
      L20_105 = "keylog"
      if L18_103 then
        L19_104 = L7_92
        L20_105 = 4
        L7_92 = L18_103
      end
    end
    L19_104 = L13_98
    L20_105 = "indirectcmdexec"
    if L18_103 then
      L19_104 = L7_92
      L20_105 = 8
      L7_92 = L18_103
    end
    L19_104 = L13_98
    L20_105 = "processinjection"
    if L18_103 then
      L19_104 = "processdiscovery"
      if L18_103 then
        L19_104 = L7_92
        L20_105 = 16
        L7_92 = L18_103
      end
    end
    L19_104 = L13_98
    L20_105 = "credentialdumping"
    if L18_103 then
      L19_104 = L7_92
      L20_105 = 32
      L7_92 = L18_103
    end
    L19_104 = L13_98
    L20_105 = "command_control_l"
    if not L18_103 then
      L19_104 = L13_98
      L20_105 = "command_control_n"
    elseif L18_103 then
      L19_104 = L7_92
      L20_105 = 1024
      L7_92 = L18_103
    end
    L19_104 = L12_97
    L20_105 = "T1036"
    if L18_103 then
      L19_104 = L7_92
      L20_105 = 128
      L7_92 = L18_103
    end
    L19_104 = L12_97
    L20_105 = "T1027.002"
    if L18_103 then
      L19_104 = L7_92
      L20_105 = 256
      L7_92 = L18_103
    end
    L19_104 = L12_97
    L20_105 = "T1505.003"
    if L18_103 then
      L19_104 = L7_92
      L20_105 = 4096
      L7_92 = L18_103
    end
    L19_104 = L13_98
    L20_105 = "_malware"
    if not L18_103 then
      L19_104 = L12_97
      L20_105 = "tt-thresholdmet"
      if not L18_103 then
        L19_104 = L13_98
        L20_105 = "tt-thresholdmet"
      end
    elseif L18_103 then
      L19_104 = L7_92
      L20_105 = 2048
      L7_92 = L18_103
    end
  end
  if L7_92 ~= 0 then
    L6_91 = true
    L8_93 = mp
    L8_93 = L8_93.bitand
    L9_94 = L7_92
    L10_95 = 2147483648
    L8_93 = L8_93(L9_94, L10_95)
    if L8_93 ~= 0 then
      L6_91 = false
    end
  end
  L8_93 = L6_91
  L9_94 = L7_92
  return L8_93, L9_94
end
GetDetectionThresholdMetReason = L0_0
function L0_0(A0_106, A1_107, A2_108, A3_109, A4_110)
  local L5_111, L6_112, L7_113, L8_114
  L5_111 = 0
  L6_112 = true
  L7_113 = nil
  if L6_112 then
    L8_114 = GetTacticsTableForPid
    L8_114 = L8_114(A0_106)
    if L8_114 == nil or GetTechniquesTableForPid(A0_106) == nil then
      return false
    end
    if GetTaintLevelHR() == "Medium" or GetTaintLevelHR() == "High" then
      return true
    end
    if GetTaintLevelML() == "High" then
      return true
    end
    for _FORV_15_, _FORV_16_ in pairs(L8_114) do
      if _FORV_15_ ~= nil then
        if L7_113 == nil then
          L7_113 = _FORV_15_:lower()
        else
          L7_113 = L7_113 .. " | " .. _FORV_15_:lower()
        end
      end
      if _FORV_16_ ~= nil then
        L5_111 = L5_111 + _FORV_16_
      end
    end
    if L7_113 ~= nil then
      if L7_113:find("impact", 1, true) and L7_113:find("collection", 1, true) and L7_113:find("discovery", 1, true) then
        return true
      end
      if L7_113:find("execution", 1, true) and L7_113:find("persistence", 1, true) then
        return true
      end
      if L7_113:find("collection", 1, true) and L7_113:find("impact", 1, true) and (L7_113:find("credentialaccess", 1, true) or L7_113:find("execution", 1, true)) then
        return true
      end
      if L7_113:find("defenseevasion", 1, true) and L7_113:find("lateralmovement", 1, true) and L7_113:find("collection", 1, true) then
        return true
      end
      if L7_113:find("credentialaccess", 1, true) and L7_113:find("impact", 1, true) and L7_113:find("collection", 1, true) and L7_113:find("exfil", 1, true) then
        return true
      end
      if L7_113:find("accountdiscovery", 1, true) and L7_113:find("lateralmovement", 1, true) and L7_113:find("remotesystemdiscovery", 1, true) then
        return true
      end
      if L7_113:find("execution", 1, true) and L7_113:find("impact", 1, true) then
        return true
      end
      if (L7_113:find("collection", 1, true) or L7_113:find("discovery", 1, true)) and L7_113:find("exfiltration", 1, true) then
        return true
      end
    end
  end
  L8_114 = false
  return L8_114
end
IsDetectionThresholdMetLinux = L0_0
function L0_0(A0_115, A1_116, A2_117, A3_118, A4_119)
  local L5_120, L6_121, L7_122, L8_123, L9_124, L10_125
  L5_120 = 0
  L6_121 = true
  L7_122 = nil
  L8_123 = false
  L9_124 = 0
  if L6_121 then
    L10_125 = GetTacticsTableForPid
    L10_125 = L10_125(A0_115)
    if L10_125 == nil or GetTechniquesTableForPid(A0_115) == nil then
      return false, 0
    end
    if GetTaintLevelHR() == "Medium" or GetTaintLevelHR() == "High" then
      L9_124 = mp.bitor(L9_124, 1)
    end
    if GetTaintLevelML() == "High" then
      L9_124 = mp.bitor(L9_124, 1)
    end
    for _FORV_17_, _FORV_18_ in pairs(L10_125) do
      if _FORV_17_ ~= nil then
        if L7_122 == nil then
          L7_122 = _FORV_17_:lower()
        else
          L7_122 = L7_122 .. " | " .. _FORV_17_:lower()
        end
      end
      if _FORV_18_ ~= nil then
        L5_120 = L5_120 + _FORV_18_
      end
    end
    if L7_122 ~= nil then
      if L7_122:find("impact", 1, true) and L7_122:find("collection", 1, true) and L7_122:find("discovery", 1, true) then
        L9_124 = mp.bitor(L9_124, 2)
      end
      if L7_122:find("execution", 1, true) and L7_122:find("persistence", 1, true) then
        L9_124 = mp.bitor(L9_124, 4)
      end
      if L7_122:find("collection", 1, true) and L7_122:find("impact", 1, true) and (L7_122:find("credentialaccess", 1, true) or L7_122:find("execution", 1, true)) then
        L9_124 = mp.bitor(L9_124, 8)
      end
      if L7_122:find("defenseevasion", 1, true) and L7_122:find("lateralmovement", 1, true) and L7_122:find("collection", 1, true) then
        L9_124 = mp.bitor(L9_124, 16)
      end
      if L7_122:find("credentialaccess", 1, true) and L7_122:find("impact", 1, true) and L7_122:find("collection", 1, true) and L7_122:find("exfil", 1, true) then
        L9_124 = mp.bitor(L9_124, 32)
      end
      if L7_122:find("accountdiscovery", 1, true) and L7_122:find("lateralmovement", 1, true) and L7_122:find("remotesystemdiscovery", 1, true) then
        L9_124 = mp.bitor(L9_124, 64)
      end
      if L7_122:find("execution", 1, true) and L7_122:find("impact", 1, true) then
        L9_124 = mp.bitor(L9_124, 128)
      end
      if (L7_122:find("collection", 1, true) or L7_122:find("discovery", 1, true)) and L7_122:find("exfiltration", 1, true) then
        L9_124 = mp.bitor(L9_124, 256)
      end
    end
  end
  if L9_124 ~= 0 then
    L8_123 = true
  end
  L10_125 = L8_123
  return L10_125, L9_124
end
GetDetectionThresholdMetLinuxReason = L0_0
function L0_0()
  local L0_126
  if MpCommon.GetPersistContextCountNoPath("TaintedMachine") > 0 then
    if 0 < MpCommon.GetPersistContextCountNoPath("TaintedMachineHigh") then
      L0_126 = "High"
    elseif 0 < MpCommon.GetPersistContextCountNoPath("TaintedMachineMedium") then
      L0_126 = "Medium"
    elseif 0 < MpCommon.GetPersistContextCountNoPath("TaintedMachineLow") then
      L0_126 = "Low"
    end
  end
  return L0_126
end
GetTaintLevelHR = L0_0
function L0_0()
  local L0_127
  if MpCommon.GetPersistContextCountNoPath("TaintedMachine") > 0 then
    if 0 < MpCommon.GetPersistContextCountNoPath("TaintedMachineML_High") then
      L0_127 = "High"
    elseif 0 < MpCommon.GetPersistContextCountNoPath("TaintedMachineML_Medium") then
      L0_127 = "Medium"
    elseif 0 < MpCommon.GetPersistContextCountNoPath("TaintedMachineML_Low") then
      L0_127 = "Low"
    end
  end
  return L0_127
end
GetTaintLevelML = L0_0
function L0_0(A0_128, A1_129, A2_130, A3_131)
  A0_128 = GetRealPidForScenario(A0_128)
  if A0_128 ~= nil then
    A3_131 = A3_131 or 3600
    AddPidGlobal(A0_128, A3_131)
    if A1_129 ~= nil and A1_129 ~= "" and A1_129 ~= "T0000" then
      AddTechniqueForPid(A0_128, A1_129, A3_131)
      AddTechniqueGlobal(A1_129, A3_131)
    end
    if A2_130 ~= nil and A2_130 ~= "" then
      AddTacticForPid(A0_128, A2_130, A3_131)
      AddTacticGlobal(A2_130, A3_131)
    end
  end
end
AddPidSpecificTechniqueAndTactic = L0_0
function L0_0(A0_132, A1_133)
  local L2_134, L3_135, L4_136, L5_137, L6_138, L7_139, L8_140, L9_141, L10_142, L11_143
  L2_134 = GetRealPidForScenario
  L3_135 = A0_132
  L2_134 = L2_134(L3_135)
  A0_132 = L2_134
  A1_133 = A1_133 or false
  L2_134 = GetDetectionThresholdMetReason
  L3_135 = A0_132
  L3_135 = L2_134(L3_135)
  L4_136 = {}
  L4_136.ttver = "0002"
  L4_136.TrackedPid = A0_132
  L5_137 = tostring
  L6_138 = L2_134
  L5_137 = L5_137(L6_138)
  L4_136.IsThresholdMet = L5_137
  L5_137 = "000"
  L6_138 = tostring
  L7_139 = L3_135
  L6_138 = L6_138(L7_139)
  L5_137 = L5_137 .. L6_138
  L4_136.ThresholdMetReason = L5_137
  L5_137 = "000"
  L6_138 = tostring
  L7_139 = GetTrackedPidsCountGlobal
  L11_143 = L7_139()
  L6_138 = L6_138(L7_139, L8_140, L9_141, L10_142, L11_143, L7_139())
  L5_137 = L5_137 .. L6_138
  L4_136.PidsCount = L5_137
  L5_137 = GetRollingQueueKeysAsString
  L6_138 = "Tech-"
  L7_139 = A0_132
  L6_138 = L6_138 .. L7_139
  L5_137 = L5_137(L6_138)
  if L5_137 == nil then
    L6_138 = A0_132
    L7_139 = " tech table missing"
    L5_137 = L6_138 .. L7_139
  end
  L4_136.TrackedPidTechniques = L5_137
  L6_138 = GetRollingQueueKeysAsString
  L7_139 = "Tact-"
  L8_140 = A0_132
  L7_139 = L7_139 .. L8_140
  L6_138 = L6_138(L7_139)
  if L6_138 == nil then
    L7_139 = A0_132
    L8_140 = " tact table missing"
    L6_138 = L7_139 .. L8_140
  end
  L4_136.TrackedPidTactics = L6_138
  L7_139 = GetRollingQueueHashTableAsString
  L8_140 = "InheritedTech-"
  L9_141 = A0_132
  L8_140 = L8_140 .. L9_141
  L7_139 = L7_139(L8_140)
  if L7_139 ~= nil then
    L8_140 = MpCommon
    L8_140 = L8_140.Base64Encode
    L9_141 = L7_139
    L8_140 = L8_140(L9_141)
    L4_136.TrackedPidInheritedTechniques = L8_140
  end
  L8_140 = GetRollingQueueHashTableAsString
  L9_141 = "InheritedTact-"
  L10_142 = A0_132
  L9_141 = L9_141 .. L10_142
  L8_140 = L8_140(L9_141)
  if L8_140 ~= nil then
    L9_141 = MpCommon
    L9_141 = L9_141.Base64Encode
    L10_142 = L8_140
    L9_141 = L9_141(L10_142)
    L4_136.TrackedPidInheritedTactics = L9_141
  end
  L9_141 = GetRollingQueueKeysAsString
  L10_142 = "gTechniquesTable"
  L9_141 = L9_141(L10_142)
  if L9_141 == nil then
    L9_141 = "gTechniquesTable table missing"
  end
  L4_136.AllTechniques = L9_141
  L10_142 = GetRollingQueueKeysAsString
  L11_143 = "gTacticsTable"
  L10_142 = L10_142(L11_143)
  if L10_142 == nil then
    L10_142 = "gTacticsTable table missing"
  end
  L4_136.AllTactics = L10_142
  L11_143 = MpCommon
  L11_143 = L11_143.GetPersistContextCountNoPath
  L11_143 = L11_143("TaintedMachine")
  if L11_143 >= 1 then
    L4_136.IsTainted = "true"
    L11_143 = MpCommon
    L11_143 = L11_143.GetPersistContextNoPath
    L11_143 = L11_143("TaintedMachine")
    if L11_143 then
      L4_136.TaintLevel = table.concat(L11_143, "|")
    end
  else
    L4_136.IsTainted = "false"
  end
  L11_143 = set_researchdata_fromtable
  L11_143(L4_136, A1_133)
end
AddResearchData = L0_0
function L0_0(A0_144, A1_145, A2_146, A3_147)
  local L4_148, L5_149
  L4_148 = mp
  L4_148 = L4_148.ENGINEBUILD
  if L4_148 < 19900 then
    return
  end
  L4_148 = GetRealPidForScenario
  L5_149 = A0_144
  L4_148 = L4_148(L5_149)
  A3_147 = A3_147 or 10
  if L4_148 and A1_145 and A2_146 then
    L5_149 = string
    L5_149 = L5_149.lower
    L5_149 = L5_149(string.format("%s|%s|%s", L4_148, A1_145, A2_146))
    if not IsKeyInRollingQueue("tt-sigtriggers", L5_149, true) and pcall(MpCommon.BmTriggerSig, L4_148, A1_145, A2_146) then
      AppendToRollingQueue("tt-sigtriggers", L5_149, "1", A3_147)
    end
  end
end
TT_SendBMSigTrigger = L0_0
function L0_0(A0_150, A1_151, A2_152, A3_153, A4_154)
  if A0_150 == nil or A0_150 == "" or A1_151 == nil or A1_151 == "" then
    return
  end
  A0_150 = GetRealPidForScenario(A0_150)
  if A3_153 == nil then
    A3_153 = 3600
  end
  AddPidSpecificTechniqueAndTactic(A0_150, A1_151, A2_152, A3_153)
  A4_154 = A4_154 or false
  if not A4_154 then
    AddResearchData(A0_150, false)
  end
  if A0_150:sub(1, 4) == "pid:" then
    TT_SendBMSigTrigger(A0_150, A1_151, A2_152)
  end
end
TrackPidAndTechnique = L0_0
function L0_0(A0_155, A1_156, A2_157, A3_158, A4_159)
  if A0_155 == nil or A0_155 == "" or A1_156 == nil or A1_156 == "" then
    return
  end
  A0_155 = GetRealPidForScenario(A0_155)
  if A3_158 == nil then
    A3_158 = 3600
  end
  AddPidSpecificTechniqueAndTactic(A0_155, A1_156, A2_157, A3_158)
  A4_159 = A4_159 or false
  if not A4_159 then
    AddResearchData(A0_155, true)
  end
  if A0_155:sub(1, 4) == "pid:" and A2_157 ~= nil and A2_157 ~= "" then
  end
end
TrackPidAndTechniqueBM = L0_0
function L0_0(A0_160)
  local L1_161
  if A0_160 == nil then
    L1_161 = nil
    return L1_161
  end
  L1_161 = nil
  if A0_160:lower() == "cmdhstr" then
    L1_161 = mp.GetScannedPPID()
  elseif A0_160:lower() == "bm" then
    if pcall(bm.get_current_process_startup_info) and pcall(bm.get_current_process_startup_info) ~= nil then
      L1_161 = pcall(bm.get_current_process_startup_info).ppid
    end
  elseif A0_160:lower() == "amsi" then
    if pcall(mp.get_contextdata, mp.CONTEXT_DATA_AMSI_OPERATION_PPID) and pcall(mp.get_contextdata, mp.CONTEXT_DATA_AMSI_OPERATION_PPID) ~= nil then
      L1_161 = pcall(mp.get_contextdata, mp.CONTEXT_DATA_AMSI_OPERATION_PPID)
    end
  elseif A0_160:lower() == "rtp" and pcall(mp.get_contextdata, mp.CONTEXT_DATA_PROCESS_ID) and pcall(mp.get_contextdata, mp.CONTEXT_DATA_PROCESS_ID) ~= nil then
    L1_161 = pcall(mp.get_contextdata, mp.CONTEXT_DATA_PROCESS_ID)
  end
  return L1_161
end
GetProcessPpidByScenario = L0_0
function L0_0(A0_162, A1_163, A2_164, A3_165)
  if A0_162 == nil or A1_163 == nil or A2_164 == nil then
    return nil
  end
  if A1_163:sub(1, 4) ~= "pid:" then
    A1_163 = GetProcessPpidByScenario(A1_163)
  end
  if A1_163 == nil then
    return nil
  end
  if A0_162:lower() == "set" then
    if A3_165 == nil then
      A3_165 = 3600
    end
    MpCommon.AppendPersistContextNoPath(A1_163, A2_164, A3_165)
    return true
  elseif A0_162:lower() == "query" then
    return MpCommon.QueryPersistContextNoPath(A1_163, A2_164)
  else
    return nil
  end
end
TrackCustomPersistContextNameByPPID = L0_0
function L0_0(A0_166)
  local L1_167, L2_168, L3_169, L4_170, L5_171, L6_172
  if A0_166 == nil then
    return
  end
  L1_167 = false
  L2_168 = ""
  for L6_172 in L3_169(L4_170, L5_171) do
    if string.byte(L6_172) == 0 then
      if not L1_167 then
        L1_167 = true
      else
        L2_168 = L2_168 .. " "
        L1_167 = false
      end
    elseif string.byte(L6_172) >= 32 and string.byte(L6_172) <= 126 then
      L2_168 = L2_168 .. L6_172
      L1_167 = false
    else
      L1_167 = false
    end
  end
  return L2_168
end
normalize_unicode = L0_0
function L0_0(A0_173, A1_174, A2_175)
  if A0_173 == nil or A1_174 == nil then
    return false
  end
  if A2_175 == nil then
    A2_175 = 0
  end
  if not MpCommon.QueryPersistContext(A0_173, A1_174) then
    MpCommon.AppendPersistContext(A0_173, A1_174, A2_175)
    return true
  end
  return false
end
appendNotExistingFilePersistContext = L0_0
function L0_0(A0_176, A1_177, A2_178, A3_179)
  local L4_180, L5_181, L6_182, L7_183, L8_184, L9_185
  if A0_176 == nil or A1_177 == nil then
    L4_180 = false
    return L4_180
  end
  if A2_178 == nil then
    A2_178 = 0
  end
  L4_180 = false
  for L8_184, L9_185 in L5_181(L6_182) do
    if A3_179 ~= nil and mp.bitand(A3_179, 1) == 1 then
      MpCommon.AppendPersistContext(A0_176, L9_185, A2_178)
      L4_180 = true
    elseif appendNotExistingFilePersistContext(A0_176, L9_185) then
      L4_180 = true
    end
  end
  return L4_180
end
appendFilePersistContextFromList = L0_0
function L0_0(A0_186)
  if A0_186 == nil or type(A0_186) ~= "string" or #A0_186 <= 0 then
    return
  end
  if string.lower(string.format("0x%02X_0x%02X", mp.crc32(-1, A0_186, 1, #A0_186), tostring(#A0_186))) == nil or #string.lower(string.format("0x%02X_0x%02X", mp.crc32(-1, A0_186, 1, #A0_186), tostring(#A0_186))) <= 10 then
    return
  end
  return (string.lower(string.format("0x%02X_0x%02X", mp.crc32(-1, A0_186, 1, #A0_186), tostring(#A0_186))))
end
generateCustomStringHash = L0_0
function L0_0(A0_187)
  local L1_188
  if A0_187 ~= nil then
    L1_188 = type
    L1_188 = L1_188(A0_187)
    if L1_188 == "string" then
      L1_188 = #A0_187
    end
  elseif L1_188 <= 0 then
    return
  end
  L1_188 = string
  L1_188 = L1_188.lower
  L1_188 = L1_188(A0_187)
  L1_188 = string.gsub(L1_188, "\"", "")
  L1_188 = string.gsub(L1_188, " ", "")
  return generateCustomStringHash(L1_188), L1_188
end
getCustomStringHash = L0_0
function L0_0(A0_189, A1_190)
  local L2_191, L3_192, L4_193, L5_194, L6_195
  if A0_189 == nil then
    L2_191 = #A0_189
    if L2_191 <= 4 then
      return
    end
  end
  L2_191 = MpCommon
  L2_191 = L2_191.PathToWin32Path
  L3_192 = A0_189
  L2_191 = L2_191(L3_192)
  A0_189 = L2_191
  L2_191 = sysio
  L2_191 = L2_191.IsFileExists
  L3_192 = A0_189
  L2_191 = L2_191(L3_192)
  if not L2_191 then
    return
  end
  L2_191 = sysio
  L2_191 = L2_191.GetFileLastWriteTime
  L3_192 = A0_189
  L2_191 = L2_191(L3_192)
  L3_192 = sysio
  L3_192 = L3_192.GetLastResult
  L3_192 = L3_192()
  L3_192 = L3_192.Success
  if not L3_192 or L2_191 == 0 then
    return
  end
  L3_192 = L2_191 / 10000000
  L3_192 = L3_192 - 11644473600
  L4_193 = MpCommon
  L4_193 = L4_193.GetCurrentTimeT
  L4_193 = L4_193()
  L5_194 = L4_193 - L3_192
  if A1_190 ~= nil then
    L6_195 = false
    if L3_192 > L4_193 or A1_190 < L5_194 then
      L6_195 = true
    end
    return L6_195, L5_194, L3_192, L2_191, L4_193
  end
  L6_195 = L5_194
  return L6_195, L3_192, L2_191, L4_193
end
checkFileLastWriteTime = L0_0
function L0_0(A0_196, A1_197, A2_198, A3_199)
  local L4_200, L5_201, L6_202
  L4_200 = type
  L5_201 = A2_198
  L4_200 = L4_200(L5_201)
  if L4_200 ~= "number" or A2_198 <= 0 or A2_198 > 15 or A0_196 == nil or A0_196 == "" or A1_197 == nil or A1_197 == "" then
    L4_200 = false
    L5_201 = nil
    return L4_200, L5_201
  end
  L4_200 = mp
  L4_200 = L4_200.GetParentProcInfo
  L5_201 = A0_196
  L4_200 = L4_200(L5_201)
  if L4_200 ~= nil then
    L5_201 = IsTacticObservedForPid
    L6_202 = L4_200.ppid
    L6_202 = L5_201(L6_202, A1_197, A3_199)
    if L5_201 then
      return L5_201, L6_202
    else
      return IsTacticObservedForParents(L4_200.ppid, A1_197, A2_198 - 1, A3_199)
    end
  else
    L5_201 = false
    L6_202 = nil
    return L5_201, L6_202
  end
end
IsTacticObservedForParents = L0_0
function L0_0(A0_203, A1_204, A2_205, A3_206)
  local L4_207, L5_208, L6_209
  L4_207 = type
  L5_208 = A2_205
  L4_207 = L4_207(L5_208)
  if L4_207 ~= "number" or A2_205 <= 0 or A2_205 > 15 or A0_203 == nil or A0_203 == "" or A1_204 == nil or A1_204 == "" then
    L4_207 = false
    L5_208 = nil
    return L4_207, L5_208
  end
  L4_207 = mp
  L4_207 = L4_207.GetParentProcInfo
  L5_208 = A0_203
  L4_207 = L4_207(L5_208)
  if L4_207 ~= nil then
    L5_208 = IsTechniqueObservedForPid
    L6_209 = L4_207.ppid
    L6_209 = L5_208(L6_209, A1_204, A3_206)
    if L5_208 then
      return L5_208, L6_209
    else
      return IsTechniqueObservedForParents(L4_207.ppid, A1_204, A2_205 - 1, A3_206)
    end
  else
    L5_208 = false
    L6_209 = nil
    return L5_208, L6_209
  end
end
IsTechniqueObservedForParents = L0_0
function L0_0(A0_210, A1_211)
  local L2_212, L3_213, L4_214, L5_215, L6_216, L7_217, L8_218, L9_219, L10_220, L11_221, L12_222, L13_223
  if A0_210 ~= nil then
    L2_212 = #A0_210
    if not (L2_212 <= 4) and A1_211 ~= nil then
      L2_212 = #A1_211
    end
  elseif L2_212 <= 2 then
    return
  end
  L2_212 = string
  L2_212 = L2_212.sub
  L3_213 = A0_210
  L4_214 = 1
  L5_215 = 3
  L2_212 = L2_212(L3_213, L4_214, L5_215)
  if L2_212 ~= "..\\" then
    return
  end
  L2_212 = string
  L2_212 = L2_212.gsub
  L3_213 = A0_210
  L4_214 = "%.%.\\"
  L5_215 = ""
  L3_213 = L2_212(L3_213, L4_214, L5_215)
  if L3_213 == nil or L3_213 == 0 then
    return
  end
  L4_214 = string
  L4_214 = L4_214.gsub
  L5_215 = A1_211
  L6_216 = "\\"
  L7_217 = ""
  L5_215 = L4_214(L5_215, L6_216, L7_217)
  if L5_215 == nil or L5_215 == 0 then
    return
  end
  L5_215 = L5_215 + 1
  L6_216 = L5_215 - L3_213
  if L6_216 <= 0 then
    L6_216 = 1
  end
  L7_217 = string
  L7_217 = L7_217.gmatch
  L8_218 = A1_211
  L9_219 = "[^\\]+"
  L7_217 = L7_217(L8_218, L9_219)
  if L7_217 == nil then
    return
  end
  L8_218 = 1
  L9_219 = ""
  for L13_223 in L7_217, nil, nil do
    L9_219 = L9_219 .. L13_223 .. "\\"
    if L6_216 <= L8_218 then
      break
    end
    L8_218 = L8_218 + 1
  end
  if L9_219 == "" then
    return
  end
  return L10_220
end
expandRelativePath = L0_0
function L0_0(A0_224, A1_225, A2_226)
  if A0_224 == nil or A0_224 == "" or A1_225 == nil or A1_225 == "" then
    return false, nil
  end
  A0_224 = GetRealPidForScenario(A0_224)
  A2_226 = A2_226 or false
  return IsKeyInRollingQueue("InheritedTech-" .. A0_224, A1_225, A2_226)
end
IsInheritedTechniqueObservedForPid = L0_0
function L0_0(A0_227, A1_228, A2_229)
  if A0_227 == nil or A0_227 == "" or A1_228 == nil or A1_228 == "" then
    return false, nil
  end
  A0_227 = GetRealPidForScenario(A0_227)
  A2_229 = A2_229 or false
  return IsKeyInRollingQueue("InheritedTact-" .. A0_227, A1_228, A2_229)
end
IsInheritedTacticObservedForPid = L0_0
function L0_0(A0_230, A1_231, A2_232, A3_233)
  local L4_234, L5_235
  if A0_230 == nil or A0_230 == "" or A1_231 == nil or A1_231 == "" or A2_232 == nil or A2_232 == "" then
    return
  end
  A3_233 = A3_233 or 3600
  L4_234 = GetRealPidForScenario
  L5_235 = A0_230
  L4_234 = L4_234(L5_235)
  A0_230 = L4_234
  L4_234 = IsInheritedTechniqueObservedForPid
  L5_235 = A0_230
  L5_235 = L4_234(L5_235, A2_232)
  if L4_234 then
    L5_235 = L5_235 .. "," .. A1_231
  else
    L5_235 = A1_231
  end
  AppendToRollingQueue("InheritedTech-" .. A0_230, A2_232, L5_235, A3_233)
end
AddInheritedTechniqueForPid = L0_0
function L0_0(A0_236, A1_237, A2_238, A3_239)
  local L4_240, L5_241
  if A0_236 == nil or A0_236 == "" or A1_237 == nil or A1_237 == "" or A2_238 == nil or A2_238 == "" then
    return
  end
  A3_239 = A3_239 or 3600
  L4_240 = GetRealPidForScenario
  L5_241 = A0_236
  L4_240 = L4_240(L5_241)
  A0_236 = L4_240
  L4_240 = IsInheritedTacticObservedForPid
  L5_241 = A0_236
  L5_241 = L4_240(L5_241, A2_238)
  if L4_240 then
    L5_241 = L5_241 .. "," .. A1_237
  else
    L5_241 = A1_237
  end
  AppendToRollingQueue("InheritedTact-" .. A0_236, A2_238, L5_241, A3_239)
end
AddInheritedTacticForPid = L0_0
function L0_0(A0_242, A1_243, A2_244, A3_245, A4_246)
  if A0_242 == nil or A0_242 == "" or A1_243 == nil or A1_243 == "" then
    return
  end
  A0_242 = GetRealPidForScenario(A0_242)
  A4_246 = A4_246 or 3600
  if A2_244 ~= nil and A2_244 ~= "" then
    AddInheritedTechniqueForPid(A0_242, A1_243, A2_244, A4_246)
  end
  if A3_245 ~= nil and A3_245 ~= "" then
    AddInheritedTacticForPid(A0_242, A1_243, A3_245, A4_246)
  end
end
AddInheritedTechniqueAndTacticToTargetPpid = L0_0
function L0_0(A0_247, A1_248, A2_249, A3_250, A4_251, A5_252)
  local L6_253, L7_254, L8_255, L9_256, L10_257, L11_258
  L6_253 = type
  L6_253 = L6_253(L7_254)
  if L6_253 == "number" and not (A2_249 <= 0) and not (A2_249 > 15) and A0_247 ~= nil and A0_247 ~= "" and A1_248 ~= nil and A1_248 ~= "" then
    if A3_250 ~= nil then
      L6_253 = type
      L6_253 = L6_253(L7_254)
    end
  elseif L6_253 ~= "table" then
    return
  end
  if A5_252 == nil then
    A5_252 = A0_247
  end
  L6_253 = mp
  L6_253 = L6_253.GetParentProcInfo
  L6_253 = L6_253(L7_254)
  if L6_253 ~= nil then
  elseif L7_254 == nil then
    return
  end
  if A3_250 ~= nil then
    for L10_257, L11_258 in L7_254(L8_255) do
      if string.find(L6_253.image_path, L11_258, 1, true) then
        return
      end
    end
  end
  L10_257 = A1_248
  L11_258 = A4_251
  L7_254(L8_255, L9_256, L10_257, L11_258)
  L10_257 = A2_249 - 1
  L11_258 = A3_250
  L7_254(L8_255, L9_256, L10_257, L11_258, A4_251, A5_252)
end
AddTechniqueObservedToParents = L0_0
function L0_0(A0_259, A1_260, A2_261, A3_262, A4_263, A5_264)
  local L6_265, L7_266, L8_267, L9_268, L10_269, L11_270
  L6_265 = type
  L6_265 = L6_265(L7_266)
  if L6_265 == "number" and not (A2_261 <= 0) and not (A2_261 > 15) and A0_259 ~= nil and A0_259 ~= "" and A1_260 ~= nil and A1_260 ~= "" then
    if A3_262 ~= nil then
      L6_265 = type
      L6_265 = L6_265(L7_266)
    end
  elseif L6_265 ~= "table" then
    return
  end
  if A5_264 == nil then
    A5_264 = A0_259
  end
  L6_265 = mp
  L6_265 = L6_265.GetParentProcInfo
  L6_265 = L6_265(L7_266)
  if L6_265 ~= nil then
  elseif L7_266 == nil then
    return
  end
  if A3_262 ~= nil then
    for L10_269, L11_270 in L7_266(L8_267) do
      if string.find(L6_265.image_path, L11_270, 1, true) then
        return
      end
    end
  end
  L10_269 = A1_260
  L11_270 = A4_263
  L7_266(L8_267, L9_268, L10_269, L11_270)
  L10_269 = A2_261 - 1
  L11_270 = A3_262
  L7_266(L8_267, L9_268, L10_269, L11_270, A4_263, A5_264)
end
AddTacticsObservedToParents = L0_0
function L0_0(A0_271, A1_272, A2_273, A3_274, A4_275, A5_276)
  if A0_271 == nil then
    return
  end
  A5_276 = A5_276 or 3600
  if A1_272 ~= nil and A1_272 ~= "" then
    AddTechniqueObservedToParents(A0_271, A1_272, A3_274, A4_275, A5_276, A0_271)
  end
  if A2_273 ~= nil and A2_273 ~= "" then
    AddTacticsObservedToParents(A0_271, A2_273, A3_274, A4_275, A5_276, A0_271)
  end
end
AddTechniqueAndTacticToParents = L0_0
function L0_0(A0_277, A1_278, A2_279, A3_280)
  local L4_281, L5_282, L6_283, L7_284, L8_285, L9_286, L10_287, L11_288
  function L4_281(A0_289, A1_290, A2_291)
    local L3_292, L4_293
    if A0_289 == nil or A1_290 == nil or A2_291 == nil then
      return
    end
    L3_292 = "BM_M"
    L4_293 = nil
    if string.sub(A1_290, 1, #L3_292) == L3_292 then
      L4_293 = A1_290
    elseif string.match(A1_290, "^[tT][0-9][0-9][0-9][0-9]") then
      L4_293 = L3_292 .. A1_290
    end
    if L4_293 ~= nil then
      MpCommon.AppendPersistContext(A0_289, L4_293, A2_291)
    end
    return L4_293
  end
  ValidateAddTechniqueInput = L4_281
  if A0_277 ~= nil then
    L4_281 = type
    L5_282 = A0_277
    L4_281 = L4_281(L5_282)
    if L4_281 == "string" then
      L4_281 = #A0_277
    end
  elseif L4_281 <= 4 then
    return
  end
  if A1_278 == nil then
    return
  end
  if A2_279 == nil then
    A2_279 = 0
  end
  L4_281 = "FilePersistContextToMpAttribute.A"
  if A3_280 ~= nil then
    L4_281 = A3_280
  end
  L5_282 = "BM_M"
  L6_283 = nil
  if L7_284 == "string" then
    L10_287 = A2_279
    if L7_284 ~= nil then
      L6_283 = true
    end
  elseif L7_284 == "table" then
    for L10_287, L11_288 in L7_284(L8_285) do
      if ValidateAddTechniqueInput(A0_277, L11_288, A2_279) ~= nil then
        L6_283 = true
      end
    end
  else
    return
  end
  if L6_283 then
    L10_287 = A2_279
    L7_284(L8_285, L9_286, L10_287)
  end
  return L6_283
end
TrackFileAndTechnique = L0_0
function L0_0(A0_294, A1_295)
  local L2_296, L3_297, L4_298, L5_299
  if A0_294 == nil or A1_295 == nil then
    return
  end
  L3_297 = A0_294
  L2_296 = A0_294.sub
  L4_298 = 1
  L5_299 = 4
  L2_296 = L2_296(L3_297, L4_298, L5_299)
  if L2_296 ~= "pid:" then
    L2_296 = GetProcessPpidByScenario
    L3_297 = A0_294
    L2_296 = L2_296(L3_297)
    A0_294 = L2_296
  end
  L2_296 = mp
  L2_296 = L2_296.GetParentProcInfo
  L3_297 = A0_294
  L2_296 = L2_296(L3_297)
  if L2_296 == nil then
    return
  end
  L3_297 = string
  L3_297 = L3_297.lower
  L4_298 = L2_296.image_path
  L3_297 = L3_297(L4_298)
  L4_298 = string
  L4_298 = L4_298.match
  L5_299 = L3_297
  L4_298 = L4_298(L5_299, "([^\\]+)$")
  L5_299 = false
  if type(A1_295) == "table" then
    if A1_295[L4_298] ~= nil then
      L5_299 = true
    end
  elseif type(A1_295) == "string" and string.find(A1_295, L4_298, 1, true) ~= nil then
    L5_299 = true
  end
  return L5_299, L4_298
end
checkParentProcessNameFromListByPPID = L0_0
function L0_0(A0_300, A1_301, A2_302)
  local L3_303, L4_304, L5_305, L6_306, L7_307, L8_308, L9_309, L10_310, L11_311, L12_312, L13_313, L14_314
  if A2_302 < 1 or A0_300 == nil or A1_301 == nil then
    return
  end
  L4_304 = A0_300
  L3_303 = A0_300.sub
  L5_305 = 1
  L3_303 = L3_303(L4_304, L5_305, L6_306)
  if L3_303 ~= "pid:" then
    L3_303 = GetProcessPpidByScenario
    L4_304 = A0_300
    L3_303 = L3_303(L4_304)
    A0_300 = L3_303
  end
  L3_303 = mp
  L3_303 = L3_303.GetParentProcInfo
  L4_304 = A0_300
  L3_303 = L3_303(L4_304)
  if L3_303 == nil then
    return
  end
  L4_304 = {L5_305}
  L5_305 = L3_303
  L5_305 = L3_303
  for L9_309 = 1, A2_302 - 1 do
    L11_311 = L5_305.ppid
    L5_305 = L10_310
    if L5_305 == nil then
      break
    end
    L11_311 = L4_304
    L12_312 = L5_305
    L10_310(L11_311, L12_312)
  end
  for L11_311, L12_312 in L8_308(L9_309) do
    L13_313 = string
    L13_313 = L13_313.lower
    L14_314 = L12_312.image_path
    L13_313 = L13_313(L14_314)
    L14_314 = string
    L14_314 = L14_314.match
    L14_314 = L14_314(L13_313, "([^\\]+)$")
    if type(A1_301) == "table" then
      if A1_301[L14_314] ~= nil then
      end
    elseif type(A1_301) == "string" and string.find(A1_301, L14_314, 1, true) ~= nil then
    end
  end
  return L8_308, L9_309
end
checkParentProcessNameFromListByPPIDRecursive = L0_0
function L0_0()
  local L0_315, L1_316, L2_317
  L0_315 = {}
  L0_315["9e8f722b-3aa1-4069-ab9f-fc8485ca4af9"] = true
  L0_315["e333e141-0df0-4d49-8334-ce4a3d2b51cf"] = true
  L0_315["a97898e3-0e7b-4c74-9c71-cf807c8a9eea"] = true
  L0_315["ebc2ebcb-43e4-4f76-8c75-2be36bdead88"] = true
  L0_315["fff415a5-d876-4e19-af91-a430fb7df00a"] = true
  L0_315["0b20fcfe-9850-4391-aff0-75075c0dbb1a"] = true
  L0_315["3b7984a2-ac4f-44ab-aefb-e0673362ee6a"] = true
  L0_315["0b11e29f-70a9-4c86-8858-55b9f37e3020"] = true
  L0_315["194c1c9f-90d1-40c8-9ba5-7fa5a43617f9"] = true
  L0_315["c1ed41b8-316f-4206-8655-2039a416ecf1"] = true
  L0_315["831aa694-4c12-49b5-9949-a4976dc1d67d"] = true
  L0_315["43a876e1-c5f3-4bcb-be8f-a0e405839830"] = true
  L0_315["93576e31-5469-4e26-a549-3a18220dc565"] = true
  L0_315["f3b27d4b-1c32-4f7a-b947-7a67617a319f"] = true
  L0_315["331f9d38-ce30-4a30-94c1-f70ab226d869"] = true
  L0_315["19361904-3386-43a8-961b-e86764aea86b"] = true
  L0_315["b49066f2-d2ca-44c6-a197-b75bb646b99f"] = true
  L0_315["66da7d04-65b9-4832-9cc1-5e9c5af5327c"] = true
  L0_315["4529e5c0-f3aa-4be7-a530-9ab6a3735062"] = true
  L0_315["0a7b537b-2304-49bf-b124-14194e13737b"] = true
  L0_315["23dc6e7f-39ea-45a4-a5b5-86d4223d3042"] = true
  L0_315["e0413d41-3502-4db1-9039-c88af24ead06"] = true
  L0_315["4574428d-d2dc-47e6-ae9f-9e24438c82e7"] = true
  L0_315["e17a58f3-7283-464c-a452-eb64ad83ec97"] = true
  L0_315["68521817-d140-4b74-a14f-eed29027e376"] = true
  L0_315["072b5815-bdf9-4765-bc12-6d049ae4efff"] = true
  L0_315["bcb207b2-cc60-4212-9043-d12afadb0fbc"] = true
  L0_315["49892dca-c126-4dac-95e7-f5757cccc16a"] = true
  L0_315["74e61dec-e6ab-4d90-91b1-ba372a703e06"] = true
  L0_315["2257c4e1-c3b0-439a-9119-fb2d0552bb43"] = true
  L0_315["3676a7b6-192c-4f13-a3ec-b0afab8f8d2b"] = true
  L0_315["fb85f5cc-d3fa-4d69-b25f-38f49233ef37"] = true
  L0_315["665a0743-4170-4383-b6ba-28935c57d01b"] = true
  L0_315["5ee978e9-163e-4d1e-b53a-61a36ba2b18a"] = true
  L0_315["7f050e73-5a3d-4813-85af-82422a793fad"] = true
  L0_315["9cc53ef5-7b0f-4aad-879c-8c7928b10dbe"] = true
  L0_315["94deb9b0-3515-48d3-8f59-0f596d5bb090"] = true
  L0_315["56dcd088-5605-4d08-b572-a504cf4dae65"] = true
  L0_315["174fa9ca-e8dd-4ae6-bcd8-8cb2f2204f95"] = true
  L0_315["932f5304-5c67-4d54-b103-b78bf287a2c3"] = true
  L0_315["a58b13d8-a8f3-4b11-b655-2d93970f6374"] = true
  L0_315["e53d4363-125e-4fdb-9135-f4bd0b35568e"] = true
  L0_315["d7c7c745-195f-4223-9c7a-99fb420fd000"] = true
  L0_315["5027d848-972a-4730-90b8-c684eff2122c"] = true
  L0_315["45575928-30c1-4b72-8bf9-0d19cc13e52c"] = true
  L0_315["50da504b-557b-4e97-beab-4c91dfb8c56d"] = true
  L0_315["0267a949-b82d-4347-b173-660c76e30da6"] = true
  L0_315["64032f4d-626a-4a92-ae42-d693ef078591"] = true
  L0_315["4a7a5002-cd9d-4b70-ad48-f8c53f86145b"] = true
  L0_315["8645a59d-7655-442b-9c39-bffe1294f8cb"] = true
  L0_315["ba8974ba-9b35-4ad0-8413-8ac01f765545"] = true
  L0_315["336876bb-1a0d-43f5-bf32-ce406f723b5e"] = true
  L0_315["02504642-40b7-40dd-bb23-d393ce4cc043"] = true
  L0_315["6d73cb3c-f9ca-4fd1-a357-695eb0fb8d5b"] = true
  L0_315["68c53d9c-8e07-4f7e-9b50-2b70499b95d0"] = true
  L0_315["d9390c80-4dad-4cc5-80c6-5da2bd33d673"] = true
  L0_315["4338bd78-8653-4e6f-b8cf-893b6b5dca63"] = true
  L0_315["238b89a1-be2f-4939-91dd-173c76c18095"] = true
  L0_315["0112e007-42b5-4355-ac50-01f8b6f60daa"] = true
  L0_315["6d4e7515-41ef-43fc-96f8-27e2fd492a19"] = true
  L0_315["f2c2c063-9ed1-4f73-a624-1d8fca3ee19e"] = true
  L0_315["b7f116fa-c0c0-4e37-aa6d-64790ea61007"] = true
  L0_315["109420d0-e127-480e-aad0-20bb832d9709"] = true
  L0_315["e2882248-03d6-4da2-87f7-da8967cf4672"] = true
  L0_315["d06d867f-fbea-4112-aec2-a437ff86bbfd"] = true
  L0_315["0ca80520-ab29-4a0a-86ae-e4f834611541"] = true
  L0_315["209400ca-9614-45e3-a14b-070d8d339b9e"] = true
  L0_315["26496fc8-a570-42b7-be89-a82840a08cbb"] = true
  L0_315["0b23e19e-541d-4cb3-89f4-419bc9c593a6"] = true
  L0_315["d0dc6b38-53fa-4bc6-949f-6d9dbe2d0024"] = true
  L0_315["6b763308-b0e7-415e-b1d6-4ed29c8d0155"] = true
  L0_315["864d05f5-3f47-4fb0-aecd-3d75ccd0de94"] = true
  L0_315["7b5315ed-6572-462d-8284-189038da8165"] = true
  L0_315["c7d04a61-5996-49a0-ae1b-f057623509c3"] = true
  L0_315["952d5943-138b-4d48-a5f3-078526a57c5d"] = true
  L0_315["c2cc1990-5094-4e7e-ab4f-65af1c52df24"] = true
  L0_315["aea7413a-28a8-48ef-a443-4c5c27161cb9"] = true
  L0_315["0831a921-cf12-4ecf-a3a2-0aeaba8ed268"] = true
  L0_315["f74b2f70-3ee6-4410-aca1-fa7f6696907a"] = true
  L0_315["fcfb1e78-be1a-45a2-b166-1e6c088ab4df"] = true
  L0_315["9d0004e6-2aeb-46ed-ac66-42719249fbfd"] = true
  L0_315["9e7cdd29-13c8-42c6-b852-6ad49cb47be6"] = true
  L0_315["7978aa21-cbb0-431f-8048-b6fe6a372187"] = true
  L0_315["51401eaf-db7b-410e-9830-aaf6170095d1"] = true
  L0_315["e8869022-0cda-47b4-98a0-2e481fa8bb39"] = true
  L0_315["9e2558e3-1b29-4bb1-9aa9-00f0bbf7df7a"] = true
  L0_315["229ff4d6-9334-4f5b-a766-b89c5cd7493a"] = true
  L0_315["48aa7ccc-e241-4c9c-8c74-2f60aac9f1af"] = true
  L0_315["e6d6bc19-a278-42e4-a2c9-de0dc3107cb1"] = true
  L0_315["e338937b-e3b8-4023-b9df-48372faa73b1"] = true
  L0_315["efa9c680-5281-4eeb-8760-fbe4a02c1cdf"] = true
  L0_315["a36f0250-09a4-4a6e-afc8-146c8d0f2523"] = true
  L0_315["2fb7ef2c-b321-471f-8f3f-def24ce84c96"] = true
  L0_315["8c450d96-3c8c-4fd7-b212-b194b86aeb0b"] = true
  L0_315["6aafad28-3462-4c54-9fa2-05525d654885"] = true
  L0_315["d7d1b4c2-d239-42be-aff7-f77bf22bc50a"] = true
  L0_315["84da20cd-3dad-4d27-b1a1-e4c2da9fe3de"] = true
  L0_315["d8c1a97c-1989-47f1-bad7-f61fc9fec10f"] = true
  L0_315["17c4f810-b36a-4b9b-b522-6ffa44933865"] = true
  L0_315["bf4cd6de-a593-46de-8705-e89a98a1a51b"] = true
  L0_315["c14ea10d-54bf-42d7-848c-cc9c895f8a0c"] = true
  L0_315["26b0eb5d-5020-4a63-b60f-16cabf0b5f50"] = true
  L0_315["f42f4b2b-f13a-4c8b-881a-6f1ffb1aa266"] = true
  L0_315["f11c8ce9-2021-4261-b39b-a1b99ca660d4"] = true
  L0_315["cdd251fe-9ff1-4da0-82f8-b2f559040782"] = true
  L0_315["0eb1e5d9-3dd3-4038-833e-834da63e8625"] = true
  L0_315["692555dd-b6cc-468f-9b4e-951f039ad383"] = true
  L0_315["06c1f48d-d514-415e-b385-713d1283a52d"] = true
  L0_315["1fa3fe7c-5db3-4537-9622-d1636572a18d"] = true
  L0_315["f16bd8a4-0f46-4633-aaae-048665ff9d56"] = true
  L0_315["207f432c-cb0c-483d-b407-2769b035f309"] = true
  L0_315["760925bc-cf36-40b7-bb44-c784fd7220c7"] = true
  L0_315["7742aae5-2519-4ec1-98e5-56c231438f79"] = true
  L0_315["629c1926-47fd-4a94-b2db-1f69647460ff"] = true
  L0_315["2a0e6866-eb55-4558-a3e6-9946ac41f870"] = true
  L0_315["29a97a64-bd43-4ce6-aaea-3982b1542e93"] = true
  L0_315["1e3b04c1-46c0-43e2-b456-d02c67cbfb6b"] = true
  L0_315["72c339fc-1375-4814-a4e3-f7fb7e8c8cf1"] = true
  L0_315["6b2d7646-e0df-42db-b5ee-4e228e0d6488"] = true
  L0_315["863e9bf6-e7c5-47e6-a63e-f94ef9f6ebe0"] = true
  L0_315["a62a1460-a7bd-4d81-87e4-f459245de4ad"] = true
  L0_315["bb58c89e-34d4-48eb-b965-8990bfab8d0f"] = true
  L0_315["fd0c1195-045d-48bf-92fc-0f241e525c3d"] = true
  L0_315["717551f8-5e59-45fe-aebe-eb3abd64cfec"] = true
  L0_315["7d32b9ed-c15f-486b-95bb-125216f5f7e7"] = true
  L0_315["a1984def-d4e6-476f-895f-6a6837704502"] = true
  L0_315["7eaf2863-7a12-4d95-8674-96407f926580"] = true
  L0_315["e89ae3b9-fa0c-43b2-b94a-61910e07d57d"] = true
  L0_315["583ad211-3e4b-4b8d-a903-9ef1cdfd8ff7"] = true
  L0_315["d9a18c49-7d30-4a5a-b58d-a0d124625781"] = true
  L0_315["df391576-f230-45b2-8d4f-03c3bacfabdd"] = true
  L0_315["52709bd7-7299-41a7-8b26-a0f6f80e1828"] = true
  L0_315["d884ee3c-20ae-4fee-b7be-719717882a61"] = true
  L0_315["89ece62e-abcc-49f3-9493-2e960aeddf09"] = true
  L0_315["7682190b-f1a4-494b-8bce-8854ab1f30ed"] = true
  L0_315["24a2479a-cecb-4c12-b83d-d5d6bc7d5c9a"] = true
  L0_315["7b003a1e-32d8-4d0c-b89e-b3f830ef9298"] = true
  L0_315["d33f1674-ec6e-4d30-9580-0f3a7fe9192d"] = true
  L0_315["482e5bc7-e3a3-470d-90df-5ae60e66de63"] = true
  L0_315["2fd18d75-7637-46c5-a38a-6fa157c323cd"] = true
  L0_315["dd03a6fe-556b-4162-aba3-1b967b71505c"] = true
  L0_315["a449ec79-829f-4a14-8ed4-c46d20cf7e98"] = true
  L0_315["73194067-7f1f-4f59-9a91-c513f9674595"] = true
  L0_315["142c86bb-2ee0-417d-8ebd-798e1b9168f1"] = true
  L0_315["bcdb10c5-56eb-47f4-a6b5-6c4b2dbeb995"] = true
  L0_315["557ac93d-2be7-43a5-a6a4-c58541c95d17"] = true
  L0_315["8eaddf99-40ac-499c-96bf-3f88d9729ed8"] = true
  L0_315["772b3e06-dce8-4c91-b82a-eb416497d1de"] = true
  L0_315["cc391f9b-f27c-41cb-ba4f-15e91c636b19"] = true
  L0_315["01fe0665-1ce5-4583-bafe-f2bf8a6a73d0"] = true
  L0_315["d5d90bec-2758-42d0-bf56-02d956bf135c"] = true
  L0_315["1bf8c75c-9326-4e7e-9dd3-5c1892c0ffc3"] = true
  L0_315["b0272ed6-629f-42e9-bef5-3b879cf44196"] = true
  L0_315["40a6c58e-df9e-46a2-b702-2f0e11c8470b"] = true
  L0_315["c0bd6124-45c1-4996-924c-46167a59a818"] = true
  L0_315["d3e3a858-f780-4d2c-b8e8-22d79d916ec1"] = true
  L0_315["4ade8f48-1ef2-47f8-b554-daacc40fd518"] = true
  L0_315["e3186a6e-fb5c-43b4-b5be-3d1ee0ebf674"] = true
  L0_315["c2773dc2-bddd-44a8-b797-e12e0e64cb8e"] = true
  L0_315["9022e75e-dfe8-4dcb-bd7a-df2a8168ac8d"] = true
  L0_315["277894f2-d95f-41b8-b7ac-9b9bc223031c"] = true
  L0_315["1b9d508b-eb79-4d91-9f66-dadb514ab39c"] = true
  L0_315["03812f4b-e4df-4e71-a7e9-02e02301c4b1"] = true
  L0_315["922ad644-d59b-4338-a818-0d6314a78536"] = true
  L0_315["f626ea2f-6a93-4850-bfa7-9018adb65582"] = true
  L0_315["86486b45-9fab-4b60-8ff6-d5477783a825"] = true
  L0_315["53e28208-6aac-4f9b-8d60-f4a9e05c8774"] = true
  L0_315["4cbb9f77-ea9f-41a0-b52a-960ac2dc5f01"] = true
  L0_315["c85a1588-d8b9-4c80-83a0-d6a87be9b712"] = true
  L0_315["ac94ef0a-20cd-43aa-8924-6bd156ecd6f0"] = true
  L0_315["27823e87-5194-40fa-a692-e3aefa2faa16"] = true
  L0_315["83d70c4c-fcb9-4de9-9880-2c34b95f0439"] = true
  L0_315["187d8278-def1-4813-8a1d-3614e9fcdbb4"] = true
  L0_315["e2741811-7cad-4941-a6d6-a090d7a11253"] = true
  L0_315["a9e4e1ae-044e-4b18-85ba-b1e40d43b511"] = true
  L0_315["f576af69-ad0b-4fef-ba5f-33a21773df43"] = true
  L0_315["8081f7dc-c79d-415d-8a14-dda42304d1a4"] = true
  L0_315["d148c7f3-45f0-4a78-8647-b46b2cac7b64"] = true
  L0_315["02781b2f-3388-4de3-ac1e-34d8a69b4b9d"] = true
  L0_315["a10a291b-4384-4161-98de-81e52f69df88"] = true
  L0_315["c31b3172-0a24-439d-9289-19a636ca8084"] = true
  L0_315["e5b09fc4-d1d9-42ff-a826-91792c600b87"] = true
  L0_315["f011ea84-bfc4-4e3a-b313-2eb3519586ec"] = true
  L0_315["d79e04ae-7499-4740-8bfa-a871fae7f415"] = true
  L0_315["0a22f1df-85ef-4b8e-ad38-641b33651e9d"] = true
  L0_315["fa9b0987-a412-4c68-9624-0909df6ee8c1"] = true
  L0_315["5df1c174-1f0f-4a02-b449-e1fc85d2370a"] = true
  L0_315["ec1154b2-d473-41a0-b914-d27b2bf64ac8"] = true
  L0_315["de8ad6e8-f9f2-45f4-b7dd-be2fda319016"] = true
  L0_315["e9cf8e43-27d7-47a9-a79d-2e04141762a7"] = true
  L0_315["50b7f255-6811-4f15-80ac-ffbab20c5878"] = true
  L0_315["551a8a43-bd4f-4ee0-82ac-0a3336533959"] = true
  L0_315["ae71b458-f29f-4887-9204-d01d649088bb"] = true
  L0_315["ecb93044-1c56-489a-a5cd-7a5acfbf53d5"] = true
  L0_315["5a324dde-dcb5-4e3a-b2c1-1fdc6c60d48e"] = true
  L0_315["a6454b24-1b9a-4dc0-974b-c3fe4bf71f2a"] = true
  L0_315["b001a172-4636-4058-82a4-88803b90eb08"] = true
  L0_315["67bad259-d464-44e7-b65c-83905665dd84"] = true
  L0_315["2a4e6c81-1a1e-4bee-9c8a-a7ac7b9e8d9e"] = true
  L0_315["457cf4d7-3847-4e71-9140-436a62db100c"] = true
  L0_315["b9d143cb-d802-43bb-a820-9790c501e286"] = true
  L0_315["07aebed2-fa9b-4da3-bde1-a4e53168030f"] = true
  L0_315["88598bde-cc7f-42cd-b32d-5423c5faf3ba"] = true
  L0_315["c7ec637c-878a-4f01-8c2c-b5cd6da7b836"] = true
  L0_315["1f14b09f-9477-4311-8aa0-4b103e996cdb"] = true
  L0_315["88409457-5141-4c6a-9654-386e5f9dfc7a"] = true
  L0_315["d45a1e7f-069a-44ce-863d-996b3afc8a32"] = true
  L0_315["b609c345-933c-4cfd-9dbf-4923a6e25f73"] = true
  L0_315["cf12250b-0606-4ccb-886a-0938c73de778"] = true
  L0_315["f3588a11-f071-4990-91be-1f99e816f9b6"] = true
  L0_315["b423ea88-8ed1-4b93-a7bd-04d80eb90ee1"] = true
  L0_315["73604805-290b-4930-b64d-c10694aca30c"] = true
  L0_315["da31a007-6033-43a1-bbc4-566981c87dbd"] = true
  L0_315["6c88703a-ff48-419b-a8f0-42effae4881b"] = true
  L0_315["81ffcd20-4c13-4353-94d6-885c1c96f4a1"] = true
  L0_315["a3906bc6-a3b6-4e49-bd0f-c0bff3e648e8"] = true
  L0_315["95034fa2-fe1f-489d-8ecc-827deb470cec"] = true
  L0_315["34f75caf-f95c-4149-bb5c-091730d4ade3"] = true
  L0_315["68420a91-f498-481c-9dc1-f957f15fcc65"] = true
  L0_315["efa6410a-b0a6-40be-9b26-69e397f22dd4"] = true
  L0_315["73e3f0fb-cebd-4d0d-b0a3-b82bcd7d7684"] = true
  L0_315["1ef3488a-db57-4847-abb5-a5b3aee8f942"] = true
  L0_315["367f773d-1bd7-4b11-9e2d-14248dce10e7"] = true
  L0_315["0ac1bd10-462e-43ba-9740-f12e7ba862ce"] = true
  L0_315["0ca6e27d-1eff-4640-af51-f60da7b266e0"] = true
  L0_315["e0c79e35-7c39-49f6-8650-edcc69aaba61"] = true
  L0_315["078d14d5-bba0-4c1e-86ea-fe726b17aa59"] = true
  L0_315["de48c3c7-1162-479d-b727-b9a7a1f27ebb"] = true
  L0_315["9f9ad922-1c9b-4b26-a2a7-b8fe2ce243b1"] = true
  L0_315["fa21229b-8de2-4e42-8176-23518d5fee8e"] = true
  L0_315["00767538-3aeb-47f5-b21e-068eaa2d3585"] = true
  L0_315["cda6a59a-bdd7-4269-a89a-cfe0cc035844"] = true
  L0_315["e0f54a9a-e7c7-4139-a528-7e616a808425"] = true
  L0_315["1cbdbd86-9676-4a69-8266-75550389e512"] = true
  L0_315["5240d2ad-529b-4ff2-be61-24c22e2dc223"] = true
  L0_315["9508acec-64bb-4c8b-b777-e4623ed552c4"] = true
  L0_315["2baef0fb-732b-48be-8b05-8378c32b3863"] = true
  L0_315["ec086568-3b10-43b7-acf7-4a2822fc8663"] = true
  L0_315["c9093900-b1d3-42c7-808b-5b7e0da66ca4"] = true
  L0_315["a3830578-0653-45ea-9095-97da11450d60"] = true
  L0_315["5ad249ba-02d7-4358-8475-a9c880d5ac2e"] = true
  L0_315["7c219fe2-6478-45bc-b1b3-5c6e782bdb91"] = true
  L0_315["3930f511-4397-44c1-aa4e-35bfc85b3412"] = true
  L0_315["9c692ae1-ba89-46b4-9917-6d9a4cbb12b3"] = true
  L0_315["f562fd84-a462-4425-a835-761be8c9d403"] = true
  L0_315["abae58f7-d355-46e7-9be3-c37a9b70bb5a"] = true
  L0_315["e18a8e9d-0168-4175-9f80-8886b3cd1316"] = true
  L0_315["083d3fb1-ce12-4ba4-ae1d-8efd37e2c0f4"] = true
  L0_315["5e25bb3b-ef5e-4757-97ca-7187daf43243"] = true
  L0_315["49739652-cc07-49c3-8b31-0c7eb0d0f4dc"] = true
  L0_315["add9e0a6-9239-4ceb-ac67-c7e9358f58e3"] = true
  L0_315["dd8fc33b-7a0f-4243-a4fa-5df4600bfcb6"] = true
  L0_315["d60f87ec-db7d-4372-bc31-c770b7382f93"] = true
  L0_315["f35d5ad5-45af-41b0-9d28-0f73e845187b"] = true
  L1_316 = true
  L0_315["1cf3c410-ef90-4f2d-b20d-a56b16de0e83"] = L1_316
  L1_316 = "090b3ee2-3ac6-46b9-ba96-7a3b8a81cd1f"
  L2_317 = true
  L0_315[L1_316] = L2_317
  L1_316 = "cfca059b-1611-4471-b00e-6670b6cc60ca"
  L2_317 = true
  L0_315[L1_316] = L2_317
  L1_316 = "c677c28d-2c94-49ef-a250-5099ed00cea8"
  L2_317 = true
  L0_315[L1_316] = L2_317
  L1_316 = "7d8df643-d167-4f22-bb7b-512e3fdbb275"
  L2_317 = true
  L0_315[L1_316] = L2_317
  L1_316 = "46449c61-d6a2-45fa-8851-5fa8a46d5ed2"
  L2_317 = true
  L0_315[L1_316] = L2_317
  L1_316 = "40222833-e511-47af-9324-40c4531ba777"
  L2_317 = true
  L0_315[L1_316] = L2_317
  L1_316 = "6d219195-ecf9-401b-9892-3568b7ee1833"
  L2_317 = true
  L0_315[L1_316] = L2_317
  L1_316 = "27d074db-bf2f-4c3d-a19d-498603494a51"
  L2_317 = true
  L0_315[L1_316] = L2_317
  L1_316 = "e0c103d7-e635-4e0e-b800-9b31892842f4"
  L2_317 = true
  L0_315[L1_316] = L2_317
  L1_316 = "e9323610-6354-4b09-a4aa-2307494bba43"
  L2_317 = true
  L0_315[L1_316] = L2_317
  L1_316 = versioning
  L2_317 = "GetOrgID"
  L1_316 = L1_316[L2_317]
  L1_316 = L1_316()
  L2_317 = false
  if L1_316 ~= nil and L0_315[L1_316] == true then
    L2_317 = true
  end
  return L2_317, L1_316
end
IsLegacyOrgMachine = L0_0
function L0_0(A0_318)
  local L1_319, L2_320, L3_321
  L1_319 = {}
  L1_319["cmd.exe"] = true
  L1_319["powershell.exe"] = true
  L1_319["wscript.exe"] = true
  L1_319["cscript.exe"] = true
  L1_319["mshta.exe"] = true
  L1_319["wmic.exe"] = true
  L1_319["bitsadmin.exe"] = true
  L2_320 = string
  L2_320 = L2_320.match
  L3_321 = A0_318
  L2_320 = L2_320(L3_321, "([^\\]+)$")
  L3_321 = false
  if L1_319[L2_320] then
    L3_321 = true
  end
  return L3_321, L2_320
end
isLolbinFilename = L0_0
function L0_0(A0_322)
  local L1_323
  L1_323 = {
    "\\system32\\cmd.exe",
    "\\system32\\windowspowershell\\v1.0\\powershell.exe",
    "\\system32\\wscript.exe",
    "\\system32\\cscript.exe",
    "\\system32\\mshta.exe",
    "\\system32\\wbem\\wmic.exe",
    "\\system32\\bitsadmin.exe",
    "\\system32\\mshta.exe",
    "\\system32\\rundll32.exe",
    "\\system32\\svchost.exe",
    "\\syswow64\\svchost.exe",
    "\\system32\\services.exe",
    "\\syswow64\\services.exe",
    "\\system32\\reg.exe",
    "\\windows\\regedit.exe",
    "\\system32\\userinit.exe"
  }
  for _FORV_5_, _FORV_6_ in ipairs(L1_323) do
    if string.sub(A0_322, -#_FORV_6_) == _FORV_6_ then
      return true
    end
  end
  return false
end
isLolbinFile = L0_0
function L0_0(A0_324, A1_325, A2_326, A3_327)
  local L4_328, L5_329, L6_330, L7_331, L8_332, L9_333, L10_334, L11_335, L12_336, L13_337
  function L4_328(A0_338)
    local L1_339
    if A0_338 ~= nil then
      L1_339 = #A0_338
    elseif L1_339 <= 3 then
      return
    end
    L1_339 = string
    L1_339 = L1_339.lower
    L1_339 = L1_339(A0_338)
    if string.sub(L1_339, 1, 1) == "t" then
      return A0_338
    elseif string.sub(L1_339, 1, #"bm_m") == "bm_m" then
      return string.sub(A0_338, #"bm_m" + 1, #A0_338)
    end
    return
  end
  validateTechnique = L4_328
  if A0_324 ~= nil then
    L4_328 = type
    L5_329 = A0_324
    L4_328 = L4_328(L5_329)
    if L4_328 == "string" then
      L4_328 = #A0_324
    end
  elseif L4_328 <= 1 or A1_325 == nil then
    return
  end
  if A2_326 == nil then
    A2_326 = 0
  end
  L4_328 = "CommandLineCustomHash"
  if A3_327 ~= nil then
    L4_328 = A3_327
  end
  L5_329 = getCustomStringHash
  L6_330 = A0_324
  L5_329 = L5_329(L6_330)
  if L5_329 == nil then
    return
  end
  L6_330 = L4_328
  L7_331 = ":"
  L6_330 = L6_330 .. L7_331 .. L8_332
  L7_331 = false
  if L8_332 == "string" then
    if L8_332 ~= nil then
      L11_335 = L8_332
      L12_336 = A2_326
      L9_333(L10_334, L11_335, L12_336)
      L7_331 = true
    end
  elseif L8_332 == "table" then
    for L11_335, L12_336 in L8_332(L9_333) do
      L13_337 = validateTechnique
      L13_337 = L13_337(L12_336)
      if L13_337 ~= nil then
        MpCommon.AppendPersistContextNoPath(L6_330, L13_337, A2_326)
        L7_331 = true
      end
    end
  end
  return L7_331
end
TrackCommandLineAndTechniqueMain = L0_0
function L0_0(A0_340, A1_341, A2_342, A3_343, A4_344)
  local L5_345, L6_346, L7_347
  if A0_340 ~= nil then
    L5_345 = type
    L6_346 = A0_340
    L5_345 = L5_345(L6_346)
    if L5_345 == "string" then
      L5_345 = #A0_340
    end
  elseif L5_345 <= 1 or A1_341 == nil then
    return
  end
  if A4_344 == nil then
    A4_344 = true
  end
  L5_345, L6_346 = nil, nil
  L7_347 = TrackCommandLineAndTechniqueMain
  L7_347 = L7_347(A0_340, A1_341, A2_342, A3_343)
  L5_345 = L7_347
  if L5_345 == true then
    L7_347 = TrackCommandLineAndTechniqueMain
    L7_347(A0_340, "T0000:track_cmdline", A2_342, A3_343)
  end
  L7_347 = resolve_mainbinary_from_commandline
  L7_347 = L7_347(A0_340)
  if A4_344 == true and L7_347(A0_340) == true then
    L6_346 = TrackCommandLineAndTechniqueMain(L7_347, A1_341, A2_342, A3_343)
    if L6_346 == true then
      TrackCommandLineAndTechniqueMain(L7_347, "T0000:track_cmdline", A2_342, A3_343)
    end
  end
  return L5_345, L6_346
end
TrackCommandLineAndTechnique = L0_0
function L0_0(A0_348)
  local L1_349, L2_350
  if A0_348 ~= nil then
    L1_349 = #A0_348
  elseif L1_349 <= 1 then
    return
  end
  L1_349 = {}
  L1_349.cmd = "%windir%\\system32\\cmd.exe"
  L1_349.powershell = "%windir%\\system32\\windowspowershell\\v1.0\\powershell.exe"
  L1_349.wscript = "%windir%\\system32\\wscript.exe"
  L1_349.cscript = "%windir%\\system32\\cscript.exe"
  L1_349.mshta = "%windir%\\system32\\mshta.exe"
  L1_349.wmic = "%windir%\\system32\\wbem\\wmic.exe"
  L1_349.bitsadmin = "%windir%\\system32\\bitsadmin.exe"
  L1_349.rundll32 = "%windir%\\system32\\rundll32.exe"
  L1_349.svchost = "%windir%\\system32\\svchost.exe"
  L1_349.services = "%windir%\\system32\\services.exe"
  L1_349.reg = "%windir%\\system32\\reg.exe"
  L1_349.regsvr32 = "%windir%\\system32\\regsvr32.exe"
  L1_349.regedit = "%windir%\\regedit.exe"
  L1_349.schtasks = "%windir%\\system32\\schtasks.exe"
  L1_349["%comspec%"] = "%windir%\\system32\\cmd.exe"
  L2_350 = #A0_348
  if L2_350 > 4 then
    L2_350 = string
    L2_350 = L2_350.sub
    L2_350 = L2_350(A0_348, -4)
    if L2_350 == ".exe" then
      L2_350 = string
      L2_350 = L2_350.sub
      L2_350 = L2_350(A0_348, 1, #A0_348 - 4)
      A0_348 = L2_350
    end
  end
  L2_350 = string
  L2_350 = L2_350.lower
  L2_350 = L2_350(A0_348)
  A0_348 = L2_350
  L2_350 = L1_349[A0_348]
  if L2_350 ~= nil then
    L2_350 = mp.ContextualExpandEnvironmentVariables(L2_350)
  end
  return L2_350
end
resolve_command_fullpath = L0_0
function L0_0(A0_351)
  local L1_352, L2_353, L3_354
  if A0_351 ~= nil then
    L1_352 = #A0_351
    if not (L1_352 <= 4) then
      L1_352 = string
      L1_352 = L1_352.sub
      L2_353 = A0_351
      L3_354 = 1
      L1_352 = L1_352(L2_353, L3_354, 2)
      if L1_352 ~= "\\\\" then
        L1_352 = string
        L1_352 = L1_352.sub
        L2_353 = A0_351
        L3_354 = 2
        L1_352 = L1_352(L2_353, L3_354, 3)
        if L1_352 ~= ":\\" then
          L1_352 = string
          L1_352 = L1_352.find
          L2_353 = A0_351
          L3_354 = " "
          L1_352 = L1_352(L2_353, L3_354, 1, true)
        end
      end
    end
  elseif L1_352 == nil then
    L1_352 = A0_351
    L2_353 = false
    return L1_352, L2_353
  end
  L1_352 = string
  L1_352 = L1_352.match
  L2_353 = A0_351
  L3_354 = "^(.-)%s"
  L1_352 = L1_352(L2_353, L3_354)
  if L1_352 == nil then
    L2_353 = A0_351
    L3_354 = false
    return L2_353, L3_354
  end
  L2_353 = resolve_command_fullpath
  L3_354 = L1_352
  L2_353 = L2_353(L3_354)
  if L2_353 == nil then
    L3_354 = A0_351
    return L3_354, false
  end
  L3_354 = L2_353
  L3_354 = L3_354 .. string.sub(A0_351, #L1_352 + 1, #A0_351)
  return L3_354, true
end
resolve_mainbinary_from_commandline = L0_0
function L0_0(A0_355, A1_356)
  local L2_357, L3_358, L4_359
  if A0_355 == nil then
    return
  end
  L2_357 = "CommandLineCustomHash"
  if A1_356 ~= nil then
    L2_357 = A1_356
  end
  L3_358 = getCustomStringHash
  L4_359 = A0_355
  L3_358 = L3_358(L4_359)
  if L3_358 == nil then
    return
  end
  L4_359 = L2_357
  L4_359 = L4_359 .. ":" .. L3_358
  if MpCommon.GetPersistContextCountNoPath(L4_359) >= 1 then
    return MpCommon.GetPersistContextNoPath(L4_359)
  end
  return
end
GetTechniquesFromTrackedCommandLine = L0_0
function L0_0(A0_360, A1_361, A2_362)
  local L3_363, L4_364, L5_365, L6_366
  if A0_360 == nil then
    return
  end
  if A2_362 == nil then
    A2_362 = true
  end
  L3_363 = GetTechniquesFromTrackedCommandLine
  L4_364 = A0_360
  L5_365 = A1_361
  L3_363 = L3_363(L4_364, L5_365)
  if L3_363 ~= nil then
    L4_364 = true
    L5_365 = L3_363
    L6_366 = A0_360
    return L4_364, L5_365, L6_366
  end
  L4_364 = resolve_mainbinary_from_commandline
  L5_365 = A0_360
  L5_365 = L4_364(L5_365)
  if A2_362 == true and L5_365 == true then
    L6_366 = GetTechniquesFromTrackedCommandLine
    L6_366 = L6_366(L4_364, A1_361)
    if L6_366 ~= nil then
      return true, L6_366, L4_364
    end
  end
  L6_366 = false
  return L6_366
end
IsCommandLineTracked = L0_0
function L0_0(A0_367, A1_368, A2_369, A3_370)
  local L4_371, L5_372, L6_373, L7_374, L8_375, L9_376
  function L4_371(A0_377, A1_378)
    local L2_379, L3_380, L4_381, L5_382, L6_383, L7_384, L8_385
    if A0_377 ~= nil and A1_378 ~= nil then
      L2_379 = type
      L2_379 = L2_379(L3_380)
    elseif L2_379 ~= "table" then
      return
    end
    L2_379 = string
    L2_379 = L2_379.lower
    L2_379 = L2_379(L3_380)
    for L6_383, L7_384 in L3_380(L4_381) do
      L8_385 = string
      L8_385 = L8_385.lower
      L8_385 = L8_385(L7_384)
      if string.find(L8_385, L2_379, 1, true) then
        return true, L7_384
      end
    end
    return L3_380
  end
  FindStringInTable = L4_371
  if A0_367 == nil or A1_368 == nil then
    return
  end
  if A3_370 == nil then
    A3_370 = true
  end
  L4_371 = GetTechniquesFromTrackedCommandLine
  L5_372 = A0_367
  L6_373 = A2_369
  L4_371 = L4_371(L5_372, L6_373)
  if L4_371 ~= nil then
    L5_372 = FindStringInTable
    L6_373 = A1_368
    L7_374 = L4_371
    L6_373 = L5_372(L6_373, L7_374)
    if L5_372 == true then
      L7_374 = true
      L8_375 = L6_373
      L9_376 = A0_367
      return L7_374, L8_375, L9_376
    end
  end
  L5_372 = resolve_mainbinary_from_commandline
  L6_373 = A0_367
  L6_373 = L5_372(L6_373)
  if A3_370 == true and L6_373 == true then
    L7_374 = GetTechniquesFromTrackedCommandLine
    L8_375 = L5_372
    L9_376 = A2_369
    L7_374 = L7_374(L8_375, L9_376)
    if L7_374 ~= nil then
      L8_375 = FindStringInTable
      L9_376 = A1_368
      L9_376 = L8_375(L9_376, L7_374)
      if L8_375 == true then
        return true, L9_376, L5_372
      end
    end
  end
  L7_374 = false
  return L7_374
end
IsCommandLineTrackedForTechnique = L0_0
function L0_0(A0_386)
  local L1_387, L2_388, L3_389, L4_390, L5_391, L6_392
  if A0_386 ~= nil then
    L1_387 = #A0_386
    if L1_387 ~= nil then
      L1_387 = #A0_386
    end
  elseif L1_387 <= 1 then
    return A0_386
  end
  L1_387 = {}
  L2_388(L3_389)
  for L5_391, L6_392 in L2_388(L3_389) do
    if L6_392 ~= A0_386[L5_391 + 1] then
      table.insert(L1_387, L6_392)
    end
  end
  return L1_387
end
table_distinct_values = L0_0
function L0_0(A0_393)
  local L1_394, L2_395, L3_396, L4_397, L5_398, L6_399, L7_400, L8_401, L9_402, L10_403, L11_404, L12_405, L13_406
  if A0_393 ~= nil then
    L1_394 = type
    L2_395 = A0_393
    L1_394 = L1_394(L2_395)
    if L1_394 == "string" then
      L1_394 = #A0_393
    end
  elseif L1_394 <= 3 then
    return
  end
  L1_394 = mp
  L1_394 = L1_394.GetExecutablesFromCommandLine
  L2_395 = A0_393
  L1_394 = L1_394(L2_395)
  if L1_394 ~= nil then
    L2_395 = type
    L2_395 = L2_395(L3_396)
  elseif L2_395 ~= "table" then
    L2_395 = {}
    L1_394 = L2_395
  end
  L2_395 = string
  L2_395 = L2_395.gmatch
  L2_395 = L2_395(L3_396, L4_397)
  for L6_399 in L2_395, nil, nil do
    L9_402 = L6_399
    L7_400(L8_401, L9_402)
  end
  for L7_400 in L3_396, nil, nil do
    L9_402 = L7_400
    if L8_401 ~= nil then
      L9_402 = table
      L9_402 = L9_402.insert
      L10_403 = L1_394
      L11_404 = L8_401
      L9_402(L10_403, L11_404)
    end
  end
  for L9_402 in L4_397, nil, nil do
    L10_403 = string
    L10_403 = L10_403.find
    L11_404 = L9_402
    L12_405 = "\\"
    L13_406 = 1
    L10_403 = L10_403(L11_404, L12_405, L13_406, true)
    if L10_403 == nil then
      L10_403 = L5_398
      L11_404 = "\\system32\\"
      L12_405 = L9_402
      L10_403 = L10_403 .. L11_404 .. L12_405
      L11_404 = table
      L11_404 = L11_404.insert
      L12_405 = L1_394
      L13_406 = L10_403
      L11_404(L12_405, L13_406)
      L11_404 = L5_398
      L12_405 = "\\"
      L13_406 = L9_402
      L11_404 = L11_404 .. L12_405 .. L13_406
      L12_405 = table
      L12_405 = L12_405.insert
      L13_406 = L1_394
      L12_405(L13_406, L11_404)
      L12_405 = L5_398
      L13_406 = "\\system32\\wbem\\"
      L12_405 = L12_405 .. L13_406 .. L9_402
      L13_406 = table
      L13_406 = L13_406.insert
      L13_406(L1_394, L12_405)
      L13_406 = L5_398
      L13_406 = L13_406 .. "\\system32\\windowspowershell\\v1.0\\" .. L9_402
      table.insert(L1_394, L13_406)
    end
  end
  return L1_394
end
get_filepaths_from_string = L0_0
function L0_0(A0_407, A1_408, A2_409)
  local L3_410, L4_411, L5_412, L6_413, L7_414, L8_415, L9_416, L10_417, L11_418, L12_419, L13_420, L14_421, L15_422
  if A0_407 == nil or A1_408 == nil then
    return
  end
  L3_410 = A0_407
  L4_411 = A0_407.sub
  L4_411 = L4_411(L5_412, L6_413, L7_414)
  if L4_411 ~= "pid:" then
    L4_411 = GetProcessPpidByScenario
    L4_411 = L4_411(L5_412)
    A0_407 = L4_411
  end
  if A0_407 == nil then
    L4_411 = nil
    return L4_411
  end
  if A2_409 == nil then
    A2_409 = 5
  end
  L4_411 = A0_407
  for L8_415 = 1, A2_409 do
    L9_416 = mp
    L9_416 = L9_416.GetParentProcInfo
    L10_417 = L4_411
    L9_416 = L9_416(L10_417)
    if L8_415 == 1 then
      L10_417 = string
      L10_417 = L10_417.lower
      L10_417 = L10_417(L11_418)
      if L10_417 == "cmdhstr" then
        L10_417 = mp
        L10_417 = L10_417.GetParentProcInfo
        L10_417 = L10_417()
        L9_416 = L10_417
      end
    end
    if L9_416 == nil then
      break
    end
    L4_411 = L9_416.ppid
    if L4_411 == nil then
      break
    end
    L10_417 = L9_416.image_path
    if L10_417 ~= nil then
      L10_417 = string
      L10_417 = L10_417.lower
      L10_417 = L10_417(L11_418)
      if L11_418 == "string" then
        if L11_418 == A1_408 then
          L14_421 = A1_408
          L15_422 = L8_415
          return L11_418, L12_419, L13_420, L14_421, L15_422
        end
      elseif L11_418 == "table" then
        for L14_421, L15_422 in L11_418(L12_419) do
          if string.sub(L10_417, -#L15_422) == L15_422 then
            return true, L4_411, L10_417, L15_422, L8_415
          end
        end
      end
    end
  end
  return L5_412
end
IsProcNameInParentProcessTree = L0_0
function L0_0(A0_423, A1_424)
  local L2_425, L3_426
  A1_424 = A1_424 or 3600
  L2_425 = ExtractPartsFromUri
  L3_426 = A0_423
  L2_425 = L2_425(L3_426)
  L3_426 = L2_425.host
  if L3_426 then
    L3_426 = L2_425.host
    if L3_426 ~= "" then
      L3_426 = GetRollingQueueKeyValue
      L3_426 = L3_426("SuspAttackServer", L2_425.host)
      if L3_426 == nil then
        L3_426 = tostring(L2_425.path)
      else
        L3_426 = L3_426 .. "|" .. tostring(L2_425.path)
      end
      AppendToRollingQueue("SuspAttackServer", L2_425.host, L3_426, 3600)
    end
  end
end
TrackAttackerServer = L0_0
function L0_0(A0_427, A1_428)
  A1_428 = A1_428 or false
  if ExtractPartsFromUri(A0_427).host and ExtractPartsFromUri(A0_427).host ~= "" then
    A1_428 = A1_428 or false
    return (IsKeyInRollingQueue("SuspAttackServer", ExtractPartsFromUri(A0_427).host, A1_428))
  end
  return false
end
IsHostAttackServer = L0_0
function L0_0(A0_429)
  local L1_430
  if A0_429 == nil then
    L1_430 = false
    return L1_430
  end
  L1_430 = 0
  if IsTechniqueObservedForPid(A0_429, "T1057") or IsTacticObservedForPid(A0_429, "Discovery_Process") then
    L1_430 = L1_430 + 15
  end
  if IsTechniqueObservedForPid(A0_429, "T1552") or IsTacticObservedForPid(A0_429, "CredentialAccess") then
    L1_430 = L1_430 + 16
  end
  if IsTechniqueObservedForPid(A0_429, "T1083") or IsTacticObservedForPid(A0_429, "Discovery_FileAndDirectoryDiscovery") then
    L1_430 = L1_430 + 15
  end
  if IsTechniqueObservedForPid(A0_429, "T1074") or IsTacticObservedForPid(A0_429, "Collection_DataStaged") then
    L1_430 = L1_430 + 15
  end
  if IsTechniqueObservedForPid(A0_429, "T1049") or IsTacticObservedForPid(A0_429, "Discovery_NetworkConnectionsDiscovery") then
    L1_430 = L1_430 + 15
  end
  if IsTechniqueObservedForPid(A0_429, "T1033") or IsTacticObservedForPid(A0_429, "Discovery_SystemOwnerUserDiscovery") then
    L1_430 = L1_430 + 8
  end
  if IsTechniqueObservedForPid(A0_429, "T1518") or IsTacticObservedForPid(A0_429, "Discovery_SoftwareDiscovery") then
    L1_430 = L1_430 + 8
  end
  if IsTechniqueObservedForPid(A0_429, "T1082") or IsTacticObservedForPid(A0_429, "Discovery_SystemInfoDiscovery") then
    L1_430 = L1_430 + 8
  end
  if L1_430 >= 45 and L1_430 <= 100 then
    return true
  end
  return false
end
IsDiscoveryCollectionThresholdMetLinux = L0_0
function L0_0(A0_431, A1_432, A2_433, A3_434, A4_435)
  local L5_436, L6_437, L7_438, L8_439
  L5_436 = 0
  L6_437 = true
  L7_438 = nil
  L8_439 = IsDetectionThresholdMetLinux
  L8_439 = L8_439(A0_431)
  if L8_439 then
    L8_439 = true
    return L8_439
  end
  if L6_437 then
    L8_439 = GetTacticsTableForPid
    L8_439 = L8_439(A0_431)
    if L8_439 == nil or GetTechniquesTableForPid(A0_431) == nil then
      return false
    end
    for _FORV_13_, _FORV_14_ in pairs(L8_439) do
      if _FORV_13_ ~= nil then
        if L7_438 == nil then
          L7_438 = _FORV_13_:lower()
        else
          L7_438 = L7_438 .. " | " .. _FORV_13_:lower()
        end
      end
      if _FORV_14_ ~= nil then
        L5_436 = L5_436 + _FORV_14_
      end
    end
    if L7_438 ~= nil then
      if L7_438:find("collection", 1, true) and L7_438:find("discovery", 1, true) and L7_438:find("exfiltration", 1, true) then
        return true
      end
      if (L7_438:find("initialaccess", 1, true) or L7_438:find("collection", 1, true) or L7_438:find("discovery", 1, true) or L7_438:find("execution", 1, true) or L7_438:find("credentialaccess", 1, true) or L7_438:find("defenseevasion", 1, true) or L7_438:find("lateralmovement", 1, true) or L7_438:find("privilegeescalation", 1, true)) and L7_438:find("persistence", 1, true) and (L7_438:find("exfiltration", 1, true) or L7_438:find("commandandcontrol", 1, true)) then
        return true
      end
      if (L7_438:find("collection", 1, true) or L7_438:find("discovery", 1, true) or L7_438:find("execution", 1, true)) and (L7_438:find("credentialaccess", 1, true) or L7_438:find("defenseevasion", 1, true) or L7_438:find("lateralmovement", 1, true)) and (L7_438:find("persistence", 1, true) or L7_438:find("exfiltration", 1, true) or L7_438:find("commandandcontrol", 1, true)) then
        return true
      end
      if (L7_438:find("initialaccess", 1, true) or L7_438:find("collection", 1, true) or L7_438:find("discovery", 1, true) or L7_438:find("execution", 1, true) or L7_438:find("credentialaccess", 1, true) or L7_438:find("defenseevasion", 1, true) or L7_438:find("lateralmovement", 1, true) or L7_438:find("privilegeescalation", 1, true)) and L7_438:find("exfiltration", 1, true) and L7_438:find("commandandcontrol", 1, true) then
        return true
      end
    end
    if L7_438:find("initialaccess", 1, true) then
    end
    if L7_438:find("execution", 1, true) then
    end
    if L7_438:find("persistence", 1, true) then
    end
    if L7_438:find("privilegeescalation", 1, true) then
    end
    if L7_438:find("defenseevasion", 1, true) then
    end
    if L7_438:find("credentialaccess", 1, true) then
    end
    if L7_438:find("discovery", 1, true) then
    end
    if L7_438:find("lateralmovement", 1, true) then
    end
    if L7_438:find("collection", 1, true) then
    end
    if L7_438:find("commandandcontrol", 1, true) then
    end
    if L7_438:find("exfiltration", 1, true) then
    end
    if L7_438:find("impact", 1, true) then
    end
    if 4 <= 0 + 1 + 1 + 2 + 1 + 1 + 1 + 1 + 2 + 1 + 2 + 2 + 2 and 17 >= 0 + 1 + 1 + 2 + 1 + 1 + 1 + 1 + 2 + 1 + 2 + 2 + 2 then
      return true
    end
  end
  L8_439 = false
  return L8_439
end
IsDetectionThresholdMetLinuxWrapper = L0_0
function L0_0(A0_440)
  TT_SendBMSigTrigger(A0_440, "send_ttdata", "send_ttdata", 30)
end
TT_SendTechniqueIntents = L0_0
function L0_0(A0_441)
  local L1_442
  L1_442 = {}
  L1_442.acronisagent = true
  L1_442.acrsch2svc = true
  L1_442.avpsus = true
  L1_442.backupexecagentaccelerator = true
  L1_442.backupexecagentbrowser = true
  L1_442.backupexecdivecimediaservice = true
  L1_442.backupexecjobengine = true
  L1_442.backupexecmanagementservice = true
  L1_442.backupexecrpcservice = true
  L1_442.backupexecvssprovider = true
  L1_442["bmr boot service"] = true
  L1_442["bmr mtftp service"] = true
  L1_442.caarcupdatesvc = true
  L1_442.casad2dwebsvc = true
  L1_442.ccevtmgr = true
  L1_442.ccsetmgr = true
  L1_442.defwatch = true
  L1_442.dns = true
  L1_442.dnssvc = true
  L1_442.gxblr = true
  L1_442.gxcimgr = true
  L1_442.gxcvd = true
  L1_442.gxfwd = true
  L1_442.gxvss = true
  L1_442.intuit = true
  L1_442["intuit.quickbooks.fcs"] = true
  L1_442.mcafeedlpagentservice = true
  L1_442.memtas = true
  L1_442.mepocs = true
  L1_442.mfewc = true
  L1_442["msdtc.exe"] = true
  L1_442.msdtc = true
  L1_442["msexchange transport logsearch"] = true
  L1_442.msexchangeantispamupdate = true
  L1_442.msexchangecompliance = true
  L1_442.msexchangedagmgmt = true
  L1_442.msexchangedelivery = true
  L1_442.msexchangediagnostics = true
  L1_442.msexchangeedgesync = true
  L1_442.msexchangefastsearch = true
  L1_442.msexchangefrontendtransport = true
  L1_442.msexchangehm = true
  L1_442.msexchangehmrecovery = true
  L1_442.msexchangeimap4 = true
  L1_442.msexchangeimap4be = true
  L1_442.msexchangeis = true
  L1_442.msexchangemailboxassistants = true
  L1_442.msexchangemailboxreplication = true
  L1_442.msexchangenotificationsbroker = true
  L1_442.msexchangepop3 = true
  L1_442.msexchangepop3be = true
  L1_442.msexchangerepl = true
  L1_442.msexchangerpc = true
  L1_442.msexchangeservicehost = true
  L1_442.msexchangesubmission = true
  L1_442.msexchangethrottling = true
  L1_442.msexchangetransport = true
  L1_442.msexchangeum = true
  L1_442.msexchangeumcr = true
  L1_442.mspub = true
  L1_442.mssqlserver = true
  L1_442.mssqlsvc = true
  L1_442.mysql = true
  L1_442.mysql80 = true
  L1_442["netbackup bmr mtftp service"] = true
  L1_442["outlook.exe"] = true
  L1_442.pdvfsservice = true
  L1_442.qbcfmonitorservice = true
  L1_442.qbfcservice = true
  L1_442.qbidpservice = true
  L1_442.rtvscan = true
  L1_442.samss = true
  L1_442.savroam = true
  L1_442["savservice.exe"] = true
  L1_442.sophos = true
  L1_442.sql = true
  L1_442["sqlagent.exe"] = true
  L1_442["sqlbrowser.exe"] = true
  L1_442.sqlbrowser = true
  L1_442["sqlceip.exe"] = true
  L1_442.sqlserveragent = true
  L1_442["sqlservr.exe"] = true
  L1_442.sqltelemetry = true
  L1_442["sqlwriter.exe"] = true
  L1_442.sqlwriter = true
  L1_442.stc_raw_agent = true
  L1_442.vds = true
  L1_442["veeam.backup.agent.configurationservice.exe"] = true
  L1_442["veeam.backup.brokerservice.exe"] = true
  L1_442["veeam.backup.catalogdataservice.exe"] = true
  L1_442["veeam.backup.cloudservice.exe"] = true
  L1_442["veeam.backup.externalinfrastructure.dbprovider.exe"] = true
  L1_442["veeam.backup.manager.exe"] = true
  L1_442["veeam.backup.mountservice.exe"] = true
  L1_442["veeam.backup.service.exe"] = true
  L1_442["veeam.backup.uiserver.exe"] = true
  L1_442["veeam.backup.wmiserver.exe"] = true
  L1_442["veeam.guest.interaction.proxy.exe"] = true
  L1_442.veeam = true
  L1_442.veeamcatalogsvc = true
  L1_442.veeamcloudsvc = true
  L1_442.veeamdeploymentservice = true
  L1_442["veeamdeploymentsvc.exe"] = true
  L1_442.veeamdeploysvc = true
  L1_442["veeamfilesysvsssvc.exe"] = true
  L1_442["veeamnfssvc.exe"] = true
  L1_442.veeamnfssvc = true
  L1_442["veeamtransportsvc.exe"] = true
  L1_442.veeamtransportsvc = true
  L1_442.vmcompute = true
  L1_442.vmms = true
  L1_442["vmwp.exe"] = true
  L1_442.vsnapvss = true
  L1_442.vss = true
  L1_442.vsssvc = true
  L1_442.w3svc = true
  L1_442["w3wp.exe"] = true
  L1_442.yoobackup = true
  L1_442.yooit = true
  if L1_442[A0_441] then
    return true
  end
  return false
end
TT_IsProdCriticalService = L0_0
