local L0_0, L2_1, L3_2
function L0_0(A0_3)
  local L1_4
  if not A0_3 or A0_3 == "" then
    L1_4 = false
    return L1_4
  end
  L1_4 = sysio
  L1_4 = L1_4.EnumerateServices
  L1_4 = L1_4()
  if not L1_4 then
    return false
  end
  A0_3 = A0_3:lower()
  for _FORV_5_, _FORV_6_ in pairs(L1_4) do
    if _FORV_6_.ServiceName and A0_3 == _FORV_6_.ServiceName:lower() then
      return _FORV_6_
    end
  end
end
getService = L0_0
function L0_0(A0_5)
  local L1_6, L2_7, L3_8, L4_9, L5_10, L6_11, L7_12, L8_13, L9_14, L10_15, L11_16, L12_17, L13_18, L14_19, L15_20, L16_21
  if not A0_5 then
    L1_6 = nil
    return L1_6
  end
  L1_6 = {}
  L2_7 = nil
  L3_8 = 8
  L4_9 = 1
  L5_10 = {
    L6_11,
    L7_12,
    L8_13,
    L9_14,
    L10_15,
    L11_16,
    L12_17,
    L13_18
  }
  L6_11 = 0
  L7_12 = 0
  L11_16 = 0
  L6_11 = 0
  L7_12 = string
  L7_12 = L7_12.len
  L7_12 = L7_12(L8_13)
  if L7_12 < 2 or L7_12 > 39 then
    return L8_13
  end
  for L11_16 = L7_12, 1, -1 do
    if L12_17 == ":" then
      L3_8 = L3_8 - 1
      if L3_8 < 1 then
        return L13_18
      end
      if L2_7 == ":" then
        L6_11 = L3_8
      end
      L4_9 = 1
    else
      if L4_9 >= 65536 then
        return L13_18
      end
      if L11_16 == L13_18 and L2_7 == ":" then
        return L13_18
      end
      if not L12_17 then
        return L13_18
      end
      L5_10[L3_8] = L13_18
      L4_9 = L4_9 * 16
    end
    L2_7 = L12_17
  end
  if L3_8 ~= 1 then
    for L11_16 = L3_8, L6_11 do
      L5_10[L12_17] = L13_18
      L5_10[L11_16] = 0
    end
  end
  if L3_8 > 6 then
    return L8_13
  end
  L11_16 = nil
  for L15_20 = 1, 8 do
    L16_21 = L5_10[L15_20]
    if L16_21 == 0 then
      if L10_15 < L8_13 then
        L11_16 = L9_14
      end
    else
    end
    L5_10[L15_20] = string.format("%x", L16_21)
  end
  for L16_21 = 1, 8 do
    if L16_21 < L11_16 or L16_21 >= L11_16 + L10_15 then
      L1_6[#L1_6 + 1] = L5_10[L16_21]
    end
    if L12_17 < 2 and L16_21 < 8 then
      L1_6[#L1_6 + 1] = ":"
    end
  end
  return L13_18(L14_19, L15_20)
end
function L2_1(A0_22, A1_23)
  local L2_24, L3_25, L4_26, L5_27, L6_28, L7_29, L8_30, L9_31, L10_32
  if not A0_22 then
    L2_24 = nil
    return L2_24
  end
  L2_24 = {}
  L3_25 = string
  L3_25 = L3_25.len
  L4_26 = A0_22
  L3_25 = L3_25(L4_26)
  if L3_25 < 16 then
    L4_26 = nil
    return L4_26
  end
  L4_26, L5_27 = nil, nil
  for L9_31 = 1, L3_25, 2 do
    L10_32 = string
    L10_32 = L10_32.byte
    L5_27, L10_32 = A0_22, L10_32(A0_22, L9_31, L9_31 + 3)
    L4_26 = L10_32
    if not L4_26 or not L5_27 then
      L10_32 = nil
      return L10_32
    end
    L10_32 = #L2_24
    L10_32 = L10_32 + 1
    L2_24[L10_32] = string.format("%02x%02x", L4_26, L5_27)
    L10_32 = #L2_24
    if L10_32 == 8 then
      L10_32 = table
      L10_32 = L10_32.concat
      L10_32 = L10_32(L2_24, ":")
      L10_32 = _UPVALUE0_(L10_32)
      if L10_32 then
        A1_23[#A1_23 + 1] = L10_32
      end
      L2_24 = {}
    end
  end
end
function L3_2()
  local L0_33, L1_34, L2_35, L3_36, L4_37, L5_38, L6_39, L7_40, L8_41, L9_42, L10_43, L11_44, L12_45, L13_46, L14_47, L15_48, L16_49, L17_50
  L0_33 = {}
  L1_34 = sysio
  L1_34 = L1_34.RegOpenKey
  L2_35 = "HKLM\\SYSTEM\\CurrentControlSet\\Services\\Tcpip\\Parameters"
  L1_34 = L1_34(L2_35)
  if L1_34 then
    L2_35 = sysio
    L2_35 = L2_35.GetRegValueAsString
    L3_36 = L1_34
    L4_37 = "NameServer"
    L2_35 = L2_35(L3_36, L4_37)
    L3_36 = split
    L4_37 = L2_35
    L3_36 = L3_36(L4_37, L5_38, L6_39)
    L0_33 = L3_36
    L3_36 = sysio
    L3_36 = L3_36.GetRegValueAsString
    L4_37 = L1_34
    L3_36 = L3_36(L4_37, L5_38)
    L2_35 = L3_36
    L3_36 = split
    L4_37 = L2_35
    L3_36 = L3_36(L4_37, L5_38, L6_39)
    L0_33 = L3_36
  end
  L2_35 = sysio
  L2_35 = L2_35.RegOpenKey
  L3_36 = "HKLM\\SYSTEM\\CurrentControlSet\\Services\\Tcpip6\\Parameters"
  L2_35 = L2_35(L3_36)
  L1_34 = L2_35
  if L1_34 then
    L2_35 = sysio
    L2_35 = L2_35.GetRegValueAsString
    L3_36 = L1_34
    L4_37 = "NameServer"
    L2_35 = L2_35(L3_36, L4_37)
    L3_36 = split
    L4_37 = L2_35
    L3_36 = L3_36(L4_37, L5_38, L6_39)
    L0_33 = L3_36
    L3_36 = sysio
    L3_36 = L3_36.GetRegValueAsBinary
    L4_37 = L1_34
    L3_36 = L3_36(L4_37, L5_38)
    L2_35 = L3_36
    L3_36 = _UPVALUE0_
    L4_37 = L2_35
    L3_36(L4_37, L5_38)
  end
  L2_35 = "HKLM\\SYSTEM\\CurrentControlSet\\Services\\Tcpip\\Parameters\\Interfaces"
  L3_36 = sysio
  L3_36 = L3_36.RegOpenKey
  L4_37 = L2_35
  L3_36 = L3_36(L4_37)
  if L3_36 then
    L4_37 = sysio
    L4_37 = L4_37.RegEnumKeys
    L4_37 = L4_37(L5_38)
    if L4_37 then
      for L8_41, L9_42 in L5_38(L6_39) do
        L10_43 = sysio
        L10_43 = L10_43.RegOpenKey
        L11_44 = string
        L11_44 = L11_44.format
        L12_45 = "%s\\%s"
        L17_50 = L11_44(L12_45, L13_46, L14_47)
        L10_43 = L10_43(L11_44, L12_45, L13_46, L14_47, L15_48, L16_49, L17_50, L11_44(L12_45, L13_46, L14_47))
        if L10_43 then
          L11_44 = sysio
          L11_44 = L11_44.GetRegValueAsString
          L12_45 = L10_43
          L11_44 = L11_44(L12_45, L13_46)
          L12_45 = split
          L12_45 = L12_45(L13_46, L14_47, L15_48)
          L0_33 = L12_45
          L12_45 = sysio
          L12_45 = L12_45.GetRegValueAsString
          L12_45 = L12_45(L13_46, L14_47)
          L11_44 = L12_45
          L12_45 = split
          L12_45 = L12_45(L13_46, L14_47, L15_48)
          L0_33 = L12_45
        end
      end
    end
  end
  L2_35 = "HKLM\\SYSTEM\\CurrentControlSet\\Services\\Tcpip6\\Parameters\\Interfaces"
  L4_37 = sysio
  L4_37 = L4_37.RegOpenKey
  L4_37 = L4_37(L5_38)
  L3_36 = L4_37
  if L3_36 then
    L4_37 = sysio
    L4_37 = L4_37.RegEnumKeys
    L4_37 = L4_37(L5_38)
    if L4_37 then
      for L8_41, L9_42 in L5_38(L6_39) do
        L10_43 = sysio
        L10_43 = L10_43.RegOpenKey
        L11_44 = string
        L11_44 = L11_44.format
        L12_45 = "%s\\%s"
        L17_50 = L11_44(L12_45, L13_46, L14_47)
        L10_43 = L10_43(L11_44, L12_45, L13_46, L14_47, L15_48, L16_49, L17_50, L11_44(L12_45, L13_46, L14_47))
        if L10_43 then
          L11_44 = sysio
          L11_44 = L11_44.GetRegValueAsString
          L12_45 = L10_43
          L11_44 = L11_44(L12_45, L13_46)
          if L11_44 then
            L12_45 = {}
            L16_49 = L12_45
            L13_46(L14_47, L15_48, L16_49)
            for L16_49, L17_50 in L13_46(L14_47) do
              L17_50 = _UPVALUE1_(L17_50)
              if L17_50 then
                L0_33[#L0_33 + 1] = L17_50
              end
            end
          end
          L12_45 = sysio
          L12_45 = L12_45.GetRegValueAsString
          L12_45 = L12_45(L13_46, L14_47)
          L11_44 = L12_45
          L12_45 = _UPVALUE0_
          L12_45(L13_46, L14_47)
        end
      end
    end
  end
  L4_37 = GetRollingQueueKeyValues
  L4_37 = L4_37(L5_38, L6_39)
  if L4_37 ~= nil then
    if L5_38 > 0 then
      for L8_41, L9_42 in L5_38(L6_39) do
        L10_43 = AppendToRollingQueue
        L11_44 = "rq_dnsServer"
        L12_45 = "lastDnsServers"
        L16_49 = 0
        L10_43(L11_44, L12_45, L13_46, L14_47, L15_48, L16_49)
      end
    end
  end
  L8_41 = L0_33
  L9_42 = 86400
  L10_43 = 100
  L5_38(L6_39, L7_40, L8_41, L9_42, L10_43)
  return L0_33
end
updateSystemDNSServers = L3_2
function L3_2(A0_51, A1_52)
  local L2_53, L3_54, L4_55, L5_56, L6_57, L7_58, L8_59
  L2_53 = false
  L3_54 = false
  L4_55 = false
  L5_56 = false
  L6_57 = IsKeyValuePairInRollingQueue
  L7_58 = "rq_dnsServer"
  L8_59 = "dnsServers"
  L6_57 = L6_57(L7_58, L8_59, A0_51)
  if not L6_57 then
    L7_58 = GetRollingQueueCountForKey
    L8_59 = "rq_dnsServer"
    L7_58 = L7_58(L8_59, "dnsServers")
    L7_58 = L7_58 or 0
    if 0 == L7_58 then
      L8_59 = updateSystemDNSServers
      L8_59 = L8_59()
      for _FORV_13_, _FORV_14_ in pairs(L8_59) do
      end
      if #L8_59 > 0 and 1 == 0 then
        L2_53 = true
      end
    else
      L2_53 = true
    end
  end
  if L2_53 then
    L7_58 = IsKeyValuePairInRollingQueue
    L8_59 = "rq_dnsServer"
    L7_58 = L7_58(L8_59, "lastDnsServers", A0_51)
    if L7_58 then
      L2_53 = false
      L3_54 = true
    elseif A1_52 then
      L7_58 = updateSystemDNSServers
      L7_58()
      L7_58 = isAlternateDNSServer
      L8_59 = A0_51
      L7_58 = L7_58(L8_59)
      L2_53 = L7_58
      if not L2_53 then
        L4_55 = true
      end
    end
  end
  L7_58 = L2_53
  L8_59 = L3_54
  return L7_58, L8_59, L4_55
end
isAlternateDNSServer = L3_2
function L3_2(A0_60)
  local L1_61, L2_62, L3_63, L4_64, L5_65, L6_66, L7_67, L8_68, L9_69, L10_70, L11_71
  L1_61 = #A0_60
  if not L1_61 then
    L2_62 = 0
    return L2_62
  end
  L2_62 = 0
  L3_63 = 0
  L4_64 = {}
  L5_65 = 0
  for L9_69 = 1, L1_61 do
    L11_71 = A0_60
    L10_70 = A0_60.byte
    L10_70 = L10_70(L11_71, L9_69)
    L5_65 = L5_65 + L10_70
    L11_71 = L4_64[L10_70]
    if L11_71 ~= nil then
      L11_71 = L4_64[L10_70]
      L11_71 = L11_71 + 1
      L4_64[L10_70] = L11_71
    else
      L4_64[L10_70] = 1
    end
  end
  L5_65 = L5_65 / L1_61
  for L9_69, L10_70 in L6_66(L7_67) do
    L11_71 = math_pow
    L11_71 = L11_71(math_abs(L5_65 - L9_69), 2)
    L11_71 = L10_70 * L11_71
    L3_63 = L3_63 + L11_71
    L11_71 = L10_70 / L1_61
    L2_62 = L2_62 - L11_71 * math_log2(L11_71)
  end
  L3_63 = L3_63 / L1_61
  return L6_66, L7_67
end
getEntropyAndVariance = L3_2
function L3_2(A0_72)
  return ("aAeEiIoOuUyYwWbBcCdDfFgGHjJkKlLmMnNpPqQrRsStT"):find(string.char(A0_72), 1, true) == nil and 0 or ("aAeEiIoOuUyYwWbBcCdDfFgGHjJkKlLmMnNpPqQrRsStT"):find(string.char(A0_72), 1, true) > 14 and 2 or 1
end
function computeStringScores(A0_73)
  local L1_74, L2_75, L3_76, L4_77, L5_78, L6_79, L7_80, L8_81, L9_82, L10_83
  L1_74 = 0
  L2_75 = 0
  L3_76 = 0
  L4_77 = #A0_73
  if L4_77 < 5 then
    L4_77 = L1_74
    L5_78 = 1
    L6_79 = L2_75
    return L4_77, L5_78, L6_79, L7_80
  end
  L4_77, L5_78 = nil, nil
  L6_79 = 1
  for L10_83 = 2, #A0_73 do
    L4_77 = A0_73:byte(L10_83)
    L5_78 = A0_73:byte(L10_83 - 1)
    if (L4_77 > 47 and L4_77 < 58) ~= (L5_78 > 47 and L5_78 < 58) then
      L3_76 = L3_76 + 1
    end
    if L4_77 > 64 and L4_77 < 91 and L5_78 > 96 and L5_78 < 123 or L5_78 > 64 and L5_78 < 91 and L4_77 > 96 and L4_77 < 123 then
      L2_75 = L2_75 + 1
    end
    if _UPVALUE0_(L4_77) == _UPVALUE0_(L5_78) then
      L1_74 = L1_74 + L6_79
      L6_79 = L6_79 + 1
    else
      L6_79 = 1
    end
  end
  L10_83 = L3_76
  return L7_80, L8_81, L9_82, L10_83
end
function reportPersistedContext(A0_84, A1_85, A2_86)
  local L3_87, L4_88, L5_89, L6_90, L7_91, L8_92, L9_93, L10_94, L11_95
  L3_87 = string
  L3_87 = L3_87.lower
  L4_88 = bm
  L4_88 = L4_88.get_imagepath
  L11_95 = L4_88()
  L3_87 = L3_87(L4_88, L5_89, L6_90, L7_91, L8_92, L9_93, L10_94, L11_95, L4_88())
  L4_88 = bm
  L4_88 = L4_88.get_current_process_startup_info
  L4_88 = L4_88()
  L5_89 = L4_88.command_line
  L6_90 = MpCommon
  L6_90 = L6_90.GetPersistContextNoPath
  L6_90 = L6_90(L7_91)
  if L6_90 then
    for L10_94, L11_95 in L7_91(L8_92) do
      bm.add_related_string(A1_85, L11_95, bm.RelatedStringBMReport)
    end
  end
end
function reportAndSinkholeDNSTelemetry(A0_96, A1_97, A2_98)
  local L3_99, L4_100, L5_101, L6_102, L7_103, L8_104, L9_105, L10_106, L11_107, L12_108, L13_109, L14_110, L15_111, L16_112, L17_113, L18_114, L19_115, L20_116
  L3_99 = MpCommon
  L3_99 = L3_99.GetPersistContextNoPath
  L4_100 = A0_96
  L3_99 = L3_99(L4_100)
  L4_100, L5_101 = nil, nil
  if L3_99 then
    if L6_102 > 0 then
      for L9_105, L10_106 in L6_102(L7_103) do
        if L10_106 then
          L11_107 = string
          L11_107 = L11_107.format
          L12_108 = "BM_%s_%s"
          L13_109 = A0_96
          L14_110 = L10_106
          L11_107 = L11_107(L12_108, L13_109, L14_110)
          L12_108 = MpCommon
          L12_108 = L12_108.GetPersistContextCountNoPath
          L13_109 = L11_107
          L12_108 = L12_108(L13_109)
          if 0 == L12_108 then
            L13_109 = bm
            L13_109 = L13_109.add_related_string
            L14_110 = "bmurl"
            L15_111 = L10_106
            L13_109(L14_110, L15_111, L16_112)
            L13_109 = string
            L13_109 = L13_109.find
            L14_110 = L10_106
            L15_111 = "_"
            L13_109 = L13_109(L14_110, L15_111, L16_112, L17_113)
            L14_110 = string
            L14_110 = L14_110.sub
            L15_111 = L10_106
            L14_110 = L14_110(L15_111, L16_112, L17_113)
            if A2_98 or L14_110 == "dns-exfil.net" then
              L15_111 = MpCommon
              L15_111 = L15_111.AddDnsBlockListDomain
              L15_111 = L15_111(L16_112, L17_113)
              L5_101 = L16_112
              L4_100 = L15_111
            end
            L15_111 = MpCommon
            L15_111 = L15_111.GetPersistContextNoPath
            L15_111 = L15_111(L16_112)
            if L15_111 then
              for L19_115, L20_116 in L16_112(L17_113) do
                bm.add_related_string("bmurl", L20_116 .. "." .. L14_110, bm.RelatedStringBMReport)
              end
              L19_115 = 600
              L16_112(L17_113, L18_114, L19_115)
            end
            return L16_112, L17_113, L18_114
          end
        end
      end
    end
  end
end
function extractCommonSuffix(A0_117, A1_118)
  local L2_119, L3_120, L4_121, L5_122, L6_123, L7_124
  L2_119 = false
  L3_120, L4_121 = nil, nil
  L5_122 = #A0_117
  L6_123 = A1_118
  repeat
    A1_118 = A1_118 + 1
    L4_121 = L7_124
    if L4_121 == 46 then
      L6_123 = A1_118
    end
    for _FORV_10_ = 2, L5_122 do
      if A1_118 > #A0_117[_FORV_10_] or A0_117[_FORV_10_]:byte(#A0_117[_FORV_10_] - A1_118) ~= L4_121 then
        L2_119 = true
        break
      end
    end
  until L2_119
  A1_118 = A1_118 - 1
  return L6_123, L7_124
end
function computeDataLength(A0_125, A1_126)
  local L2_127, L3_128, L4_129, L5_130, L6_131, L7_132, L8_133, L9_134, L10_135
  L2_127 = 0
  L3_128 = {}
  L4_129 = A0_125[1]
  L4_129 = #L4_129
  L4_129 = L4_129 - A1_126
  L5_130 = 0
  for L9_134, L10_135 in L6_131(L7_132) do
    table.insert(L3_128, string.sub(L10_135, 0, #L10_135 - A1_126))
    L2_127 = L2_127 + #L10_135 - A1_126
  end
  return L6_131, L7_132, L8_133
end
function getTimingData(A0_136, A1_137)
  local L2_138, L3_139, L4_140, L5_141, L6_142, L7_143, L8_144, L9_145, L10_146, L11_147, L12_148
  L2_138 = 0
  L3_139 = 0
  L4_140 = 0
  L5_141 = 0
  L6_142 = {}
  L7_143 = {}
  if L8_144 ~= L9_145 then
    return L8_144
  end
  for L11_147, L12_148 in L8_144(L9_145) do
    L12_148 = split(L12_148, "_")
    if tonumber(L12_148[2]) == #A0_136[L11_147] then
      L6_142[L11_147] = tonumber(L12_148[1])
    else
      break
    end
    L4_140 = L4_140 + tonumber(L12_148[2])
    L5_141 = L5_141 + tonumber(L12_148[3])
    if L2_138 > tonumber(L12_148[1]) or L2_138 == 0 then
      L2_138 = tonumber(L12_148[1])
    end
    if L3_139 < tonumber(L12_148[1]) then
      L3_139 = tonumber(L12_148[1])
    end
    if L11_147 > 1 then
      L7_143[L11_147 - 1] = L6_142[L11_147] - L6_142[L11_147 - 1]
    end
  end
  L11_147 = L3_139 - L2_138
  L12_148 = L2_138
  return L8_144, L9_145, L10_146, L11_147, L12_148, L3_139
end
function routeBasedOnProcess(A0_149, A1_150)
  local L2_151, L3_152, L4_153
  L2_151 = 0
  L3_152 = string
  L3_152 = L3_152.find
  L4_153 = A0_149
  L3_152 = L3_152(L4_153, "svchost.exe", 1, true)
  if L3_152 then
    L3_152 = mp
    L3_152 = L3_152.bitor
    L4_153 = L2_151
    L3_152 = L3_152(L4_153, 1)
    L2_151 = L3_152
  end
  L3_152 = versioning
  L3_152 = L3_152.GetCloudBlockLevel
  L3_152 = L3_152()
  if L3_152 > 3 then
    L3_152 = mp
    L3_152 = L3_152.bitor
    L4_153 = L2_151
    L3_152 = L3_152(L4_153, 2)
    L2_151 = L3_152
  end
  L3_152 = {}
  L3_152[0] = "Telemetry"
  L3_152[1] = "SystemResolver"
  L3_152[2] = "CloudBlock"
  L3_152[3] = "CBSsystemResolver"
  L4_153 = 4 * A1_150
  L4_153 = 805306720 + L4_153
  L4_153 = L4_153 + L2_151
  return L4_153, L3_152[L2_151]
end
function computeReponseLength(A0_154)
  local L1_155, L2_156, L3_157, L4_158
  L1_155 = nri
  L1_155 = L1_155.GetRawResponseBlob
  L1_155 = L1_155()
  if not L1_155 then
    L2_156 = mp
    L2_156 = L2_156.CLEAN
    return L2_156
  end
  L2_156 = #L1_155
  L3_157 = 0
  L4_158 = 13
  while A0_154 > L3_157 and L3_157 < 20 and L2_156 >= L4_158 do
    if mp.bitand(string.byte(L1_155, L4_158), 192) == 192 then
      L4_158 = L4_158 + 6
    elseif string.find(L1_155, "\000", L4_158, true) then
      L4_158 = string.find(L1_155, "\000", L4_158, true) + 5
    end
    L3_157 = L3_157 + 1
  end
  L2_156 = L2_156 - L4_158
  return L2_156
end
function add_parents(A0_159, A1_160, A2_161)
  local L3_162, L4_163, L5_164, L6_165, L7_166, L8_167, L9_168, L10_169, L11_170, L12_171
  L3_162 = ""
  L4_163 = {}
  L5_164, L6_165, L7_166 = nil, nil, nil
  if A1_160 == nil or A1_160 > 5 then
    A1_160 = 5
  end
  if A1_160 == 0 then
    return L4_163
  end
  if A0_159 ~= nil then
    L6_165 = L9_168
    L5_164 = L8_167
  else
    L7_166 = L8_167
    L6_165 = L9_168
    L5_164 = L8_167
  end
  if not L5_164 then
    return L4_163
  end
  if L6_165 == nil then
    return L4_163
  end
  if A2_161 == nil then
    A2_161 = 1
  end
  for L11_170, L12_171 in L8_167(L9_168) do
    if mp.bitand(L12_171.reason_ex, A2_161) == A2_161 and L12_171.ppid ~= nil then
      if L12_171.cmd_line then
        pcall(bm_AddRelatedFileFromCommandLine, L12_171.cmd_line)
      end
      bm.add_related_process(L12_171.ppid)
      L4_163 = add_parents(L12_171.ppid, A1_160 - 1, A2_161)
      table.insert(L4_163, L12_171)
    end
  end
  if A0_159 == nil then
    L8_167(L9_168, L10_169)
  end
  return L4_163
end
function is_excluded_parent_proc(A0_172)
  local L1_173, L2_174, L3_175, L4_176, L5_177, L6_178, L7_179, L8_180
  if A0_172 ~= nil then
    L1_173 = type
    L2_174 = A0_172
    L1_173 = L1_173(L2_174)
    if L1_173 == "table" then
      L1_173 = bm
      L1_173 = L1_173.get_process_relationships
      L2_174 = L1_173()
      for L6_178, L7_179 in L3_175(L4_176) do
        L8_180 = L7_179.image_path
        if L8_180 ~= nil then
          L8_180 = L7_179.image_path
          L8_180 = L8_180.match
          L8_180 = L8_180(L8_180, "\\([^\\]+)$")
          if A0_172[L8_180] or A0_172[string.lower(L8_180)] then
            return true
          end
        end
      end
    end
  end
  L1_173 = false
  return L1_173
end
function is_excluded_parent_proc_auto()
  local L0_181
  L0_181 = {}
  L0_181["ccmexec.exe"] = true
  L0_181["gpscript.exe"] = true
  L0_181["mpcmdrun.exe"] = true
  L0_181["mssense.exe"] = true
  L0_181["senseir.exe"] = true
  return is_excluded_parent_proc(L0_181)
end
function sms_untrusted_process()
  local L0_182, L1_183, L2_184, L3_185, L4_186, L5_187, L6_188
  L0_182 = add_parents
  L0_182 = L0_182()
  L1_183 = {}
  for L5_187, L6_188 in L2_184(L3_185) do
    if not MpCommon.IsFriendlyProcess(L6_188.ppid) then
      bm.request_SMS(L6_188.ppid, "H")
      table.insert(L1_183, L6_188)
    end
  end
  L2_184 = L2_184 > 0
  return L2_184, L3_185
end
function sms_untrusted_process_pid(A0_189)
  local L1_190, L2_191, L3_192, L4_193, L5_194, L6_195, L7_196
  L1_190 = add_parents
  L2_191 = A0_189
  L1_190 = L1_190(L2_191)
  L2_191 = {}
  for L6_195, L7_196 in L3_192(L4_193) do
    if not MpCommon.IsFriendlyProcess(L7_196.ppid) then
      bm.request_SMS(L7_196.ppid, "H")
      table.insert(L2_191, L7_196)
    end
  end
  L3_192 = L3_192 > 0
  return L3_192, L4_193
end
function extractRansomNote(A0_197)
  local L1_198, L2_199, L3_200, L4_201, L5_202, L6_203, L7_204, L8_205, L9_206, L10_207, L11_208
  if A0_197 == nil then
    return
  end
  L1_198 = pcall
  L2_199 = mp
  L2_199 = L2_199.ContextualExpandEnvironmentVariables
  L3_200 = A0_197
  L2_199 = L1_198(L2_199, L3_200)
  if L1_198 then
    A0_197 = L2_199
  end
  L3_200 = sysio
  L3_200 = L3_200.IsFileExists
  L4_201 = A0_197
  L3_200 = L3_200(L4_201)
  if not L3_200 then
    return
  end
  L3_200 = sysio
  L3_200 = L3_200.GetFileSize
  L4_201 = A0_197
  L3_200 = L3_200(L4_201)
  if L3_200 > 50000 then
    return
  end
  L4_201 = bm
  L4_201 = L4_201.add_related_file
  L5_202 = A0_197
  L4_201(L5_202)
  L4_201 = "(?:---BEGIN ID---|Company Key: )(?:\\x0d\\x0a| )?([A-Za-z0-9+/=]*)(?:\\x0d\\x0a| |<)"
  L5_202 = "(\\b[A-Za-z0-9]{76}\\b)"
  L6_203 = "(\\b([13]{1}[a-km-zA-HJ-NP-Z1-9]{26,33}|bc1[a-z0-9]{39,59}|((bitcoincash|bchreg|bchtest):)?[qp][a-z0-9]{41}|[48][0-9AB][1-9A-HJ-NP-Za-km-z]{93}|0x[a-fA-F0-9]{40})\\b)"
  L7_204 = "((?i)(?:[\\\\A-Za-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\\.[A-Za-z0-9!#$%&'*+/=?^_`{|}~-]+)*|\"(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21\\x23-\\x5b\\x5d-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])*\")@(?:(?:[A-Za-z0-9](?:[A-Za-z0-9-]*[A-Za-z0-9])?\\.)+[A-Za-z0-9](?:[A-Za-z0-9-]*[A-Za-z0-9])?|\\[(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?|[A-Za-z0-9-]*[A-Za-z0-9]:(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21-\\x5a\\x53-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])+)\\]))"
  L8_205 = "((?i)(?:http|ftp|https):\\/\\/(?:[\\w_-]+(?:(?:\\.[\\w_-]+)+))(?:[\\w.,@?^=%&:\\/~+#-]*[\\w@?^=%&\\/~+#-])?|([a-zA-Z2-7]{1,56}\\.onion)(?:[\\w.,@?^=%&:\\/~+#-]*[\\w@?^=%&\\/~+#-])?)"
  L9_206 = nil
  L10_207 = sysio
  L10_207 = L10_207.ReadFile
  L11_208 = A0_197
  L10_207 = L10_207(L11_208, 0, L3_200)
  L9_206 = L10_207
  function L10_207(A0_209, A1_210)
    local L2_211, L3_212, L4_213, L5_214, L6_215
    L2_211 = MpCommon
    L2_211 = L2_211.StringRegExpSearch
    L3_212 = A1_210
    L4_213 = A0_209
    L3_212 = L2_211(L3_212, L4_213)
    L4_213 = {}
    while L2_211 do
      L5_214 = table
      L5_214 = L5_214.insert
      L6_215 = L4_213
      L5_214(L6_215, L3_212)
      L5_214 = string
      L5_214 = L5_214.find
      L6_215 = A0_209
      L6_215 = L5_214(L6_215, L3_212, 1, true)
      A0_209 = string.sub(A0_209, L6_215)
      L2_211, L3_212 = MpCommon.StringRegExpSearch(A1_210, A0_209)
    end
    return L4_213
  end
  multi_match_regex = L10_207
  function L10_207(A0_216, A1_217)
    local L2_218, L3_219
    L2_218 = A0_216
    if A1_217 == "emails" then
      while L3_219 <= #L2_218 do
        if string.match(L2_218[L3_219], "\\") then
          table.remove(L2_218, L3_219)
        else
        end
      end
    end
    if A1_217 == "urls" then
      for _FORV_6_, _FORV_7_ in L3_219(L2_218) do
        if L2_218[_FORV_6_]:sub(-1, -1) == "/" then
          L2_218[_FORV_6_] = L2_218[_FORV_6_]:sub(1, -2)
        end
      end
    end
    return L2_218
  end
  clean = L10_207
  L10_207 = {}
  L11_208 = table_dedup
  L11_208 = L11_208(multi_match_regex(L9_206, L6_203))
  L10_207.wallets = L11_208
  L11_208 = table_dedup
  L11_208 = L11_208(clean(multi_match_regex(L9_206, L7_204), "emails"))
  L10_207.emails = L11_208
  L11_208 = table_dedup
  L11_208 = L11_208(clean(multi_match_regex(L9_206, L8_205), "urls"))
  L10_207.urls = L11_208
  L11_208 = table_dedup
  L11_208 = L11_208(multi_match_regex(L9_206, L5_202))
  L10_207.tox_ids = L11_208
  L11_208 = table_dedup
  L11_208 = L11_208(multi_match_regex(L9_206, L4_201))
  L10_207.victim_ids = L11_208
  L11_208 = safeJsonSerialize
  L11_208 = L11_208(L10_207)
  L11_208 = MpCommon.Base64Encode(L11_208)
  bm.trigger_sig("RansomNoteContent", A0_197)
  bm.add_related_string("RansomNoteContent", L11_208, bm.RelatedStringBMReport)
  bm.add_related_string("RansomNoteContentLength", tostring(#L11_208), bm.RelatedStringBMReport)
  return true
end
function reportHeaders(A0_220)
  local L1_221, L2_222, L3_223, L4_224, L5_225, L6_226
  L1_221 = {}
  if not A0_220 then
    A0_220 = L2_222
  elseif L2_222 == "string" then
    A0_220 = L2_222
  end
  for L5_225, L6_226 in L2_222(L3_223) do
    L1_221[string.gsub(L6_226:lower(), "-", "")] = nri.GetHttpRequestHeader(L6_226)
  end
  if L2_222 then
    L1_221.uri = L2_222
  end
  L5_225 = mp
  L5_225 = L5_225.bitor
  L6_226 = nri
  L6_226 = L6_226.Telemetry_HOSTNAME
  L5_225 = L5_225(L6_226, nri.Telemetry_PATH)
  L6_226 = nri
  L6_226 = L6_226.Telemetry_QUERY
  L5_225 = L1_221
  L3_223(L4_224, L5_225)
end
function isTrustedDomain(A0_227, A1_228)
  local L2_229, L3_230
  if A0_227 then
    L2_229 = type
    L3_230 = A0_227
    L2_229 = L2_229(L3_230)
  elseif L2_229 ~= "string" then
    L2_229 = false
    return L2_229
  end
  L2_229 = {}
  L3_230 = {}
  L3_230.SIG_CONTEXT = "BM"
  L3_230.CONTEXT_SOURCE = A1_228
  if string.find(A0_227, "://", 1, true) then
    L2_229 = {A0_227}
  else
    L2_229[1] = "http://" .. A0_227
    L2_229[2] = "http://www." .. A0_227
    L2_229[3] = "https://" .. A0_227
    L2_229[4] = "https://www." .. A0_227
  end
  if not pcall(mp.GetUrlReputation, L2_229, L3_230) or not pcall(mp.GetUrlReputation, L2_229, L3_230) or not pcall(mp.GetUrlReputation, L2_229, L3_230).urls then
    return false
  end
  for _FORV_9_, _FORV_10_ in ipairs(pcall(mp.GetUrlReputation, L2_229, L3_230).urls) do
    if _FORV_10_.determination == 1 then
      return true
    end
  end
end
function isTamperProtectionOn(A0_231)
  local L1_232, L2_233, L3_234, L4_235
  L1_232 = 60
  L2_233 = "MpTamperProtectionState"
  if A0_231 == nil then
    A0_231 = true
  end
  if A0_231 then
    L3_234 = MpCommon
    L3_234 = L3_234.QueryPersistContextNoPath
    L4_235 = L2_233
    L3_234 = L3_234(L4_235, "off")
    if L3_234 then
      L3_234 = false
      return L3_234
    end
    L3_234 = MpCommon
    L3_234 = L3_234.QueryPersistContextNoPath
    L4_235 = L2_233
    L3_234 = L3_234(L4_235, "on")
    if L3_234 then
      L3_234 = true
      return L3_234
    end
  end
  L3_234 = sysio
  L3_234 = L3_234.RegOpenKey
  L4_235 = "HKLM\\SOFTWARE\\Microsoft\\Windows Defender\\Features"
  L3_234 = L3_234(L4_235)
  if L3_234 then
    L4_235 = sysio
    L4_235 = L4_235.GetRegValueAsDword
    L4_235 = L4_235(L3_234, "TamperProtection")
    if L4_235 then
      if mp.bitand(L4_235, 1) == 1 then
        MpCommon.SetPersistContextNoPath(L2_233, {"on"}, L1_232)
        return L4_235
      else
        MpCommon.SetPersistContextNoPath(L2_233, {"off"}, L1_232)
        return false
      end
    end
  end
  L4_235 = false
  return L4_235
end
function getTamperProtectionSource()
  local L0_236, L1_237
  L1_237 = sysio
  L1_237 = L1_237.RegOpenKey
  L1_237 = L1_237("HKLM\\SOFTWARE\\Microsoft\\Windows Defender\\Features")
  if L1_237 then
    L0_236 = sysio.GetRegValueAsDword(L1_237, "TamperProtectionSource")
  end
  return L0_236
end
function scrubData(A0_238)
  if A0_238 == nil then
    return nil
  end
  if #A0_238 > 0 then
    return crypto.Sha1Buffer(A0_238, 0, #A0_238)
  else
    return "da39a3ee5e6b4b0d3255bfef95601890afd80709"
  end
end
function scrubSubstringInData(A0_239, A1_240)
  local L2_241, L3_242, L4_243, L5_244, L6_245, L7_246, L8_247
  if A0_239 ~= nil and A1_240 ~= nil then
    L2_241 = next
    L2_241 = L2_241(L3_242)
  elseif L2_241 == nil then
    L2_241 = nil
    return L2_241
  end
  L2_241 = A0_239
  for L6_245, L7_246 in L3_242(L4_243) do
    if L7_246 ~= nil and L7_246 ~= "" then
      L8_247 = scrubData
      L8_247 = L8_247(L7_246)
      if string.find(A0_239, L7_246) ~= nil then
        L2_241 = string.gsub(L2_241, L7_246, L8_247)
      end
    end
  end
  return L2_241
end
function querySessionInformation(A0_248, A1_249)
  local L2_250, L3_251, L4_252, L5_253, L6_254, L7_255
  L2_250 = {}
  for L6_254, L7_255 in L3_251(L4_252) do
    if pcall(MpCommon.QuerySessionInformation, A0_248, L7_255) and pcall(MpCommon.QuerySessionInformation, A0_248, L7_255) then
      L2_250[L6_254] = pcall(MpCommon.QuerySessionInformation, A0_248, L7_255)
    end
  end
  if L3_251 == nil then
    return L3_251
  end
  return L2_250
end
function reportSessionInfoWorker()
  local L0_256, L1_257, L2_258, L3_259, L4_260, L5_261, L6_262
  L0_256 = bm
  L0_256 = L0_256.get_current_process_startup_info
  L0_256 = L0_256()
  if L0_256 == nil then
    L1_257 = {}
    return L1_257
  end
  L1_257 = {}
  L2_258 = {}
  L1_257.User = L2_258
  L2_258 = {}
  L1_257.Session = L2_258
  L2_258 = {}
  L3_259 = MpCommon
  L3_259 = L3_259.WTSUserName
  L2_258.UserName = L3_259
  L3_259 = MpCommon
  L3_259 = L3_259.WTSDomainName
  L2_258.Domain = L3_259
  L3_259 = {}
  L4_260 = MpCommon
  L4_260 = L4_260.WTSClientAddress
  L3_259.ClientIP = L4_260
  L4_260 = MpCommon
  L4_260 = L4_260.WTSClientName
  L3_259.ClientName = L4_260
  L4_260 = MpCommon
  L4_260 = L4_260.WTSWinStationName
  L3_259.WinStationName = L4_260
  L4_260 = MpCommon
  L4_260 = L4_260.WTSSessionId
  L3_259.Id = L4_260
  L4_260 = MpCommon
  L4_260 = L4_260.WTSClientBuildNumber
  L3_259.ClientBuildNumber = L4_260
  L4_260 = MpCommon
  L4_260 = L4_260.WTSClientProductId
  L3_259.ClientProductId = L4_260
  L4_260 = MpCommon
  L4_260 = L4_260.WTSClientProtocolType
  L3_259.ClientProtocolType = L4_260
  L4_260 = MpCommon
  L4_260 = L4_260.WTSConnectState
  L3_259.ClientConnectState = L4_260
  L4_260 = MpCommon
  L4_260 = L4_260.WTSClientInfo
  L3_259.ClientInfo = L4_260
  L4_260 = MpCommon
  L4_260 = L4_260.WTSSessionInfo
  L3_259.ClientSessionInfo = L4_260
  L4_260 = MpCommon
  L4_260 = L4_260.WTSConfigInfo
  L3_259.ConfigInfo = L4_260
  L4_260 = MpCommon
  L4_260 = L4_260.WTSIsRemoteSession
  L3_259.IsRemoteSession = L4_260
  L4_260 = querySessionInformation
  L5_261 = L0_256.ppid
  L6_262 = L2_258
  L4_260 = L4_260(L5_261, L6_262)
  L1_257.User = L4_260
  L4_260 = querySessionInformation
  L5_261 = L0_256.ppid
  L6_262 = L3_259
  L4_260 = L4_260(L5_261, L6_262)
  L1_257.Session = L4_260
  L4_260 = L1_257.User
  if L4_260 then
    L4_260 = L1_257.Session
    if L4_260 then
      L4_260 = {
        L5_261,
        L6_262,
        L1_257.Session.ClientName,
        L1_257.Session.WinStationName
      }
      L5_261 = L1_257.User
      L5_261 = L5_261.UserName
      L6_262 = L1_257.User
      L6_262 = L6_262.Domain
      L5_261 = L1_257.Session
      L5_261 = L5_261.ClientIP
      if L5_261 ~= nil then
        L5_261 = type
        L6_262 = L1_257.Session
        L6_262 = L6_262.ClientIP
        L5_261 = L5_261(L6_262)
        if L5_261 == "table" then
          L5_261 = L1_257.Session
          L6_262 = L1_257.Session
          L6_262 = L6_262.ClientIP
          L6_262 = L6_262.Address
          L5_261.ClientIP = L6_262
        end
      end
      L5_261 = ""
      L6_262 = false
      L6_262, L5_261 = pcall(MpCommon.GetUserAccountInfo, L1_257.User.Domain, L1_257.User.UserName)
      if L6_262 and L5_261 then
        L5_261.Name = scrubData(L5_261.Name)
        L1_257.User.Info = L5_261
        L1_257.User.Info.HomeDir = scrubSubstringInData(L1_257.User.Info.HomeDir, L4_260)
        L1_257.User.Info.ProfilePath = scrubSubstringInData(L1_257.User.Info.ProfilePath, L4_260)
      end
      L6_262, L5_261 = pcall(MpCommon.GetUserAccountGroups, L1_257.User.Domain, L1_257.User.UserName)
      if L6_262 and L5_261 then
        L1_257.User.Groups = {}
        for _FORV_10_, _FORV_11_ in ipairs(L5_261) do
          table.insert(L1_257.User.Groups, scrubData(_FORV_11_.Name))
        end
      end
      L1_257.User.UserName = scrubData(L1_257.User.UserName)
      L1_257.User.Domain = scrubData(L1_257.User.Domain)
      L1_257.Session.ClientName = scrubData(L1_257.Session.ClientName)
      L1_257.Session.WinStationName = scrubData(L1_257.Session.WinStationName)
      if L1_257.Session.ConfigInfo and type(L1_257.Session.ConfigInfo) ~= "string" then
        L1_257.Session.ConfigInfo.LogonDomain = scrubData(L1_257.Session.ConfigInfo.LogonDomain)
        L1_257.Session.ConfigInfo.LogonUserName = scrubData(L1_257.Session.ConfigInfo.LogonUserName)
        L1_257.Session.ConfigInfo.InitialProgram = scrubSubstringInData(L1_257.Session.ConfigInfo.InitialProgram, L4_260)
        L1_257.Session.ConfigInfo.WorkDirectory = scrubSubstringInData(L1_257.Session.ConfigInfo.WorkDirectory, L4_260)
      end
      if L1_257.Session.ClientInfo and type(L1_257.Session.ClientInfo) ~= "string" then
        L1_257.Session.ClientInfo.InitialProgram = scrubSubstringInData(L1_257.Session.ClientInfo.InitialProgram, L4_260)
        L1_257.Session.ClientInfo.WorkDirectory = scrubSubstringInData(L1_257.Session.ClientInfo.WorkDirectory, L4_260)
      end
    end
  end
  return L1_257
end
function reportSessionInformationInclusive()
  local L0_263, L1_264
  L0_263 = pcall
  L1_264 = reportSessionInfoWorker
  L1_264 = L0_263(L1_264)
  if L0_263 and L1_264 then
    bm.add_related_string("sessionInfo", safeJsonSerialize(L1_264), bm.RelatedStringBMReport)
    return L1_264
  else
    bm.add_related_string("sessioninfofail", L1_264, bm.RelatedStringBMReport)
  end
  return {}
end
function reportSessionInformation()
  local L0_265, L1_266, L2_267, L3_268, L4_269
  L0_265 = bm
  L0_265 = L0_265.get_current_process_startup_info
  L0_265 = L0_265()
  if L0_265 == nil then
    L1_266 = {}
    return L1_266
  end
  L1_266 = false
  L2_267 = false
  L3_268 = pcall
  L4_269 = MpCommon
  L4_269 = L4_269.QuerySessionInformation
  L4_269 = L3_268(L4_269, L0_265.ppid, MpCommon.WTSIsRemoteSession)
  L1_266 = L4_269
  L2_267 = L3_268
  if L2_267 and L1_266 then
    L3_268 = pcall
    L4_269 = reportSessionInfoWorker
    L4_269 = L3_268(L4_269)
    if L3_268 and L4_269 then
      bm.add_related_string("sessionInfo", safeJsonSerialize(L4_269), bm.RelatedStringBMReport)
      return L4_269
    else
      bm.add_related_string("sessioninfofail", L4_269, bm.RelatedStringBMReport)
    end
  end
  L3_268 = {}
  return L3_268
end
function reportRelevantUntrustedEntities(A0_270)
  local L1_271, L2_272, L3_273, L4_274, L5_275, L6_276, L7_277, L8_278, L9_279, L10_280, L11_281, L12_282, L13_283, L14_284, L15_285, L16_286, L17_287, L18_288
  A0_270 = A0_270 or 0
  L1_271 = add_parents
  L1_271 = L1_271()
  L2_272 = {}
  for L6_276, L7_277 in L3_273(L4_274) do
    L8_278 = MpCommon
    L8_278 = L8_278.IsFriendlyProcess
    L9_279 = L7_277.ppid
    L8_278 = L8_278(L9_279)
    if not L8_278 then
      L9_279 = L7_277.image_Path
      if L9_279 then
        L9_279 = table
        L9_279 = L9_279.insert
        L10_280 = L2_272
        L11_281 = L7_277.image_path
        L9_279(L10_280, L11_281)
        if A0_270 == 0 then
          L9_279 = bm
          L9_279 = L9_279.add_related_file
          L10_280 = L7_277.image_path
          L9_279(L10_280)
        end
      end
      L9_279 = pcall
      L10_280 = bm
      L10_280 = L10_280.request_SMS
      L11_281 = L7_277.ppid
      L9_279(L10_280, L11_281, L12_282)
    end
    L9_279 = mp
    L9_279 = L9_279.GetProcessCommandLine
    L10_280 = L7_277.ppid
    L9_279 = L9_279(L10_280)
    if L9_279 then
      L10_280 = pcall
      L11_281 = mp
      L11_281 = L11_281.GetExecutablesFromCommandLine
      L11_281 = L10_280(L11_281, L12_282)
      if L10_280 and L11_281 then
        for L15_285, L16_286 in L12_282(L13_283) do
          L17_287 = mp
          L17_287 = L17_287.ContextualExpandEnvironmentVariables
          L18_288 = L16_286
          L17_287 = L17_287(L18_288)
          if L16_286 then
            L17_287 = mp
            L17_287 = L17_287.IsKnownFriendlyFile
            L18_288 = L16_286
            L17_287 = L17_287(L18_288, true, true)
            if L17_287 == nil or L17_287 == false then
              if A0_270 == 1 then
                L18_288 = bm
                L18_288 = L18_288.add_threat_file
                L18_288(L16_286)
              end
              if A0_270 == 0 then
                L18_288 = bm
                L18_288 = L18_288.add_related_file
                L18_288(L16_286)
              end
              L18_288 = table
              L18_288 = L18_288.insert
              L18_288(L2_272, L16_286)
            end
          end
        end
      end
      if L12_282 and L13_283 then
        for L17_287, L18_288 in L14_284(L15_285) do
          L18_288 = mp.ContextualExpandEnvironmentVariables(L18_288)
          if L18_288 and string.match(L18_288, "^[%a]:\\") and (mp.IsKnownFriendlyFile(L18_288, true, true) == nil or mp.IsKnownFriendlyFile(L18_288, true, true) == false) then
            if A0_270 == 1 then
              bm.add_threat_file(L18_288)
            end
            if A0_270 == 0 then
              bm.add_related_file(L18_288)
            end
            table.insert(L2_272, L18_288)
          end
        end
      end
    end
  end
  return L2_272
end
function reportRelevantUntrustedEntitiesForPid(A0_289)
  local L1_290, L2_291, L3_292, L4_293, L5_294, L6_295, L7_296, L8_297, L9_298, L10_299, L11_300, L12_301, L13_302, L14_303, L15_304, L16_305, L17_306, L18_307, L19_308
  L1_290 = {}
  while A0_289 do
    L2_291 = MpCommon
    L2_291 = L2_291.GetImagePathFromPid
    L3_292 = A0_289
    L2_291 = L2_291(L3_292)
    L3_292 = mp
    L3_292 = L3_292.GetProcessCommandLine
    L4_293 = A0_289
    L3_292 = L3_292(L4_293)
    L4_293 = MpCommon
    L4_293 = L4_293.IsFriendlyProcess
    L5_294 = A0_289
    L4_293 = L4_293(L5_294)
    if not L4_293 and L2_291 then
      L5_294 = table
      L5_294 = L5_294.insert
      L6_295 = L1_290
      L5_294(L6_295, L7_296)
    end
    if L3_292 then
      L5_294 = pcall
      L6_295 = mp
      L6_295 = L6_295.GetExecutablesFromCommandLine
      L6_295 = L5_294(L6_295, L7_296)
      if L5_294 and L6_295 then
        for L10_299, L11_300 in L7_296(L8_297) do
          L12_301 = mp
          L12_301 = L12_301.ContextualExpandEnvironmentVariables
          L13_302 = L11_300
          L12_301 = L12_301(L13_302)
          if L11_300 then
            L12_301 = mp
            L12_301 = L12_301.IsKnownFriendlyFile
            L13_302 = L11_300
            L14_303 = true
            L15_304 = false
            L12_301 = L12_301(L13_302, L14_303, L15_304)
            if L12_301 == nil or L12_301 == false then
              L13_302 = false
              L14_303 = 0
              L15_304 = 0
              L16_305 = MpCommon
              L16_305 = L16_305.PathToWin32Path
              L17_306 = L11_300
              L16_305 = L16_305(L17_306)
              if L16_305 then
                L17_306 = sysio
                L17_306 = L17_306.IsPathAVExcluded
                L18_307 = L16_305
                L19_308 = false
                L17_306 = L17_306(L18_307, L19_308)
                L13_302 = L17_306
                L17_306 = sysio
                L17_306 = L17_306.GetFileSize
                L18_307 = L16_305
                L17_306 = L17_306(L18_307)
                L14_303 = L17_306
                L17_306 = sysio
                L17_306 = L17_306.IsFileExists
                L18_307 = L16_305
                L17_306 = L17_306(L18_307)
                if L17_306 then
                  L17_306 = sysio
                  L17_306 = L17_306.GetFileLastWriteTime
                  L18_307 = L16_305
                  L17_306 = L17_306(L18_307)
                  L18_307 = L17_306 / 10000000
                  L17_306 = L18_307 - 11644473600
                  L18_307 = MpCommon
                  L18_307 = L18_307.GetCurrentTimeT
                  L18_307 = L18_307()
                  L15_304 = L18_307 - L17_306
                end
              end
              L17_306 = {}
              L17_306.path = L11_300
              L17_306.isAVExcluded = L13_302
              L17_306.size = L14_303
              L17_306.age = L15_304
              L18_307 = table
              L18_307 = L18_307.insert
              L19_308 = L1_290
              L18_307(L19_308, L17_306)
            end
          end
        end
      end
      if L7_296 and L8_297 then
        for L12_301, L13_302 in L9_298(L10_299) do
          L14_303 = mp
          L14_303 = L14_303.ContextualExpandEnvironmentVariables
          L15_304 = L13_302
          L14_303 = L14_303(L15_304)
          L13_302 = L14_303
          if L13_302 then
            L14_303 = string
            L14_303 = L14_303.match
            L15_304 = L13_302
            L16_305 = "^[%a]:\\"
            L14_303 = L14_303(L15_304, L16_305)
            if L14_303 then
              L14_303 = mp
              L14_303 = L14_303.IsKnownFriendlyFile
              L15_304 = L13_302
              L16_305 = true
              L17_306 = false
              L14_303 = L14_303(L15_304, L16_305, L17_306)
              if L14_303 == nil or L14_303 == false then
                L15_304 = false
                L16_305 = 0
                L17_306 = 0
                L18_307 = MpCommon
                L18_307 = L18_307.PathToWin32Path
                L19_308 = L13_302
                L18_307 = L18_307(L19_308)
                if L18_307 then
                  L19_308 = sysio
                  L19_308 = L19_308.IsPathAVExcluded
                  L19_308 = L19_308(L18_307, false)
                  L15_304 = L19_308
                  L19_308 = sysio
                  L19_308 = L19_308.GetFileSize
                  L19_308 = L19_308(L18_307)
                  L16_305 = L19_308
                  L19_308 = sysio
                  L19_308 = L19_308.IsFileExists
                  L19_308 = L19_308(L18_307)
                  if L19_308 then
                    L19_308 = sysio
                    L19_308 = L19_308.GetFileLastWriteTime
                    L19_308 = L19_308(L18_307)
                    L19_308 = L19_308 / 10000000 - 11644473600
                    L17_306 = MpCommon.GetCurrentTimeT() - L19_308
                  end
                end
                L19_308 = {}
                L19_308.path = L13_302
                L19_308.isAVExcluded = L15_304
                L19_308.size = L16_305
                L19_308.age = L17_306
                table.insert(L1_290, L19_308)
              end
            end
          end
        end
      end
    end
    L5_294 = mp
    L5_294 = L5_294.GetParentProcInfo
    L6_295 = A0_289
    L5_294 = L5_294(L6_295)
    if not L5_294 then
      break
    end
    A0_289 = L5_294.ppid
  end
  return L1_290
end
function reportAVExcludedEntities()
  local L0_309, L1_310, L2_311, L3_312, L4_313, L5_314, L6_315, L7_316, L8_317, L9_318, L10_319, L11_320, L12_321, L13_322, L14_323, L15_324, L16_325, L17_326, L18_327
  L0_309 = bm
  L0_309 = L0_309.get_current_process_startup_info
  L0_309 = L0_309()
  L1_310 = add_parents
  L2_311 = L0_309
  L1_310 = L1_310(L2_311)
  L2_311 = table
  L2_311 = L2_311.insert
  L2_311(L3_312, L4_313)
  L2_311 = {}
  for L6_315, L7_316 in L3_312(L4_313) do
    L8_317 = mp
    L8_317 = L8_317.GetProcessCommandLine
    L9_318 = L7_316.ppid
    L8_317 = L8_317(L9_318)
    if L8_317 then
      L9_318 = pcall
      L10_319 = mp
      L10_319 = L10_319.GetExecutablesFromCommandLine
      L10_319 = L9_318(L10_319, L11_320)
      if L9_318 and L10_319 then
        for L14_323, L15_324 in L11_320(L12_321) do
          L16_325 = mp
          L16_325 = L16_325.ContextualExpandEnvironmentVariables
          L17_326 = L15_324
          L16_325 = L16_325(L17_326)
          if L15_324 then
            L16_325 = MpCommon
            L16_325 = L16_325.PathToWin32Path
            L17_326 = L15_324
            L16_325 = L16_325(L17_326)
            if L16_325 then
              L17_326 = sysio
              L17_326 = L17_326.IsPathAVExcluded
              L18_327 = L16_325
              L17_326 = L17_326(L18_327, false)
              if L17_326 then
                L18_327 = table
                L18_327 = L18_327.insert
                L18_327(L2_311, L15_324)
              end
            end
          end
        end
      end
      if L11_320 and L12_321 then
        for L16_325, L17_326 in L13_322(L14_323) do
          L18_327 = mp
          L18_327 = L18_327.ContextualExpandEnvironmentVariables
          L18_327 = L18_327(L17_326)
          L17_326 = L18_327
          if L17_326 then
            L18_327 = MpCommon
            L18_327 = L18_327.PathToWin32Path
            L18_327 = L18_327(L17_326)
            if L18_327 and sysio.IsPathAVExcluded(L18_327, false) then
              table.insert(L2_311, L17_326)
            end
          end
        end
      end
    end
  end
  if L3_312 then
    L6_315 = L2_311
    L6_315 = bm
    L6_315 = L6_315.RelatedStringBMReport
    L3_312(L4_313, L5_314, L6_315)
  end
  return L2_311
end
function recursiveTriggerSig(A0_328, A1_329, A2_330, A3_331)
  local L4_332, L5_333, L6_334, L7_335, L8_336, L9_337, L10_338, L11_339, L12_340
  L4_332 = bm
  L4_332 = L4_332.trigger_sig
  L5_333 = A0_328
  L6_334 = A1_329
  L4_332(L5_333, L6_334, L7_335)
  L4_332 = bm
  L4_332 = L4_332.get_process_relationships
  L5_333 = A2_330
  L5_333 = L4_332(L5_333)
  if L5_333 ~= nil then
    L6_334 = next
    L6_334 = L6_334(L7_335)
  elseif L6_334 == nil then
    L6_334 = 1
    return L6_334
  end
  L6_334 = 1
  for L10_338, L11_339 in L7_335(L8_336) do
    L12_340 = L11_339.ppid
    if L12_340 ~= nil then
      L12_340 = 1
      if mp.bitand(L11_339.reason_ex, L12_340) == L12_340 and A3_331 + L6_334 < 500 then
        L6_334 = L6_334 + recursiveTriggerSig(A0_328, A1_329 .. ";" .. L11_339.ppid, L11_339.ppid, A3_331 + L6_334)
      end
    end
  end
  return L6_334
end
function reportGenericRansomware(A0_341, A1_342)
  local L2_343, L3_344, L4_345, L5_346, L6_347, L7_348, L8_349, L9_350, L10_351, L11_352, L12_353, L13_354, L14_355, L15_356
  L2_343 = {}
  L3_344 = safeJsonDeserialize
  L4_345 = A0_341
  L3_344 = L3_344(L4_345)
  L2_343.gen_ransom_meta = L3_344
  L4_345 = reportSessionInformation
  L4_345 = L4_345()
  L2_343.session_info = L4_345
  A1_342 = A1_342 or false
  if A1_342 then
    L5_346 = versioning
    L5_346 = L5_346.IsSeville
    L5_346 = L5_346()
    if L5_346 then
      L5_346 = bm
      L5_346 = L5_346.set_detection_string
      L6_347 = safeJsonSerialize
      L15_356 = L6_347(L7_348)
      L5_346(L6_347, L7_348, L8_349, L9_350, L10_351, L11_352, L12_353, L13_354, L14_355, L15_356, L6_347(L7_348))
    end
  end
  L5_346 = add_parents
  L5_346()
  if L3_344 ~= nil then
    L5_346 = L3_344.file_list
    if L5_346 ~= nil then
      L5_346 = L3_344.appended_ext
      if L5_346 ~= nil then
        L5_346 = L3_344.proc_info
        if L5_346 ~= nil then
          L5_346 = L3_344.magic_mismatch
          if L5_346 ~= nil then
            L5_346 = bm
            L5_346 = L5_346.get_current_process_startup_info
            L5_346 = L5_346()
            if L5_346 ~= nil then
              L5_346 = L5_346.ppid
            else
              L5_346 = -2
            end
            L6_347 = "FileChain_SubSet:"
            L7_348(L8_349)
            L10_351 = L3_344.proc_info
            L11_352 = "> new <"
            L12_353 = L5_346
            L13_354 = ">"
            L10_351 = bm
            L10_351 = L10_351.RelatedStringBMReport
            L7_348(L8_349, L9_350, L10_351)
            L10_351 = bm
            L10_351 = L10_351.RelatedStringBMReport
            L7_348(L8_349, L9_350, L10_351)
            L10_351 = L3_344.magic_mismatch
            L10_351 = bm
            L10_351 = L10_351.RelatedStringBMReport
            L7_348(L8_349, L9_350, L10_351)
            for L10_351, L11_352 in L7_348(L8_349) do
              L12_353 = L11_352
              L13_354 = string
              L13_354 = L13_354.find
              L14_355 = L12_353
              L15_356 = "\\[^\\]*$"
              L13_354 = L13_354(L14_355, L15_356)
              L13_354 = L13_354 or 0
              L14_355 = string
              L14_355 = L14_355.find
              L15_356 = L12_353
              L14_355 = L14_355(L15_356, ".", L13_354, true)
              if L14_355 ~= nil then
                L15_356 = string
                L15_356 = L15_356.sub
                L15_356 = L15_356(L12_353, L13_354 + 1, L14_355 - 1)
                L6_347 = L6_347 .. crypto.CRC32Buffer(-1, L15_356, 0, #L15_356)
                L6_347 = L6_347 .. ";" .. string.sub(L12_353, L14_355 + 1) .. ";"
              end
            end
            L10_351 = bm
            L10_351 = L10_351.RelatedStringBMReport
            L7_348(L8_349, L9_350, L10_351)
            return L7_348
          end
        end
      end
    end
  end
  L5_346 = mp
  L5_346 = L5_346.CLEAN
  return L5_346
end
function maceGetUrlReputation(A0_357)
  local L1_358, L2_359, L3_360, L4_361, L5_362, L6_363, L7_364, L8_365, L9_366, L10_367, L11_368, L12_369, L13_370, L14_371, L15_372, L16_373, L17_374
  L1_358 = pcall
  L2_359 = mp
  L2_359 = L2_359.GetUrlReputation
  L3_360 = {L4_361}
  L4_361.TAG = "NOLOOKUP"
  L2_359 = L1_358(L2_359, L3_360, L4_361)
  if L1_358 and L2_359 then
    L3_360 = L2_359.urls
    for L7_364, L8_365 in L4_361(L5_362) do
      L9_366 = L8_365.determination
      if L9_366 == 2 then
        L9_366 = L8_365.urlresponsecontext
        if L9_366 then
          L10_367 = ""
          for L14_371, L15_372 in L11_368(L12_369) do
            L16_373 = L15_372.key
            L17_374 = L15_372.value
            if L16_373 == "MaceFamily" then
              L10_367 = string.lower(L17_374)
              break
            end
          end
          if L10_367 ~= "" then
            return L11_368, L12_369, L13_370
          end
        end
      end
    end
  end
  L3_360 = false
  return L3_360, L4_361, L5_362
end
function isAttrBadMaceRep(A0_375)
  local L1_376, L2_377, L3_378
  function L1_376(A0_379)
    AppendToRollingQueue("MaceNoRep", A0_379, 1, 86400)
  end
  function L2_377(A0_380)
    return IsKeyInRollingQueue("MaceNoRep", A0_380, true)
  end
  if not A0_375 or A0_375 ~= 28688 and A0_375 ~= 28674 then
    L3_378 = mp
    L3_378 = L3_378.CLEAN
    return L3_378
  end
  L3_378 = mp
  L3_378 = L3_378.SIGATTR_LOG_SZ
  if L3_378 == 0 then
    L3_378 = mp
    L3_378 = L3_378.CLEAN
    return L3_378
  end
  L3_378 = reportHeaders
  L3_378({"Host", "User-Agent"})
  L3_378 = nil
  for _FORV_7_ = mp.SIGATTR_LOG_SZ, 1, -1 do
    if A0_375 == 28688 and sigattr_tail[_FORV_7_].attribute == A0_375 and sigattr_tail[_FORV_7_].matched and sigattr_tail[_FORV_7_].utf8p1 and sigattr_tail[_FORV_7_].np2 then
      L3_378 = string.format("%s:%d", sigattr_tail[_FORV_7_].utf8p1, sigattr_tail[_FORV_7_].np2)
      break
    end
    if A0_375 == 28674 and sigattr_tail[_FORV_7_].attribute == A0_375 and sigattr_tail[_FORV_7_].matched and sigattr_tail[_FORV_7_].utf8p1 then
      L3_378 = sigattr_tail[_FORV_7_].utf8p1
      break
    end
  end
  if not L3_378 then
    return mp.CLEAN
  end
  if not L2_377(L3_378) and maceGetUrlReputation(L3_378) then
    return true
  else
    L1_376(L3_378)
  end
  return false
end
function maceSendConfig(A0_381)
  local L1_382, L2_383, L3_384, L4_385, L5_386, L6_387, L7_388, L8_389, L9_390, L10_391, L11_392, L12_393, L13_394
  L1_382 = GetRollingQueueKeys
  L1_382 = L1_382(L2_383)
  if L1_382 ~= nil then
    if L2_383 == "table" then
      for L5_386, L6_387 in L2_383(L3_384) do
        L7_388 = 512
        for L11_392 = 1, #L6_387, L7_388 do
          L12_393 = string
          L12_393 = L12_393.format
          L13_394 = "mace_%d"
          L12_393 = L12_393(L13_394, L11_392 == 1 and L11_392 - 1 or (L11_392 - 1) / L7_388)
          L13_394 = string
          L13_394 = L13_394.sub
          L13_394 = L13_394(L6_387, L11_392, L11_392 + L7_388 - 1)
          bm.add_related_string(L12_393, L13_394, bm.RelatedStringBMReport)
        end
        if L8_389 then
          L8_389(L9_390)
        end
        break
      end
    end
  end
end
function reportRelatedBmHits()
  local L0_395, L1_396, L2_397, L3_398, L4_399, L5_400
  L0_395 = mp
  L0_395 = L0_395.enum_mpattributesubstring
  L0_395 = L0_395(L1_396)
  if L0_395 then
    if L1_396 > 0 then
      for L4_399, L5_400 in L1_396(L2_397) do
        bm.add_related_string("RelatedBMHits", L5_400, bm.RelatedStringBMReport)
      end
    end
  end
end
function addChildrenAsThreat(A0_401)
  local L1_402, L2_403, L3_404, L4_405
  L1_402 = A0_401
  if not L1_402 or L1_402 == "" then
    L2_403 = pcall
    L3_404 = bm
    L3_404 = L3_404.get_current_process_startup_info
    L3_404 = L2_403(L3_404)
    if L2_403 and L3_404 then
      L4_405 = L3_404.ppid
    elseif not L4_405 then
      return
    end
    L1_402 = L3_404.ppid
  end
  L2_403 = pcall
  L3_404 = bm
  L3_404 = L3_404.get_process_relationships
  L4_405 = L1_402
  L4_405 = L2_403(L3_404, L4_405)
  if not L2_403 then
    return
  end
  for _FORV_8_, _FORV_9_ in ipairs(L4_405) do
    pcall(bm.add_threat_process, _FORV_9_.ppid)
  end
end
function takeMemorySnapshot(A0_406)
  local L1_407, L2_408, L3_409, L4_410, L5_411, L6_412, L7_413, L8_414, L9_415, L10_416, L11_417, L12_418, L13_419, L14_420, L15_421, L16_422, L17_423, L18_424
  L1_407 = pcall
  L2_408 = bm
  L2_408 = L2_408.get_current_process_startup_info
  L2_408 = L1_407(L2_408)
  if L1_407 and L2_408 then
    L3_409 = L2_408.ppid
  elseif not L3_409 then
    return
  end
  L3_409 = mp
  L3_409 = L3_409.enum_mpattributesubstring
  L4_410 = ""
  L3_409 = L3_409(L4_410)
  L4_410 = {}
  L5_411 = ""
  for L9_415, L10_416 in L6_412(L7_413) do
    if not L11_417 then
      L4_410[L10_416] = true
      L5_411 = L11_417 .. L12_418 .. L13_419
    end
  end
  L9_415, L10_416 = nil, nil
  if L7_413 then
    for L14_420, L15_421 in L11_417(L12_418) do
      L16_422 = L15_421.image_path
      L17_423 = L15_421.cmd_line
      L18_424 = L15_421.reason_ex
      L9_415 = string.format("%d::%s::%s", L18_424, L16_422, L17_423)
      break
    end
  end
  if L8_414 then
    for L14_420, L15_421 in L11_417(L12_418) do
      L16_422 = L15_421.image_path
      L17_423 = L15_421.cmd_line
      L18_424 = L15_421.reason_ex
      L10_416 = string.format("%d::%s::%s", L18_424, L16_422, L17_423)
      break
    end
  end
  L11_417.v = 2
  L11_417.fr = L12_418
  L14_420 = L6_412
  L15_421 = L2_408.command_line
  L11_417.pr = L12_418
  L11_417.pa = L9_415
  L11_417.ch = L10_416
  L11_417.bh = L5_411
  L11_417.hs = A0_406
  L14_420 = safeJsonSerialize
  L15_421 = L11_417
  L14_420 = L14_420(L15_421)
  L15_421 = bm
  L15_421 = L15_421.RelatedStringBMReport
  L12_418(L13_419, L14_420, L15_421)
end
function triggerMemoryScanOnProcessTree(A0_425, A1_426, A2_427, A3_428, A4_429)
  local L5_430, L6_431, L7_432, L8_433, L9_434, L10_435, L11_436
  L5_430 = bm
  L5_430 = L5_430.trigger_sig
  if L5_430 ~= nil and (A0_425 or A1_426) then
    L5_430 = pcall
    L6_431 = bm
    L6_431 = L6_431.get_current_process_startup_info
    L6_431 = L5_430(L6_431)
    if not L5_430 then
      return
    end
    L7_432 = pcall
    L8_433 = bm
    L8_433 = L8_433.get_process_relationships
    L9_434 = L6_431.ppid
    L9_434 = L7_432(L8_433, L9_434)
    if not L7_432 then
      return
    end
    L10_435 = "TriggerMemoryScan"
    L11_436 = string
    L11_436 = L11_436.format
    L11_436 = L11_436("Delay:%d;Type:%s;Origin:%s;", A3_428, A2_427, A4_429)
    pcall(bm.trigger_sig, L10_435, L11_436, L6_431.ppid)
    if A1_426 then
      for _FORV_15_, _FORV_16_ in ipairs(L8_433) do
        pcall(bm.trigger_sig, L10_435, L11_436, _FORV_16_.ppid)
      end
    end
    if A0_425 then
      for _FORV_15_, _FORV_16_ in ipairs(L9_434) do
        pcall(bm.trigger_sig, L10_435, L11_436, _FORV_16_.ppid)
      end
    end
  end
end
function setMalwareManifest(A0_437, A1_438)
  local L2_439
  L2_439 = "malware_manifest"
  if A1_438 == 0 then
    A1_438 = 3600
  end
  if #A0_437 > 0 then
    MpCommon.SetPersistContextNoPath(L2_439, A0_437, A1_438)
  end
end
function getMalwareManifest()
  local L0_440, L1_441
  L0_440 = "malware_manifest"
  L1_441 = nil
  if MpCommon.GetPersistContextCountNoPath(L0_440) > 0 then
    L1_441 = MpCommon.GetPersistContextNoPath(L0_440)
  end
  return L1_441
end
function isKnownFileExtension(A0_442, A1_443)
  local L2_444, L3_445
  if A0_442 == nil then
    return
  end
  L3_445 = A0_442
  L2_444 = A0_442.match
  L2_444 = L2_444(L3_445, "%.[^/%.]+$")
  if L2_444 == nil then
    return
  end
  if A1_443 == nil or A1_443 == true then
    L3_445 = L2_444
    L2_444 = L3_445 .. "\""
  end
  L3_445 = ".cpt\".gpg\".enc\".e\""
  if string.find(L3_445, L2_444, 1, true) then
    return false
  end
  return mp.GetExtensionClass(string.lower(L2_444)) ~= 0
end
function isMultiExtensionFileName(A0_446)
  if A0_446 == nil or A0_446 == "" then
    return false
  end
  return A0_446:match("%.[^/]-%.[^/]-$") ~= nil
end
function extractAllFileNameExtensions(A0_447)
  local L1_448, L2_449, L3_450, L4_451, L5_452
  L1_448 = {}
  for L5_452 in L2_449(L3_450, L4_451) do
    table.insert(L1_448, L5_452)
  end
  return L2_449, L3_450
end
function isFileExtensionOfInterest(A0_453, A1_454)
  local L2_455
  if A0_453 == nil then
    L2_455 = false
    return L2_455
  end
  L2_455 = A0_453.match
  L2_455 = L2_455(A0_453, "%.[^/%.]+$")
  if L2_455 == nil then
    return false
  end
  if A1_454 == nil or A1_454 == true then
    L2_455 = L2_455 .. "\""
  end
  if mp.GetExtensionClass(string.lower(L2_455)) ~= 4 and mp.GetExtensionClass(string.lower(L2_455)) ~= 0 then
    return true
  end
  return false
end
function GetExtensionClassEx(A0_456, A1_457)
  if A0_456 == nil then
    return
  end
  if A1_457 == nil or A1_457 == true then
    A0_456 = A0_456 .. "\""
  end
  return (mp.GetExtensionClass(A0_456))
end
function addRelatedProcess()
  local L0_458, L1_459, L2_460
  L0_458 = pcall
  L1_459 = bm
  L1_459 = L1_459.get_process_relationships
  L2_460 = L0_458(L1_459)
  if not L0_458 then
    return
  end
  for _FORV_6_, _FORV_7_ in ipairs(L1_459) do
    if _FORV_7_.image_path ~= nil then
      bm.add_related_process(_FORV_7_.ppid)
    end
  end
  for _FORV_6_, _FORV_7_ in ipairs(L2_460) do
    if _FORV_7_.image_path ~= nil then
      bm.add_related_process(_FORV_7_.ppid)
    end
  end
end
function IsProcessExcludedFromRansomwareAnalysis()
  local L0_461, L1_462
  L0_461 = bm
  L0_461 = L0_461.get_current_process_startup_info
  L0_461 = L0_461()
  L1_462 = bm
  L1_462 = L1_462.get_imagepath
  L1_462 = L1_462()
  if L0_461 == nil or L0_461.ppid == nil or L1_462 == nil or L0_461.command_line == nil or L0_461.command_line == "" then
    return true
  elseif IsExcludedByImagePath(L1_462) then
    return true
  elseif CheckProcessImagePathAndCommandlineExclusionLinux(L1_462, L0_461.command_line) then
    return true
  elseif isParentPackageManager(L0_461.ppid, false) then
    return true
  end
  return false
end
function analyzeRansomwarePattern1()
  local L0_463, L1_464, L2_465, L3_466, L4_467, L5_468, L6_469, L7_470, L8_471, L9_472, L10_473, L11_474, L12_475, L13_476, L14_477, L15_478, L16_479, L17_480
  L0_463 = mp
  L0_463 = L0_463.SIGATTR_LOG_SZ
  L1_464 = {}
  L2_465 = {}
  L3_466 = {}
  L4_467 = {}
  L5_468 = 50000000
  L6_469 = 0
  L7_470 = 0
  L8_471 = 0
  L9_472 = bm
  L9_472 = L9_472.GetSignatureMatchDuration
  L9_472 = L9_472()
  if L5_468 < L9_472 then
    L9_472 = mp
    L9_472 = L9_472.CLEAN
    return L9_472
  end
  L9_472 = IsProcessExcludedFromRansomwareAnalysis
  L9_472 = L9_472()
  if L9_472 == true then
    L9_472 = mp
    L9_472 = L9_472.CLEAN
    return L9_472
  end
  L9_472 = bm
  L9_472 = L9_472.get_imagepath
  L9_472 = L9_472()
  if L9_472 == nil or L9_472 == "" then
    return L10_473
  end
  for L13_476 = 1, L0_463 do
    L14_477 = sigattr_tail
    L14_477 = L14_477[L13_476]
    L14_477 = L14_477.attribute
    if L14_477 == 16384 then
      L15_478 = sigattr_tail
      L15_478 = L15_478[L13_476]
      L15_478 = L15_478.utf8p1
      L16_479 = GetFileEntropy
      L17_480 = L15_478
      L16_479 = L16_479(L17_480)
      L17_480 = L2_465[L15_478]
      if L17_480 == nil and L16_479 ~= nil and L16_479 >= 7 then
        L2_465[L15_478] = true
        L17_480 = L15_478.match
        L17_480 = L17_480(L15_478, "%.[^/%.]+$")
        if isKnownFileExtension(L15_478) == false and IsRansomwareProcessImagePathExtensionExcluded(L9_472, L17_480) == false then
          bm.add_related_file(L15_478)
          if L17_480 ~= nil then
            if L1_464[L17_480] == nil then
              L6_469 = L6_469 + 1
              L1_464[L17_480] = 1
            else
              L1_464[L17_480] = L1_464[L17_480] + 1
            end
          end
          if L15_478:match("[^>]*[\\/$]") ~= nil then
            if L4_467[L15_478:match("[^>]*[\\/$]")] == nil then
              L7_470 = L7_470 + 1
              L4_467[L15_478:match("[^>]*[\\/$]")] = 1
            else
              L4_467[L15_478:match("[^>]*[\\/$]")] = L4_467[L15_478:match("[^>]*[\\/$]")] + 1
            end
          end
        end
      end
    end
  end
  if L6_469 == 0 then
    return L10_473
  end
  for L13_476 = 1, L0_463 do
    L14_477 = sigattr_tail
    L14_477 = L14_477[L13_476]
    L14_477 = L14_477.attribute
    if L14_477 == 16387 then
      L15_478 = sigattr_tail
      L15_478 = L15_478[L13_476]
      L15_478 = L15_478.utf8p1
      L16_479 = L2_465[L15_478]
      if L16_479 == nil then
        L16_479 = L3_466[L15_478]
        if L16_479 == nil then
          L16_479 = bm
          L16_479 = L16_479.add_related_file
          L17_480 = L15_478
          L16_479(L17_480)
          L3_466[L15_478] = true
          L17_480 = L15_478
          L16_479 = L15_478.match
          L16_479 = L16_479(L17_480, "%.[^/%.]+$")
          L17_480 = isFileExtensionOfInterest
          L17_480 = L17_480(L15_478)
          if L17_480 then
            L17_480 = IsRansomwareProcessImagePathExtensionExcluded
            L17_480 = L17_480(L9_472, L16_479)
            if L17_480 == false then
              L17_480 = L15_478.match
              L17_480 = L17_480(L15_478, "[^>]*[\\/$]")
              if L17_480 ~= nil and L4_467[L17_480] ~= nil then
                L8_471 = L8_471 + 1
                if L4_467[L17_480] == 1 then
                  L4_467[L17_480] = nil
                else
                  L4_467[L17_480] = L4_467[L17_480] - 1
                end
              end
            end
          end
        end
      end
    end
  end
  if L8_471 == 0 then
    return L10_473
  end
  for L14_477, L15_478 in L11_474(L12_475) do
  end
  if L6_469 == 1 and L10_473 >= 5 and L7_470 == 1 and L8_471 >= 5 then
    L11_474()
    L11_474()
    L14_477 = L11_474
    L15_478 = bm
    L15_478 = L15_478.RelatedStringBMReport
    L12_475(L13_476, L14_477, L15_478)
    return L12_475
  end
  if L6_469 < 3 and L10_473 >= 10 and L7_470 >= 2 and L8_471 >= 3 then
    L11_474()
    L11_474()
    L14_477 = L11_474
    L15_478 = bm
    L15_478 = L15_478.RelatedStringBMReport
    L12_475(L13_476, L14_477, L15_478)
    return L12_475
  end
  return L11_474
end
function analyzeRansomwarePattern2()
  local L0_481, L1_482, L2_483, L3_484, L4_485, L5_486, L6_487, L7_488, L8_489, L9_490, L10_491, L11_492, L12_493, L13_494, L14_495, L15_496, L16_497, L17_498
  L0_481 = mp
  L0_481 = L0_481.SIGATTR_LOG_SZ
  L1_482 = {}
  L2_483 = {}
  L3_484 = {}
  L4_485 = 50000000
  L5_486 = 0
  L6_487 = 0
  L7_488 = bm
  L7_488 = L7_488.GetSignatureMatchDuration
  L7_488 = L7_488()
  if L4_485 < L7_488 then
    L7_488 = mp
    L7_488 = L7_488.CLEAN
    return L7_488
  end
  L7_488 = IsProcessExcludedFromRansomwareAnalysis
  L7_488 = L7_488()
  if L7_488 == true then
    L7_488 = mp
    L7_488 = L7_488.CLEAN
    return L7_488
  end
  L7_488 = bm
  L7_488 = L7_488.get_imagepath
  L7_488 = L7_488()
  if L7_488 == nil or L7_488 == "" then
    return L8_489
  end
  for L11_492 = 1, L0_481 do
    L12_493 = sigattr_tail
    L12_493 = L12_493[L11_492]
    L12_493 = L12_493.attribute
    if L12_493 == 16386 then
      L13_494 = sigattr_tail
      L13_494 = L13_494[L11_492]
      L13_494 = L13_494.utf8p1
      L14_495 = sigattr_tail
      L14_495 = L14_495[L11_492]
      L14_495 = L14_495.utf8p2
      L16_497 = L13_494
      L15_496 = L13_494.match
      L17_498 = "[^>]*[\\/$]"
      L15_496 = L15_496(L16_497, L17_498)
      L17_498 = L14_495
      L16_497 = L14_495.match
      L16_497 = L16_497(L17_498, "[^>]*[\\/$]")
      L17_498 = L13_494.match
      L17_498 = L17_498(L13_494, "%.[^/%.]+$")
      if L16_497 ~= nil and L15_496 ~= nil and L15_496 == L16_497 and L17_498 ~= nil and L14_495:match("%.[^/%.]+$") ~= nil and L14_495:match("%.[^/%.]+$") ~= L17_498 and L2_483[L13_494] == nil then
        L2_483[L13_494] = true
        if isFileExtensionOfInterest(L14_495) and isKnownFileExtension(L13_494) == false and IsRansomwareProcessImagePathExtensionExcluded(L7_488, L17_498) == false then
          if GetFileEntropy(L13_494) == nil then
            L2_483[L13_494] = -1
          else
            L2_483[L13_494] = GetFileEntropy(L13_494)
            if GetFileEntropy(L13_494) >= 6 then
              bm.add_related_file(L13_494)
              if L17_498 ~= nil then
                if L1_482[L17_498] == nil then
                  L5_486 = L5_486 + 1
                  L1_482[L17_498] = 1
                else
                  L1_482[L17_498] = L1_482[L17_498] + 1
                end
              end
              if L13_494:match("[^>]*[\\/$]") ~= nil then
                if L3_484[L13_494:match("[^>]*[\\/$]")] == nil then
                  L6_487 = L6_487 + 1
                  L3_484[L13_494:match("[^>]*[\\/$]")] = 1
                else
                  L3_484[L13_494:match("[^>]*[\\/$]")] = L3_484[L13_494:match("[^>]*[\\/$]")] + 1
                end
              end
            end
          end
        end
      end
    end
  end
  if L5_486 == 0 or L6_487 == 1 then
    return L8_489
  end
  for L12_493, L13_494 in L9_490(L10_491) do
  end
  if L5_486 < 3 and L8_489 >= 10 and L6_487 >= 2 then
    L9_490()
    L9_490()
    L12_493 = L9_490
    L13_494 = bm
    L13_494 = L13_494.RelatedStringBMReport
    L10_491(L11_492, L12_493, L13_494)
    return L10_491
  end
  return L9_490
end
function analyzeRansomwarePattern3()
  local L0_499, L1_500, L2_501, L3_502, L4_503, L5_504, L6_505, L7_506, L8_507, L9_508, L10_509, L11_510, L12_511, L13_512, L14_513, L15_514, L16_515
  L0_499 = mp
  L0_499 = L0_499.SIGATTR_LOG_SZ
  L1_500 = {}
  L2_501 = {}
  L3_502 = {}
  L4_503 = 50000000
  L5_504 = 0
  L6_505 = 0
  L7_506 = 0
  L8_507 = bm
  L8_507 = L8_507.GetSignatureMatchDuration
  L8_507 = L8_507()
  if L4_503 < L8_507 then
    L8_507 = mp
    L8_507 = L8_507.CLEAN
    return L8_507
  end
  L8_507 = IsProcessExcludedFromRansomwareAnalysis
  L8_507 = L8_507()
  if L8_507 == true then
    L8_507 = mp
    L8_507 = L8_507.CLEAN
    return L8_507
  end
  L8_507 = bm
  L8_507 = L8_507.get_current_process_startup_info
  L8_507 = L8_507()
  L9_508 = bm
  L9_508 = L9_508.get_imagepath
  L9_508 = L9_508()
  if L9_508 ~= nil and L9_508 ~= "" and L8_507 ~= nil then
  elseif L10_509 == nil then
    return L10_509
  end
  L14_513 = true
  if not L10_509 then
    L14_513 = true
  elseif L10_509 then
    return L10_509
  end
  for L13_512 = 1, L0_499 do
    L14_513 = sigattr_tail
    L14_513 = L14_513[L13_512]
    L14_513 = L14_513.attribute
    if L14_513 == 16384 then
      L15_514 = sigattr_tail
      L15_514 = L15_514[L13_512]
      L15_514 = L15_514.utf8p1
      L16_515 = L2_501[L15_514]
      if L16_515 == nil then
        L2_501[L15_514] = true
        L16_515 = L15_514.match
        L16_515 = L16_515(L15_514, "%.[^/%.]+$")
        if L16_515 ~= nil and CheckFileExtnIncludeProcessId(L8_507.ppid, L16_515) then
          return mp.CLEAN
        end
        if isKnownFileExtension(L15_514) == false and IsRansomwareProcessImagePathExtensionExcluded(L9_508, L16_515) == false then
          bm.add_related_file(L15_514)
          if L16_515 ~= nil then
            if L1_500[L16_515] == nil then
              L5_504 = L5_504 + 1
              L1_500[L16_515] = 1
            else
              L1_500[L16_515] = L1_500[L16_515] + 1
            end
          end
          if L15_514:match("[^>]*[\\/$]") ~= nil then
            if L3_502[L15_514:match("[^>]*[\\/$]")] == nil then
              L6_505 = L6_505 + 1
              L3_502[L15_514:match("[^>]*[\\/$]")] = 1
            else
              L3_502[L15_514:match("[^>]*[\\/$]")] = L3_502[L15_514:match("[^>]*[\\/$]")] + 1
            end
          end
        elseif isKnownFileExtension(L15_514) == true then
          L7_506 = L7_506 + 1
        end
      end
    end
  end
  if L7_506 > 15 then
    return L10_509
  end
  for L14_513, L15_514 in L11_510(L12_511) do
  end
  if L5_504 == 0 or L6_505 == 1 and L10_509 < 10 then
    return L11_510
  end
  if L5_504 < 3 and (L10_509 >= 10 and L6_505 >= 3 or L10_509 >= 20) then
    L11_510()
    L11_510()
    L14_513 = L11_510
    L15_514 = bm
    L15_514 = L15_514.RelatedStringBMReport
    L12_511(L13_512, L14_513, L15_514)
    return L12_511
  end
  return L11_510
end
function analyzeRansomwarePattern4()
  local L0_516, L1_517, L2_518, L3_519, L4_520, L5_521, L6_522, L7_523, L8_524, L9_525, L10_526, L11_527, L12_528, L13_529, L14_530, L15_531, L16_532, L17_533
  L0_516 = mp
  L0_516 = L0_516.SIGATTR_LOG_SZ
  L1_517 = {}
  L2_518 = {}
  L3_519 = {}
  L4_520 = 150000000
  L5_521 = 0
  L6_522 = 0
  L7_523 = bm
  L7_523 = L7_523.GetSignatureMatchDuration
  L7_523 = L7_523()
  if L4_520 < L7_523 then
    L7_523 = mp
    L7_523 = L7_523.CLEAN
    return L7_523
  end
  L7_523 = IsProcessExcludedFromRansomwareAnalysis
  L7_523 = L7_523()
  if L7_523 == true then
    L7_523 = mp
    L7_523 = L7_523.CLEAN
    return L7_523
  end
  L7_523 = bm
  L7_523 = L7_523.get_imagepath
  L7_523 = L7_523()
  if L7_523 == nil or L7_523 == "" then
    return L8_524
  end
  for L11_527 = 1, L0_516 do
    L12_528 = sigattr_tail
    L12_528 = L12_528[L11_527]
    L12_528 = L12_528.attribute
    if L12_528 == 16386 then
      L13_529 = sigattr_tail
      L13_529 = L13_529[L11_527]
      L13_529 = L13_529.utf8p1
      L14_530 = sigattr_tail
      L14_530 = L14_530[L11_527]
      L14_530 = L14_530.utf8p2
      L16_532 = L13_529
      L15_531 = L13_529.match
      L17_533 = "[^>]*[\\/$]"
      L15_531 = L15_531(L16_532, L17_533)
      L17_533 = L14_530
      L16_532 = L14_530.match
      L16_532 = L16_532(L17_533, "[^>]*[\\/$]")
      L17_533 = L13_529.match
      L17_533 = L17_533(L13_529, "%.[^/%.]+$")
      if L16_532 ~= nil and L15_531 ~= nil and L15_531 == L16_532 and L17_533 ~= nil and L14_530:match("%.[^/%.]+$") ~= nil and L14_530:match("%.[^/%.]+$") ~= L17_533 and isFileExtensionOfInterest(L14_530) and IsRansomwareProcessImagePathExtensionExcluded(L7_523, L17_533) == false and L2_518[L13_529] == nil then
        if GetFileEntropy(L13_529) == nil then
          L2_518[L13_529] = -1
        else
          L2_518[L13_529] = GetFileEntropy(L13_529)
          if GetFileEntropy(L13_529) >= 6 then
            bm.add_related_file(L13_529)
            if L1_517[L17_533] == nil then
              L5_521 = L5_521 + 1
              L1_517[L17_533] = 1
            else
              L1_517[L17_533] = L1_517[L17_533] + 1
            end
            if L3_519[L15_531] == nil then
              L6_522 = L6_522 + 1
              L3_519[L15_531] = 1
            else
              L3_519[L15_531] = L3_519[L15_531] + 1
            end
          end
        end
      end
    end
  end
  for L12_528, L13_529 in L9_525(L10_526) do
  end
  if L5_521 == 0 or L6_522 == 1 and L8_524 < 15 then
    return L9_525
  end
  if L5_521 < 3 and (L8_524 >= 15 and L6_522 >= 2 or L8_524 >= 20) then
    L9_525()
    L9_525()
    L12_528 = L9_525
    L13_529 = bm
    L13_529 = L13_529.RelatedStringBMReport
    L10_526(L11_527, L12_528, L13_529)
    return L10_526
  end
  return L9_525
end
function AnalyzeFileModifiedStats(A0_534, A1_535, A2_536, A3_537)
  local L6_538
  L6_538 = 3
  if A0_534 == "NEW_FILE_CREATED" then
  elseif A0_534 == "FILE_RENAMED_WITH_UNIQUE_EXTN" then
    if versioning.GetCloudBlockLevel() >= 4 then
    end
  elseif A0_534 == "FILE_RENAMED_WITH_KNOWN_EXTN" then
    if versioning.GetCloudBlockLevel() >= 4 then
    else
    end
  end
  if A1_535 == 0 or A2_536 == 1 and A3_537 < 20 then
    return mp.CLEAN
  end
  if A1_535 < L6_538 and (A3_537 >= 15 and A2_536 >= 3 or A0_534 ~= "NEW_FILE_CREATED" and A3_537 >= 20) then
    return mp.INFECTED
  end
  return mp.CLEAN
end
function analyzeRansomwarePattern5(A0_539, A1_540)
  local L2_541, L3_542, L4_543, L5_544, L6_545, L7_546, L8_547, L9_548, L10_549, L11_550, L12_551, L13_552, L14_553
  if A0_539 == nil or A0_539 == "" or A1_540 == nil or A1_540 == "" then
    L2_541 = mp
    L2_541 = L2_541.CLEAN
    return L2_541
  end
  L2_541 = {}
  L3_542 = {}
  L4_543 = {}
  L5_544 = 0
  L6_545 = 0
  L7_546 = 10
  if A1_540 ~= "NEW_FILE_CREATED" then
    L7_546 = 5
  end
  L8_547 = MpCommon
  L8_547 = L8_547.GetPersistContextCountNoPath
  L9_548 = A0_539
  L8_547 = L8_547(L9_548)
  if L7_546 > L8_547 then
    L9_548 = mp
    L9_548 = L9_548.CLEAN
    return L9_548
  end
  L9_548 = MpCommon
  L9_548 = L9_548.GetPersistContextNoPath
  L9_548 = L9_548(L10_549)
  if L9_548 ~= nil then
    for L13_552, L14_553 in L10_549(L11_550) do
      if L3_542[L14_553] == nil then
        if GetFileEntropy(L14_553) == nil then
          L3_542[L14_553] = -1
        else
          L3_542[L14_553] = GetFileEntropy(L14_553)
          if GetFileEntropy(L14_553) >= 6 then
            bm.add_related_file(L14_553)
            if L14_553:match("%.[^/%.]+$") ~= nil then
              if L2_541[L14_553:match("%.[^/%.]+$")] == nil then
                L5_544 = L5_544 + 1
                L2_541[L14_553:match("%.[^/%.]+$")] = 1
              else
                L2_541[L14_553:match("%.[^/%.]+$")] = L2_541[L14_553:match("%.[^/%.]+$")] + 1
              end
            end
            if L14_553:match("[^>]*[\\/$]") ~= nil then
              if L4_543[L14_553:match("[^>]*[\\/$]")] == nil then
                L6_545 = L6_545 + 1
                L4_543[L14_553:match("[^>]*[\\/$]")] = 1
              else
                L4_543[L14_553:match("[^>]*[\\/$]")] = L4_543[L14_553:match("[^>]*[\\/$]")] + 1
              end
            end
          end
        end
      end
    end
  end
  for L14_553, _FORV_15_ in L11_550(L12_551) do
  end
  L14_553 = L6_545
  if L11_550 == L12_551 then
    L11_550()
    L11_550()
    L14_553 = L11_550
    L12_551(L13_552, L14_553, bm.RelatedStringBMReport)
    L14_553 = A0_539
    L12_551(L13_552, L14_553, bm.RelatedStringBMReport)
    return L12_551
  end
  return L11_550
end
function bm_AddRelatedFileFromCommandLine(A0_554, A1_555, A2_556, A3_557)
  local L4_558, L5_559, L6_560, L7_561, L8_562, L9_563, L10_564, L11_565, L12_566
  if A0_554 ~= nil then
    L4_558 = #A0_554
  elseif L4_558 <= 0 then
    return
  end
  L4_558 = string
  L4_558 = L4_558.lower
  L5_559 = A0_554
  L4_558 = L4_558(L5_559)
  if L4_558 == "bm" then
    L4_558 = bm
    L4_558 = L4_558.get_current_process_startup_info
    L4_558 = L4_558()
    L4_558 = L4_558.ppid
    if L4_558 ~= nil then
      L5_559 = string
      L5_559 = L5_559.lower
      L6_560 = mp
      L6_560 = L6_560.GetProcessCommandLine
      L7_561 = L4_558
      L12_566 = L6_560(L7_561)
      L5_559 = L5_559(L6_560, L7_561, L8_562, L9_563, L10_564, L11_565, L12_566, L6_560(L7_561))
      A0_554 = L5_559
    end
  end
  L4_558 = mp
  L4_558 = L4_558.GetExecutablesFromCommandLine
  L5_559 = A0_554
  L4_558 = L4_558(L5_559)
  if A3_557 ~= nil then
    L5_559 = mp
    L5_559 = L5_559.bitand
    L6_560 = A3_557
    L7_561 = 8
    L5_559 = L5_559(L6_560, L7_561)
    if L5_559 == 8 then
      L5_559 = string
      L5_559 = L5_559.find
      L6_560 = A0_554
      L7_561 = ","
      L5_559 = L5_559(L6_560, L7_561, L8_562, L9_563)
      if L5_559 then
        L5_559 = string
        L5_559 = L5_559.gsub
        L6_560 = A0_554
        L7_561 = ","
        L6_560 = L5_559(L6_560, L7_561, L8_562)
        if L6_560 <= 20 then
          L7_561 = string
          L7_561 = L7_561.gmatch
          L7_561 = L7_561(L8_562, L9_563)
          for L11_565 in L7_561, nil, nil do
            L12_566 = table
            L12_566 = L12_566.insert
            L12_566(L4_558, L11_565)
          end
        end
      end
    end
  end
  if L4_558 ~= nil then
    L5_559 = #L4_558
  elseif L5_559 <= 0 then
    return
  end
  L5_559 = type
  L6_560 = A1_555
  L5_559 = L5_559(L6_560)
  L6_560 = 4
  if A2_556 ~= nil then
    L6_560 = A2_556
  end
  L7_561 = {}
  for L11_565, L12_566 in L8_562(L9_563) do
    if A3_557 ~= nil and mp.bitand(A3_557, 1) == 1 then
      L12_566 = mp.ContextualExpandEnvironmentVariables(L12_566)
    end
    if sysio.IsFileExists(L12_566) then
      if L5_559 == "table" then
      elseif L5_559 == "string" then
      else
      end
      if true == true then
        if A3_557 ~= nil and mp.bitand(A3_557, 2) == 2 then
          if mp.IsKnownFriendlyFile(L12_566, true, true) == nil or mp.IsKnownFriendlyFile(L12_566, true, true) == false then
            if mp.bitand(A3_557, 4) == 4 then
              bm.add_threat_file(L12_566)
            else
              bm.add_related_file(L12_566)
            end
            table.insert(L7_561, L12_566)
          end
        elseif A3_557 ~= nil and mp.bitand(A3_557, 4) == 4 then
          bm.add_threat_file(L12_566)
          table.insert(L7_561, L12_566)
        else
          bm.add_related_file(L12_566)
          table.insert(L7_561, L12_566)
        end
      end
    end
  end
  if L8_562 >= 1 then
    return L7_561
  end
  return
end
function GetFileEntropy(A0_567, A1_568)
  local L2_569, L3_570
  if A0_567 == nil or A0_567 == "" then
    L2_569 = nil
    return L2_569
  end
  L2_569 = sysio
  L2_569 = L2_569.IsFileExists
  L3_570 = A0_567
  L2_569 = L2_569(L3_570)
  if L2_569 == false then
    L2_569 = nil
    return L2_569
  end
  L2_569 = sysio
  L2_569 = L2_569.GetFileSize
  L3_570 = A0_567
  L2_569 = L2_569(L3_570)
  if not L2_569 then
    L3_570 = nil
    return L3_570
  end
  if not (L2_569 < 65536) or not L2_569 then
    L2_569 = 65536
  end
  if not A1_568 or not (A1_568 < L2_569) or not A1_568 then
    A1_568 = L2_569
  end
  L3_570 = sysio
  L3_570 = L3_570.ReadFile
  L3_570 = L3_570(A0_567, 0, A1_568)
  if L3_570 == nil then
    return nil
  end
  return crypto.ComputeEntropy(L3_570)
end
function contains(A0_571, A1_572, A2_573)
  local L3_574, L4_575, L5_576, L6_577, L7_578
  if L3_574 ~= "string" then
    return L3_574
  end
  if L3_574 == "nil" then
    A2_573 = true
  end
  if A2_573 ~= nil then
    if L3_574 ~= "boolean" then
      return L3_574
    end
  end
  if L3_574 ~= "table" then
    if L3_574 ~= "string" then
      return L3_574
    end
  end
  if L3_574 == "string" then
    A1_572 = L3_574
  end
  for L6_577, L7_578 in L3_574(L4_575) do
    if A2_573 then
      L7_578 = L7_578:lower()
      A0_571 = A0_571:lower()
    end
    if string.find(A0_571, L7_578, 1, A2_573) then
      return true
    end
  end
  return L3_574
end
function RemoveStrConcat(A0_579, A1_580)
  local L2_581, L3_582, L4_583, L5_584, L6_585
  if L2_581 == "string" then
  elseif L2_581 ~= "table" then
    return A0_579
  end
  for L5_584, L6_585 in L2_581(L3_582) do
    if type(L6_585) == "string" and string.len(L6_585) == 1 then
      A0_579 = string.gsub(A0_579, "'%s*%" .. L6_585 .. "%s*'", "")
      A0_579 = string.gsub(A0_579, "\"%s*%" .. L6_585 .. "%s*\"", "")
    end
  end
  return A0_579
end
function NormalizeCmdline(A0_586, A1_587)
  local L2_588, L3_589, L4_590, L5_591, L6_592
  L2_588 = A1_587
  L3_589 = type
  L4_590 = A0_586
  L3_589 = L3_589(L4_590)
  if L3_589 == "string" then
    L3_589 = type
    L4_590 = A1_587
    L3_589 = L3_589(L4_590)
  elseif L3_589 ~= "string" then
    return L2_588
  end
  if A1_587 == "" then
    return L2_588
  end
  if A0_586 == "cmd" then
    L3_589 = string
    L3_589 = L3_589.find
    L4_590 = A1_587
    L5_591 = "^"
    L6_592 = 1
    L3_589 = L3_589(L4_590, L5_591, L6_592, true)
    if L3_589 then
      L3_589 = string
      L3_589 = L3_589.gsub
      L4_590 = A1_587
      L5_591 = "^"
      L6_592 = ""
      L3_589 = L3_589(L4_590, L5_591, L6_592)
      L4_590 = string
      L4_590 = L4_590.gsub
      L5_591 = L3_589
      L6_592 = "%s+"
      L4_590 = L4_590(L5_591, L6_592, " ")
      L3_589 = L4_590
      L4_590 = string
      L4_590 = L4_590.lower
      L5_591 = L3_589
      L4_590 = L4_590(L5_591)
      L3_589 = L4_590
      L2_588 = L3_589
    end
  elseif A0_586 == "powershell" then
    L3_589 = A1_587
    L4_590 = false
    L5_591 = string
    L5_591 = L5_591.find
    L6_592 = L3_589
    L5_591 = L5_591(L6_592, "`", 1, true)
    if L5_591 then
      L5_591 = string
      L5_591 = L5_591.gsub
      L6_592 = L3_589
      L5_591 = L5_591(L6_592, "`", "")
      L3_589 = L5_591
      L4_590 = true
    end
    L5_591 = string
    L5_591 = L5_591.find
    L6_592 = L3_589
    L5_591 = L5_591(L6_592, "\"\"", 1, true)
    if L5_591 then
      L5_591 = string
      L5_591 = L5_591.gsub
      L6_592 = L3_589
      L5_591 = L5_591(L6_592, "\"\"", "")
      L3_589 = L5_591
      L4_590 = true
    end
    L5_591 = string
    L5_591 = L5_591.find
    L6_592 = L3_589
    L5_591 = L5_591(L6_592, "\"+\"", 1, true)
    if L5_591 then
      L5_591 = string
      L5_591 = L5_591.gsub
      L6_592 = L3_589
      L5_591 = L5_591(L6_592, "\"%+\"", "")
      L3_589 = L5_591
      L4_590 = true
    end
    L5_591 = string
    L5_591 = L5_591.find
    L6_592 = L3_589
    L5_591 = L5_591(L6_592, "'+'", 1, true)
    if L5_591 then
      L5_591 = string
      L5_591 = L5_591.gsub
      L6_592 = L3_589
      L5_591 = L5_591(L6_592, "'%+'", "")
      L3_589 = L5_591
      L4_590 = true
    end
    L5_591 = string
    L5_591 = L5_591.match
    L6_592 = L3_589
    L5_591 = L5_591(L6_592, "%-[eE][ncodemaNCODEMA]*%s+\"?%s*([A-Za-z0-9/%+=]+)")
    if L5_591 then
      L6_592 = MpCommon
      L6_592 = L6_592.Base64Decode
      L6_592 = L6_592(L5_591)
      if not L6_592 then
        return L3_589
      end
      L6_592 = string.gsub(L6_592, "%z", "")
      L6_592 = string.lower(L6_592)
      L6_592 = string.gsub(L6_592, "^%s+", "")
      L6_592 = string.gsub(L6_592, "%s+$", "")
      L6_592 = string.gsub(L6_592, "%s+", " ")
      L6_592 = string.gsub(L6_592, "`", "")
      L6_592 = RemoveStrConcat(L6_592, {"+"})
      L6_592 = string.gsub(L6_592, " *, *", ",")
      L2_588 = L6_592
    elseif L4_590 then
      L2_588 = L3_589
    end
  end
  return L2_588
end
function DumpTable(A0_593, A1_594)
  local L2_595, L3_596, L4_597, L5_598, L6_599, L7_600, L8_601, L9_602, L10_603
  L2_595 = type
  L3_596 = A0_593
  L2_595 = L2_595(L3_596)
  if L2_595 == "table" then
    L3_596 = type
    L4_597 = A1_594
    L3_596 = L3_596(L4_597)
    if L3_596 ~= "number" then
      A1_594 = 1
    end
    L3_596 = "{"
    L4_597 = 0
    for L8_601 in L5_598(L6_599) do
      L4_597 = L4_597 + 1
    end
    for L9_602, L10_603 in L6_599(L7_600) do
      L3_596 = L3_596 .. "\n"
      L3_596 = L3_596 .. string.rep("   ", A1_594)
      if type(L9_602) ~= "number" then
        L9_602 = "'" .. L9_602 .. "'"
      end
      L3_596 = L3_596 .. L9_602 .. " = " .. DumpTable(L10_603, A1_594 + 1)
      if L4_597 > L5_598 then
        L3_596 = L3_596 .. ", "
      end
    end
    L3_596 = L6_599 .. L7_600
    L9_602 = A1_594 - 1
    L3_596 = L6_599 .. L7_600
    return L6_599
  elseif L2_595 == "string" then
    L3_596 = string
    L3_596 = L3_596.gsub
    L4_597 = A0_593
    L3_596 = L3_596(L4_597, L5_598, L6_599)
    L4_597 = "'"
    L4_597 = L4_597 .. L5_598 .. L6_599
    return L4_597
  else
    if A0_593 == nil then
      A0_593 = "Empty_Table"
    end
    L3_596 = tostring
    L4_597 = A0_593
    return L3_596(L4_597)
  end
end
function isMatchedWithRansomNotePattern(A0_604, A1_605)
  local L2_606, L3_607, L4_608, L5_609, L6_610, L7_611, L8_612, L9_613, L10_614
  L2_606 = {}
  L3_607 = {
    L4_608,
    L5_609,
    L6_610,
    L7_611,
    L8_612,
    L9_613,
    L10_614,
    "desk",
    "where",
    "vault",
    "leame",
    "\230\150\135\228\187\182\232\167\163\229\175\134\229\184\174\229\138\169",
    "\208\191\208\176\209\128\208\190\208\187\209\140",
    "unlock",
    "ransom",
    "readme",
    "please",
    "locked",
    "warning",
    "restore",
    "recover",
    "rec0ver",
    "payment",
    "install",
    "h_e_l_p",
    "encrypt",
    "decrypt",
    "crjoker",
    "rarvault",
    "mensagem",
    "fs0ciety",
    "de-crypt",
    "criptoso",
    "beni oku",
    "_what_is",
    "zino_note",
    "wallpaper",
    "infection",
    "attention",
    "important!"
  }
  L4_608 = "yur"
  L5_609 = "tox"
  L9_613 = "more"
  L10_614 = "help"
  L2_606[0] = L3_607
  L3_607 = {
    L4_608,
    L5_609,
    L6_610,
    L7_611,
    L8_612,
    L9_613,
    L10_614,
    "getyoufiles",
    "enigma_encr",
    "_descifrado",
    "yougothacked",
    "shtodelatvam",
    "saving grace",
    "\228\189\160\231\154\132\230\170\148\230\161\136\232\162\171\230\136\145\229\128\145\229\138\160\229\175\134\229\149\166!!!",
    "thxforyurtyme",
    "desktoposiris",
    "buyunlockcode",
    "take_seriously",
    "me-enced-files",
    "instructionaga",
    "read-for-hellpp",
    "de_crypt_readme",
    "we-must-dec-files",
    "allfilesarelocked",
    "@_use_to_fix_jjny",
    "!!!!!aten\195\167\195\163o!!!!!",
    "try-read-me-to-dec",
    "desifrovani_pokyny",
    "leer_inmediatamente",
    "check-it-help-files",
    "sifre_cozme_talimati",
    "let-me-try-dec-files",
    "_files_are_encrypted",
    "whathappendtoyourfiles",
    "merry_i_love_you_bruce",
    "entschlusseln_hinweise",
    "no-problem-we-dec-files",
    "istruzioni_decrittazione",
    "\208\186\208\176\208\186 \209\128\208\176\209\157\209\136\208\184\209\132\209\128\208\190\208\178\208\176\209\130\209\140 \209\132\208\176\208\185\208\187\209\139!!!",
    "oksowathappendtoyourfiles",
    "000-if-you-want-dec-files",
    "ontsleutelings_instructies",
    "nomoreransom_note_original",
    "if_want_files_back_pls_read",
    "comment d\195\169bloquer mes fichiers",
    "recupere seus arquivos. leia-me!",
    "dosyalariniza ula\197\159mak \196\176\195\167\196\176n a\195\167iniz",
    "wie_zum_wiederherstellen_von_dateien",
    "_adatok_visszaallitasahoz_utasitasok",
    "como descriptografar os seus arquivos"
  }
  L4_608 = "files_back"
  L5_609 = "dummy_file"
  L9_613 = "\208\191\209\128\208\190\209\135\209\130\208\184_\208\188\208\181\208\189\209\157"
  L10_614 = "instruction"
  L2_606[1] = L3_607
  if A0_604 ~= nil and A0_604 ~= "" then
    L3_607 = L2_606[A1_605]
  elseif L3_607 == nil then
    L3_607 = nil
    return L3_607
  end
  L4_608 = A0_604
  L3_607 = A0_604.match
  L5_609 = "[^>](.-)([^\\/]-%.?([^%.\\/]*))$"
  L5_609 = L3_607(L4_608, L5_609)
  if L4_608 == nil then
    return L6_610
  end
  for L9_613, L10_614 in L6_610(L7_611) do
    if string.find(L4_608:lower(), L10_614, 1, true) then
      return true
    end
  end
  return L6_610
end
function setPersistContextNoPathForPid(A0_615, A1_616, A2_617, A3_618)
  local L4_619, L5_620, L6_621
  if A0_615 == nil or A0_615 == "" or A1_616 == nil or A1_616 == "" then
    return
  end
  L4_619 = string
  L4_619 = L4_619.match
  L5_620 = A0_615
  L6_621 = "pid:(%w+),ProcessStart:(%w+)"
  L5_620 = L4_619(L5_620, L6_621)
  if L4_619 ~= nil and L5_620 ~= nil then
    L6_621 = string
    L6_621 = L6_621.lower
    L6_621 = L6_621(L4_619 .. "_" .. L5_620 .. "_" .. A1_616)
    if A3_618 == 0 then
      A3_618 = 3600
    end
    if #A2_617 > 0 then
      MpCommon.SetPersistContextNoPath(L6_621, A2_617, A3_618)
    end
  end
end
function getPersistContextNoPathForPid(A0_622, A1_623)
  local L2_624, L3_625, L4_626
  if A0_622 == nil or A0_622 == "" or A1_623 == nil or A1_623 == "" then
    return
  end
  L2_624 = string
  L2_624 = L2_624.match
  L3_625 = A0_622
  L4_626 = "pid:(%w+),ProcessStart:(%w+)"
  L3_625 = L2_624(L3_625, L4_626)
  if L2_624 ~= nil and L3_625 ~= nil then
    L4_626 = string
    L4_626 = L4_626.lower
    L4_626 = L4_626(L2_624 .. "_" .. L3_625 .. "_" .. A1_623)
    if MpCommon.GetPersistContextCountNoPath(L4_626) > 0 then
      return MpCommon.GetPersistContextNoPath(L4_626)
    end
  end
end
function analyzeRansomNotePattern(A0_627)
  local L1_628, L2_629, L3_630, L4_631, L5_632, L6_633, L7_634, L8_635, L9_636, L10_637, L11_638, L12_639, L13_640, L14_641, L15_642
  L1_628 = mp
  L1_628 = L1_628.SIGATTR_LOG_SZ
  L2_629 = {}
  L3_630 = 180
  if A0_627 == nil then
    L4_631 = mp
    L4_631 = L4_631.CLEAN
    return L4_631
  end
  L4_631 = "ransom_note_pattern_"
  L5_632 = A0_627
  L4_631 = L4_631 .. L5_632
  L5_632 = bm
  L5_632 = L5_632.get_current_process_startup_info
  L5_632 = L5_632()
  if L5_632 == nil then
    L6_633 = mp
    L6_633 = L6_633.CLEAN
    return L6_633
  end
  L6_633 = L5_632.ppid
  if L6_633 == nil or L6_633 == "" then
    return L7_634
  end
  if L7_634 == true then
    return L7_634
  end
  for L10_637 = 1, L1_628 do
    if L11_638 == 16384 then
      L12_639 = sigattr_tail
      L12_639 = L12_639[L10_637]
      L12_639 = L12_639.utf8p1
      if L12_639 == nil or L12_639 == "" then
        L13_640 = mp
        L13_640 = L13_640.CLEAN
        return L13_640
      end
      L13_640 = L2_629[L12_639]
      if L13_640 == nil then
        L2_629[L12_639] = true
        L13_640 = isMatchedWithRansomNotePattern
        L14_641 = L12_639
        L15_642 = A0_627
        L13_640 = L13_640(L14_641, L15_642)
        if L13_640 == true then
          L13_640 = setPersistContextNoPathForPid
          L14_641 = L6_633
          L15_642 = L4_631
          L13_640(L14_641, L15_642, {L12_639}, L3_630)
        else
          L13_640 = mp
          L13_640 = L13_640.CLEAN
          return L13_640
        end
      end
    end
  end
  if L8_635 ~= nil then
    for L12_639, L13_640 in L9_636(L10_637) do
      L14_641 = bm
      L14_641 = L14_641.add_related_file
      L15_642 = L13_640
      L14_641(L15_642)
      L15_642 = L13_640
      L14_641 = L13_640.match
      L15_642 = L14_641(L15_642, "[^>](.-)([^\\/]-%.?([^%.\\/]*))$")
      if L14_641 ~= nil and L15_642 ~= nil then
        if not L7_634[L15_642] then
          L7_634[L15_642] = {}
        end
        if not L7_634[L15_642][L14_641] then
          L7_634[L15_642][L14_641] = true
        end
        for _FORV_21_ in pairs(L7_634[L15_642]) do
        end
        if 0 + 1 >= 5 then
          reportRelatedBmHits()
          addRelatedProcess()
          bm.add_related_string("file_metadata", L15_642, bm.RelatedStringBMReport)
          return mp.INFECTED
        end
      end
    end
  end
  return L9_636
end
function analyzeEsxcliProcessPattern(A0_643)
  local L1_644, L2_645, L3_646, L4_647, L5_648, L6_649, L7_650, L8_651, L9_652, L10_653
  L1_644 = {}
  L2_645 = 60
  if A0_643 == nil then
    L3_646 = mp
    L3_646 = L3_646.CLEAN
    return L3_646
  end
  L3_646 = "esxcli_pattern_ctx"
  L4_647 = MpCommon
  L4_647 = L4_647.GetPersistContextCountNoPath
  L5_648 = L3_646
  L4_647 = L4_647(L5_648)
  if L4_647 > 0 then
    L4_647 = MpCommon
    L4_647 = L4_647.GetPersistContextNoPath
    L5_648 = L3_646
    L4_647 = L4_647(L5_648)
    L5_648 = 1
    if L4_647 ~= nil then
      for L9_652, L10_653 in L6_649(L7_650) do
        bm.add_related_string("escxli_cmd", L10_653, bm.RelatedStringBMReport)
        L5_648 = L5_648 + 1
        if L5_648 >= 3 then
          reportRelatedBmHits()
          addRelatedProcess()
          return mp.INFECTED
        end
      end
    end
  else
    L4_647 = MpCommon
    L4_647 = L4_647.SetPersistContextNoPath
    L5_648 = L3_646
    L4_647(L5_648, L6_649, L7_650)
    L4_647 = bm
    L4_647 = L4_647.add_related_string
    L5_648 = "escxli_cmd"
    L4_647(L5_648, L6_649, L7_650)
  end
  L4_647 = mp
  L4_647 = L4_647.CLEAN
  return L4_647
end
function GetFileName(A0_654, A1_655)
  if type(A0_654) ~= "string" then
    return
  end
  if A1_655 == false then
    return (A0_654:match("([^\\]+)$"))
  end
  return A0_654:match("([^\\]+)$"):lower()
end
function QueryProcContext(A0_656, A1_657)
  local L2_658, L3_659, L4_660
  L2_658 = type
  L3_659 = A0_656
  L2_658 = L2_658(L3_659)
  if L2_658 ~= "table" then
    return
  end
  L2_658 = next
  L3_659 = A1_657
  L2_658 = L2_658(L3_659)
  if L2_658 ~= nil and A1_657 ~= nil then
    L2_658 = type
    L3_659 = A1_657
    L2_658 = L2_658(L3_659)
  elseif L2_658 ~= "table" then
    L2_658 = {}
    L2_658.min = 0
    L2_658.max = 1
    A1_657 = L2_658
  end
  if A1_657 ~= nil then
    L2_658 = type
    L3_659 = A1_657.min
    L2_658 = L2_658(L3_659)
    if L2_658 == "number" then
      L2_658 = type
      L3_659 = A1_657.max
      L2_658 = L2_658(L3_659)
      if L2_658 == "number" then
        L2_658 = A1_657.min
        L3_659 = A1_657.max
      end
    elseif not (L2_658 <= L3_659) then
      return
    end
  end
  L2_658 = {}
  L3_659 = {}
  L3_659.id = "EMAILCLIENT"
  L2_658.outlook = L3_659
  L3_659 = {}
  L3_659.id = "EMAILCLIENT"
  L2_658.thunderbird = L3_659
  L3_659 = {}
  L3_659.id = "EMAILCLIENT"
  L2_658.wlmail = L3_659
  L3_659 = {}
  L3_659.id = "BROWSER"
  L2_658.edge = L3_659
  L3_659 = {}
  L3_659.id = "BROWSER"
  L2_658.msedge = L3_659
  L3_659 = {}
  L3_659.id = "BROWSER"
  L2_658.iexplore = L3_659
  L3_659 = {}
  L3_659.id = "BROWSER"
  L2_658.chrome = L3_659
  L3_659 = {}
  L3_659.id = "BROWSER"
  L2_658.firefox = L3_659
  L3_659 = {}
  L3_659.id = "BROWSER"
  L2_658.opera = L3_659
  L3_659 = {}
  L3_659.id = "OFFICE"
  L2_658.winword = L3_659
  L3_659 = {}
  L3_659.id = "OFFICE"
  L2_658.excel = L3_659
  L3_659 = {}
  L3_659.id = "OFFICE"
  L2_658.powerpnt = L3_659
  L3_659 = {}
  L3_659.id = "OFFICE"
  L2_658.mspub = L3_659
  L3_659 = {}
  L3_659.id = "SCRIPTENG"
  L2_658.wscript = L3_659
  L3_659 = {}
  L3_659.id = "SCRIPTENG"
  L2_658.cscript = L3_659
  L3_659 = {}
  L3_659.id = "SCRIPTENG"
  L2_658.mshta = L3_659
  L3_659 = {}
  L3_659.id = "SCRIPTENG"
  L2_658.powershell = L3_659
  L3_659 = {}
  L3_659.id = "SCRIPTENG"
  L2_658.pwsh = L3_659
  L3_659 = {}
  L3_659.id = "JAVA"
  L2_658.java = L3_659
  L3_659 = {}
  L3_659.id = "JAVA"
  L2_658.javaw = L3_659
  L3_659 = {}
  L3_659.id = "JAVA"
  L2_658.javaws = L3_659
  L3_659 = {}
  L3_659.id = "MSI"
  L2_658.msiexec = L3_659
  L3_659 = {}
  L3_659.id = "WMI"
  L2_658.wmiprvse = L3_659
  L3_659 = {}
  L3_659.id = "WMI"
  L2_658.wmic = L3_659
  L3_659 = {}
  L3_659.id = "CMD"
  L2_658.cmd = L3_659
  L3_659 = {}
  L3_659.id = "RUNDLL"
  L2_658.rundll32 = L3_659
  L3_659 = {}
  L3_659.id = "REGSVR32"
  L2_658.regsvr32 = L3_659
  L3_659 = {}
  L3_659.id = "REGUTIL"
  L2_658.reg = L3_659
  L3_659 = {}
  L3_659.id = "WABMIG"
  L2_658.wabmig = L3_659
  L3_659 = {}
  L4_660 = add_parents
  L4_660 = L4_660(nil, A1_657.max, nil)
  L3_659 = L4_660
  L4_660 = next
  L4_660 = L4_660(L3_659)
  if L4_660 == nil then
    return
  end
  L4_660 = {}
  for _FORV_8_, _FORV_9_ in ipairs(L3_659) do
    if _FORV_9_.image_path ~= nil and L2_658[GetFileName(_FORV_9_.image_path):gsub(".exe$", "")] ~= nil and L2_658[GetFileName(_FORV_9_.image_path):gsub(".exe$", "")].id ~= nil then
      for _FORV_15_, _FORV_16_ in ipairs(A0_656) do
        if _FORV_16_ == L2_658[GetFileName(_FORV_9_.image_path):gsub(".exe$", "")].id and _FORV_8_ >= A1_657.min and _FORV_8_ <= A1_657.max then
          L4_660[_FORV_8_] = L2_658[GetFileName(_FORV_9_.image_path):gsub(".exe$", "")].id
        end
      end
    end
  end
  if next(L4_660) == nil then
    return false
  end
  return L4_660
end
function GetExtensionFromGenericRansomContext(A0_661)
  if A0_661 == nil or A0_661 == "" then
    return nil
  end
  if MpCommon.GetPersistContextNoPath(A0_661) == nil then
    return nil
  end
  for _FORV_5_ = 1, #MpCommon.GetPersistContextNoPath(A0_661) do
    if string.sub(MpCommon.GetPersistContextNoPath(A0_661)[_FORV_5_], 1, 1) == "." then
      return MpCommon.GetPersistContextNoPath(A0_661)[_FORV_5_]
    end
  end
  return _FOR_
end
function isKnownRansomExtension(A0_662, A1_663)
  local L2_664
  L2_664 = ".cpt\".darkside\".ecrypt\".crypt\".readme_to_restore\".kimcilware\".lilocked\".encrypted\".pysa\".rhkrc\".qoxaq\".naixq\".7rspj\".redrum\".grinch\".thanos\".21k5p\".ryk\".cry\".enc\".shutdown57\".gnncry\".itssoeasy\""
  if A0_662 == nil or A0_662 == "" then
    return nil
  end
  if string.sub(A0_662, 1, 1) ~= "." then
    return nil
  end
  if A1_663 == nil or A1_663 == true then
    A0_662 = A0_662 .. "\""
  end
  if string.find(L2_664, A0_662, 1, true) then
    return true
  end
end
function IsPathIncludedLinuxRansomCheck(A0_665)
  local L1_666, L2_667, L3_668, L4_669, L5_670, L6_671
  if A0_665 == nil or A0_665 == "" then
    L1_666 = false
    return L1_666
  end
  L1_666 = {
    L2_667,
    L3_668,
    L4_669,
    L5_670,
    L6_671,
    "/data/www/",
    "/etc/nginx/",
    "public_html/",
    "/srv/www/",
    "/etc/httpd/",
    "/srv/http/",
    "/var/lib/redis/",
    "/var/opt/redislabs/",
    "/data/db/",
    "/var/db/",
    "/.git/",
    "/.svn/",
    "/usr/share/nginx",
    "/vmfs/volumes/",
    "/sbin/auditd",
    "/usr/sbin/shibd"
  }
  L5_670 = "/var/log/apache2/"
  L6_671 = "/var/www/"
  for L5_670, L6_671 in L2_667(L3_668) do
    if L6_671 ~= nil and string.find(A0_665, L6_671, 1, true) then
      return true
    end
  end
  return L2_667
end
function reportTimingData()
  local L0_672, L1_673, L2_674, L3_675
  L0_672 = {}
  L1_673 = bm
  L1_673 = L1_673.get_current_process_startup_info
  L1_673 = L1_673()
  L2_674 = MpCommon
  L2_674 = L2_674.GetCurrentTimeT
  L2_674 = L2_674()
  L0_672.current_time = L2_674
  L2_674 = string
  L2_674 = L2_674.match
  L3_675 = L1_673.ppid
  L3_675 = L2_674(L3_675, "pid:(%w+),ProcessStart:(%w+)")
  L0_672.pid = L2_674
  L0_672.startTime = tonumber(L3_675) / 10000000 - 11644473600
  L0_672.time_delta = L0_672.current_time - L0_672.startTime
  L0_672.sig_count = bm.get_sig_count()
  bm.add_related_string("timing", safeJsonSerialize(L0_672), bm.RelatedStringBMReport)
  return L0_672
end
function IsExcludedByImagePath(A0_676)
  local L1_677, L2_678, L3_679, L4_680, L5_681, L6_682, L7_683
  if A0_676 == nil or A0_676 == "" then
    L1_677 = false
    return L1_677
  end
  L2_678 = A0_676
  L1_677 = A0_676.lower
  L1_677 = L1_677(L2_678)
  L2_678 = {
    L3_679,
    L4_680,
    L5_681,
    L6_682,
    L7_683,
    "/opt/microsoft/mdatp/sbin/wdavdaemon",
    "/opt/tanium/taniumclient/taniumclient",
    "/opt/tanium/taniumclient/taniumcx",
    "/opt/tanium/taniumclient/tools/epi/taniumendpointindex",
    "/usr/bin/svn",
    "/usr/bin/rpm",
    "/bin/rpm",
    "/bin/yum",
    "/usr/bin/yum",
    "/usr/sbin/logrotate",
    "/usr/bin/unzip",
    "/usr/bin/git",
    "/usr/lib/git-core/git",
    "/usr/bin/mandb",
    "/usr/lib/man-db/mandb",
    "/usr/bin/ccache",
    "/usr/bin/azcopy",
    "/usr/bin/scp",
    "/usr/bin/cp",
    "/usr/bin/mv",
    "/usr/bin/touch",
    "/bin/cp",
    "/bin/mv",
    "/bin/touch",
    "/usr/openv/var/tmp/telemetry",
    "/opt/rapid7/ir_agent/components/insight_agent",
    "/opt/rapid7/ir_agent/ir_agent",
    "/usr/sbin/esensor",
    "/usr/bin/apt-get",
    "/usr/bin/apt",
    "/opt/splunk/bin/splunkd",
    "/opt/splunk/bin/splunk-optimize",
    "/opt/splunk/bin/mongod",
    "/opt/google/chrome/chrome",
    "/usr/bin/vim",
    "/opt/besclient/bin/besclient",
    "/opt/nessus/sbin/nessusd",
    "/opt/tableau/tableau_server/packages",
    "/var/ossec/bin/ossec-syscheckd",
    "/opt/tivoli/tsm/client/ba/bin/dsmc",
    "/usr/bin/containerd",
    "/opt/jc/bin/jumpcloud-agent",
    "/usr/bin/rubrik/backup_agent_main",
    "/opt/microsoft/omsagent/plugin/omsbaseline",
    "/usr/bin/zypper",
    L3_679,
    L4_680,
    L5_681,
    L6_682,
    L7_683,
    "/usr/sbin/useradd",
    "/usr/bin/xclient",
    "/usr/nx/bin/nxserver.bin",
    "/usr/bin/newrelic-infra",
    "/opt/logrhythm/scsm/bin/scsmd",
    "/usr/local/bin/azsecd",
    "/usr/bin/xbstream",
    "/opt/bitdefender/bin/bdupdated",
    "/usr/sbin/cupsd",
    "/opt/gitlab/embedded/bin/svlogd",
    "/opt/illumio_ven/bin/venPlatformHandler",
    "/opt/ds_agent/ds_agent",
    "/usr/bin/dockerd",
    "/usr/share/grafana/bin/grafana-server",
    "/opt/jp1ajs2/bin/ajsschd",
    "/opt/jp1ajs2/bin/ajsflowd",
    "/opt/kaspersky/klnagent64/sbin/klnagent",
    "/usr/bin/doxygen",
    "/opt/mf/bpm/jre/bin/bpm",
    "/opt/generalstorage/dsmisi/bin/dsmisi",
    "/opt/firefox/updater",
    "/opt/resolve/bin/resolve",
    "/opt/couchbase/bin/memcached",
    "/usr/local/nagios/bin/npcd"
  }
  L6_682 = "/usr/sbin/grub-install"
  L7_683 = "/usr/sbin/grub2-install"
  L6_682 = "/opt/kube/bin/etcd"
  L7_683 = "/opt/vrtsralus/bin/beremote"
  for L6_682, L7_683 in L3_679(L4_680) do
    if L7_683 ~= nil and string.find(L1_677, L7_683, 1, true) == 1 then
      return true
    end
  end
  return L3_679
end
function IsExcludedByImagePathFileExtension(A0_684, A1_685)
  local L2_686, L3_687, L4_688, L5_689, L6_690, L7_691, L8_692
  if A0_684 ~= nil and A0_684 ~= "" and A1_685 ~= nil and A1_685 ~= "" then
    L2_686 = string
    L2_686 = L2_686.sub
    L2_686 = L2_686(L3_687, L4_688, L5_689)
  elseif L2_686 ~= "." then
    L2_686 = false
    return L2_686
  end
  L2_686 = string
  L2_686 = L2_686.find
  L2_686 = L2_686(L3_687, L4_688, L5_689, L6_690)
  if L2_686 then
    L2_686 = string
    L2_686 = L2_686.find
    L2_686 = L2_686(L3_687, L4_688, L5_689, L6_690)
    if L2_686 ~= 1 then
      L2_686 = true
      return L2_686
    end
  end
  L2_686 = string
  L2_686 = L2_686.find
  L2_686 = L2_686(L3_687, L4_688, L5_689, L6_690)
  if L2_686 == 1 then
    L2_686 = string
    L2_686 = L2_686.find
    L2_686 = L2_686(L3_687, L4_688, L5_689, L6_690)
    if not L2_686 then
      L2_686 = true
      return L2_686
    end
  end
  L2_686 = A1_685
  A1_685 = L2_686 .. L3_687
  L2_686 = {}
  L2_686["/usr/local/bin/cmake"] = ".cmake\".make\".marks\""
  L2_686["/usr/bin/cmake"] = ".cmake\".make\".marks\""
  L2_686["/usr/bin/influxd"] = ".tsm\".wal\""
  L2_686["/opt/besclient/bin/besclient"] = ".qid\""
  L2_686["/usr/lib/systemd/systemd"] = ".service\".conf\".scope\".slice\""
  L2_686["/lib/systemd/systemd"] = ".service\".conf\".scope\".slice\""
  L2_686["/usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java"] = ".deleted\".cql\".snapshot\""
  L2_686["/usr/lib/jvm/java-11-openjdk-amd64/bin/java"] = ".instance\".target\""
  L2_686["/usr/bin/python"] = ".mo\".cocci\""
  L2_686["/usr/libexec/platform-python"] = ".mo\".cmake\".solv\".cocci\".catalog\".service\".erb\""
  L2_686["/usr/local/bin/node"] = ".__ivy_ngcc_bak\".flow\""
  L2_686["/usr/bin/node"] = ".__ivy_ngcc_bak\".graph\""
  L2_686["/usr/lib/firefox-esr/firefox-esr"] = ".final\".vlpset\".sbstore\""
  L2_686["/usr/lib/firefox/firefox"] = ".final\".vlpset\".sbstore\""
  L2_686["/usr/lib64/firefox/firefox"] = ".final\".vlpset\".sbstore\""
  L2_686["/home/vsts/miniconda/bin/python"] = ".c~\""
  L2_686["/home/vsts/miniconda/envs/test_e2e/bin/python"] = ".c~\".pyc\""
  L2_686["/usr/lib/systemd/system-generators/systemd-fstab-generator"] = ".mount\""
  L2_686["/usr/bin/containerd"] = ".del-status\""
  L2_686["/usr/share/teams/teams"] = ".cache-6\".cache-7\""
  L2_686["/usr/bin/x86_64-linux-gnu-gcov-7"] = ".gcov\""
  L2_686["/usr/bin/snap"] = ".cmake\".make\".marks\""
  L2_686["/usr/java/jdk"] = ".jar\""
  L2_686["/usr/sbin/adclient"] = ".pol\""
  L2_686["/opt/atlassian/jira/jre/bin/java"] = ".location\".properties\".nmea\""
  L2_686["/opt/splunk/bin/splunkd"] = ".manifest_values_dirty\""
  L2_686["/opt/splunk/bin/splunk-optimize"] = ".merge\""
  L2_686["/opt/splunk/bin/python"] = ".ckpt\""
  L2_686["/usr/sbin/atopacctd"] = ".paf\""
  L2_686["/usr/sbin/hardlink"] = ".$$$___cleanit___$$$\""
  L2_686["/usr/lib/systemd/user-generators/systemd-xdg-autostart-generator"] = ".service\""
  L2_686["/opt/ds_agent/ds_am"] = ".len\".retry\""
  L2_686["/opt/gitlab/embedded/bin/git"] = ".salt\""
  L2_686["/opt/gitlab/embedded/bin/ruby"] = ".erb\""
  L2_686["/usr/bin/vim"] = ".sh~\".sql~\""
  L2_686["/usr/bin/ruby"] = ".ri\""
  L2_686["/usr/libexec/openssh/sftp-server"] = ".j2\""
  L2_686["/usr/bin/qtcreator"] = ".~\""
  L2_686["/usr/bin/containerd-shim-runc-v2"] = ".address\""
  L2_686["/var/cfengine/bin/cf-agent"] = ".cfnew\".cfedited\""
  L2_686["/var/cfengine/sbin/cfexecd"] = ".cfnew\".cfedited\""
  L2_686["/opt/splunk/bin/mongod"] = ".ns\""
  L2_686["/opt/kube/bin/etcd"] = ".snap\""
  L2_686["/usr/bin/nautilus"] = ".trashinfo\""
  L2_686["/opt/Insomnia/insomnia"] = ".db~\""
  for L6_690, L7_691 in L3_687(L4_688) do
    if L6_690 ~= nil and L6_690 ~= "" then
      L8_692 = string
      L8_692 = L8_692.find
      L8_692 = L8_692(A0_684, L6_690, 1, true)
      if L8_692 == 1 and L7_691 ~= nil and L7_691 ~= "" then
        L8_692 = string
        L8_692 = L8_692.find
        L8_692 = L8_692(L7_691, A1_685, 1, true)
        if L8_692 then
          L8_692 = true
          return L8_692
        end
      end
    end
  end
  L3_687["/usr/local/bin/cmake"] = ".cmake\".make\".marks\""
  L3_687["/bin/make"] = ".mk\""
  L3_687["/bin/clang"] = ".shd\".xxxxxx\".gcno\""
  L3_687["/bin/python"] = ".c~\""
  L3_687["/usr/bin/cmake"] = ".cmake\".make\".marks\".in\""
  L3_687["/bin/java"] = L4_688
  L3_687["/usr/bin/fc-cache"] = ".cache-6\".cache-7\""
  L3_687["/usr/bin/node"] = ".__ivy_ngcc_bak\".graph\".lcl\""
  L3_687["/aem65/aemauthor/crx-quickstart"] = "._01_\""
  L3_687["/usr/sbin/grub-install"] = ".mod\".mod-\""
  L3_687["/usr/share/code/code"] = ".vsixmanifest\".template\".__ivy_ngcc_bak\""
  L3_687["/bin/adrci"] = ".ams\""
  L3_687["/bin/rsession"] = ".snapshot\""
  L3_687["/bin/node"] = ".__ivy_ngcc_bak\".graph\""
  L3_687["/steam"] = ".old\""
  L3_687["/usr/bin/nvim"] = ".wiki\".go~\""
  L3_687["/bin/postgres"] = ".done\""
  L3_687["/bin/iccarm"] = ".xxxxxx\""
  L3_687["/sqllib/adm/db2sysc"] = ".log\".tda\""
  L3_687["/usr/sbin/php-fpm"] = ".bup\".html_old\".html_gzip_old\""
  L3_687["/opt/mqsi/iib-10.0.0.26/server/bin/DataFlowEngine"] = ".rmv\""
  L3_687["/bin/gcc"] = ".xxxxxx\""
  L3_687["/usr/bin/ccache"] = ".xxxxxx\""
  L3_687["/opt/firefox/firefox-bin"] = ".moz-backup\""
  for L7_691, L8_692 in L4_688(L5_689) do
    if string.find(A0_684, L7_691, 1, true) and string.find(L8_692, A1_685, 1, true) then
      return true
    end
  end
  return L4_688
end
function IsExcludedByImagePathFileExtensionRegEx(A0_693, A1_694)
  local L2_695, L3_696, L4_697, L5_698, L6_699, L7_700
  if A0_693 ~= nil and A0_693 ~= "" and A1_694 ~= nil and A1_694 ~= "" then
    L2_695 = string
    L2_695 = L2_695.sub
    L2_695 = L2_695(L3_696, L4_697, L5_698)
  elseif L2_695 ~= "." then
    L2_695 = false
    return L2_695
  end
  L2_695 = A1_694
  A1_694 = L2_695 .. L3_696
  L2_695 = {}
  L2_695["/opt/cmake%-(.+)/bin/cmake"] = ".cmake\".make\".marks\""
  L2_695["/snap/cmake/(%d+)/bin/cmake"] = ".cmake\".make\".marks\""
  L2_695["/snap/snapd/(%d+)/usr/bin/snap"] = ".cmake\".make\".marks\""
  L2_695["/usr/lib/jvm/java%-(.+)%-openjdk%-(.*)/(%w+)/bin/java"] = ".deleted\".ndjson\".nmea\".target\".jmm\".dbtmp\".fnt\".1\".class\""
  L2_695["/snap/core/(%d+)/lib/x86_64%-linux%-gnu/(.*)"] = ".cache-6\".cache-7\""
  L2_695["/snap/firefox/(%d+)/usr/lib/firefox/firefox"] = ".final\""
  L2_695["/snap/postman/(%d+)/usr/share/postman/postman"] = ".cache-6\".cache-7\""
  L2_695["/snap/teams-for-linux/(%d+)/teams-for-linux"] = ".cache-6\".cache-7\""
  L2_695["/snap/notepad-plus-plus/(%d+)/gnome-platform/usr/bin/fc-cache"] = ".cache-6\".cache-7\""
  L2_695["/opt/tableau/tableau_server/packages/pgsql%.(%d+)%.(%d+)%.(%d+)%.(%d+)/bin/postgres"] = ".done\".ftl\""
  L2_695["/opt/tableau/tableau_server/packages/apigateway%.(%d+)%.(%d+)%.(%d+)%.(%d+)/run-apigateway"] = ".done\".ftl\""
  for L6_699, L7_700 in L3_696(L4_697) do
    if L6_699 ~= nil and L6_699 ~= "" and string.find(A0_693, L6_699) == 1 and L7_700 ~= nil and L7_700 ~= "" and string.find(L7_700, A1_694, 1, true) then
      return true
    end
  end
  return L3_696
end
function IsExcludedByImagePathFileExtensionSuffix(A0_701, A1_702)
  local L2_703, L3_704, L4_705, L5_706, L6_707, L7_708
  if A0_701 ~= nil and A0_701 ~= "" and A1_702 ~= nil and A1_702 ~= "" then
    L2_703 = string
    L2_703 = L2_703.sub
    L2_703 = L2_703(L3_704, L4_705, L5_706)
  elseif L2_703 == "." then
    L2_703 = false
    return L2_703
  end
  L2_703 = "\""
  A1_702 = L2_703 .. L3_704 .. L4_705
  L2_703 = {}
  L2_703["/usr/bin/qtcreator"] = "\"~\""
  for L6_707, L7_708 in L3_704(L4_705) do
    if L6_707 ~= nil and L6_707 ~= "" and string.find(A0_701, L6_707, 1, true) == 1 and L7_708 ~= nil and L7_708 ~= "" and string.find(L7_708, A1_702, 1, true) then
      return true
    end
  end
  return L3_704
end
function IsRansomwareProcessImagePathExtensionExcluded(A0_709, A1_710)
  local L2_711
  if A0_709 ~= nil and A0_709 ~= "" and A1_710 ~= nil and A1_710 ~= "" then
    L2_711 = string
    L2_711 = L2_711.sub
    L2_711 = L2_711(A1_710, 1, 1)
  elseif L2_711 ~= "." then
    L2_711 = false
    return L2_711
  end
  L2_711 = A0_709.lower
  L2_711 = L2_711(A0_709)
  return IsExcludedByImagePathFileExtension(L2_711, A1_710) or IsExcludedByImagePathFileExtensionRegEx(L2_711, A1_710)
end
function CheckFileExtnIncludeProcessId(A0_712, A1_713)
  local L2_714
  if A0_712 ~= nil and A0_712 ~= "" and A1_713 ~= nil and A1_713 ~= "" then
    L2_714 = string
    L2_714 = L2_714.sub
    L2_714 = L2_714(A1_713, 1, 1)
  elseif L2_714 ~= "." then
    L2_714 = false
    return L2_714
  end
  L2_714 = string
  L2_714 = L2_714.match
  L2_714 = L2_714(A0_712, "pid:(%w+),ProcessStart:(%w+)")
  if L2_714 == nil or L2_714 == "" then
    return false
  end
  if string.find(A1_713, L2_714, 1, true) == 2 or string.find(A1_713, ".log" .. L2_714, 1, true) == 1 then
    return true
  end
  return false
end
function IsStringInTable(A0_715, A1_716)
  if A0_715 == nil or #A0_715 == 0 or A1_716 == nil or A1_716 == "" then
    return false
  end
  for _FORV_5_, _FORV_6_ in pairs(A0_715) do
    if A1_716 == _FORV_6_ then
      return true
    end
  end
  return false
end
function checkParentCmdline(A0_717, A1_718, A2_719)
  local L3_720, L4_721
  if A2_719 ~= 0 and A0_717 ~= nil and A1_718 ~= nil then
    L3_720 = type
    L4_721 = A1_718
    L3_720 = L3_720(L4_721)
  elseif L3_720 ~= "table" then
    L3_720 = false
    return L3_720
  end
  L3_720 = mp
  L3_720 = L3_720.GetParentProcInfo
  L4_721 = A0_717
  L3_720 = L3_720(L4_721)
  if L3_720 ~= nil then
    L4_721 = mp
    L4_721 = L4_721.GetProcessCommandLine
    L4_721 = L4_721(L3_720.ppid)
    if L3_720.image_path ~= nil and L3_720.image_path ~= "" and L4_721 ~= nil and L4_721 ~= "" then
      for _FORV_8_, _FORV_9_ in ipairs(A1_718) do
        if string.find(L3_720.image_path, _FORV_9_[1], 1, true) and string.find(L4_721, _FORV_9_[2], 1, true) then
          return true
        end
      end
    end
    return checkParentCmdline(L3_720.ppid, A1_718, A2_719 - 1)
  end
  L4_721 = false
  return L4_721
end
function checkParentCmdlineCaseInsensitive(A0_722, A1_723, A2_724)
  if not A1_723 or type(A1_723) ~= "table" then
    return false
  end
  for _FORV_6_, _FORV_7_ in ipairs(A1_723) do
    _FORV_7_[1] = string.lower(_FORV_7_[1])
    _FORV_7_[2] = string.lower(_FORV_7_[2])
  end
  function checkParentCmdlineLowerCase(A0_725, A1_726, A2_727)
    local L3_728, L4_729
    if A2_727 ~= 0 and A0_725 ~= nil and A1_726 ~= nil then
      L3_728 = type
      L4_729 = A1_726
      L3_728 = L3_728(L4_729)
    elseif L3_728 ~= "table" then
      L3_728 = false
      return L3_728
    end
    L3_728 = mp
    L3_728 = L3_728.GetParentProcInfo
    L4_729 = A0_725
    L3_728 = L3_728(L4_729)
    if L3_728 ~= nil then
      L4_729 = mp
      L4_729 = L4_729.GetProcessCommandLine
      L4_729 = L4_729(L3_728.ppid)
      if L3_728.image_path and L3_728.image_path ~= "" and L4_729 and L4_729 ~= "" then
        for _FORV_8_, _FORV_9_ in ipairs(A1_726) do
          if string.find(string.lower(L3_728.image_path), _FORV_9_[1], 1, true) and string.find(string.lower(L4_729), _FORV_9_[2], 1, true) then
            return true, L3_728.image_path, L4_729
          end
        end
      end
      return checkParentCmdlineLowerCase(L3_728.ppid, A1_726, A2_727 - 1)
    end
    L4_729 = false
    return L4_729
  end
  return checkParentCmdlineLowerCase(A0_722, A1_723, A2_724)
end
function GetPackageMangerExclusion()
  local L0_730
  L0_730 = {
    {
      "/usr/bin/python",
      "/usr/bin/python /bin/yum"
    },
    {
      "/usr/bin/python",
      "/usr/bin/python /usr/bin/yum"
    },
    {
      "/usr/bin/python",
      "/usr/bin/python3 /bin/yum"
    },
    {
      "/usr/bin/python",
      "/usr/bin/python3 /usr/bin/yum"
    },
    {
      "/usr/libexec/platform-python",
      "/usr/libexec/platform-python /bin/yum"
    },
    {
      "/usr/libexec/platform-python",
      "/usr/libexec/platform-python /usr/bin/dnf"
    },
    {
      "/usr/libexec/platform-python",
      "/usr/libexec/platform-python /usr/bin/yum"
    },
    {
      "/usr/bin/dpkg",
      ""
    },
    {"/bin/rpm", ""},
    {
      "/usr/bin/rpm",
      ""
    },
    {
      "/usr/bin/python",
      "/usr/bin/python /bin/dnf"
    },
    {
      "/usr/bin/python",
      "/usr/bin/python3 /bin/dnf"
    },
    {
      "/usr/bin/python",
      "/usr/bin/pip"
    },
    {
      "",
      "pip install"
    },
    {
      "",
      "/bin/pip list"
    },
    {"", "/yum"},
    {"", "/.ansible/"},
    {
      "/usr/libexec/platform-python",
      "/usr/bin/pip"
    },
    {
      "",
      "/usr/libexec/platform-python /usr/bin/dnf"
    },
    {
      "",
      "/usr/libexec/platform-python /bin/dnf"
    },
    {
      "/usr/lib/snapd/snapd",
      ""
    },
    {
      "/usr/bin/apt",
      ""
    },
    {
      "/usr/bin/apt-get",
      ""
    },
    {
      "/usr/bin/python",
      "/usr/bin/dpkg"
    },
    {
      "/usr/bin/python",
      "/usr/bin/python3 /usr/bin/unattended-upgrade"
    },
    {
      "/usr/bin/node",
      "install"
    },
    {"/bin/node", "npm"},
    {
      "/usr/lib/dracut/dracut-install",
      ""
    },
    {
      "/usr/sbin/hardlink",
      "/sbin/dracut -f /boot/initramfs"
    },
    {
      "/usr/bin/zypper",
      "install"
    },
    {
      "/usr/bin/zypper",
      "remove"
    },
    {
      "/usr/bin/zypper",
      "refresh"
    },
    {
      "/usr/bin/zypper",
      "verify"
    },
    {
      "/usr/bin/zypper",
      "update"
    },
    {
      "/usr/bin/zypper",
      "upgrade"
    },
    {
      "/usr/bin/zypper",
      "patch"
    },
    {
      "/usr/bin/openssl",
      "openssl ca"
    },
    {
      "",
      "/usr/local/sbin/sysconfig -all"
    }
  }
  return L0_730
end
function CheckProcessImagePathAndCommandlineExclusionLinux(A0_731, A1_732, A2_733)
  local L3_734
  if A0_731 == nil or A0_731 == "" or A1_732 == nil or A1_732 == "" then
    bm.add_related_string("proc_context_info", L3_734, bm.RelatedStringBMReport)
    return false
  end
  if A2_733 == nil then
    A2_733 = L3_734
  end
  if A2_733 ~= nil then
  elseif L3_734 ~= "table" then
    return L3_734
  end
  for _FORV_6_, _FORV_7_ in L3_734(A2_733) do
    if string.find(A0_731, _FORV_7_[1], 1, true) and string.find(A1_732, _FORV_7_[2], 1, true) then
      return true
    end
  end
  bm.add_related_string("proc_context_info", L3_734, bm.RelatedStringBMReport)
  return false
end
function isParentPackageManager(A0_735, A1_736)
  local L2_737, L3_738, L4_739, L5_740
  if A0_735 == nil then
    L2_737 = false
    return L2_737
  end
  L2_737 = GetPackageMangerExclusion
  L2_737 = L2_737()
  if L2_737 ~= nil then
    L3_738 = type
    L4_739 = L2_737
    L3_738 = L3_738(L4_739)
  elseif L3_738 ~= "table" then
    L3_738 = false
    return L3_738
  end
  if A1_736 then
    L3_738 = nil
    L4_739 = bm
    if L4_739 then
      L4_739 = bm
      L4_739 = L4_739.get_imagepath
      L4_739 = L4_739()
      L3_738 = L4_739
    else
      L4_739 = MpCommon
      L4_739 = L4_739.GetImagePathFromPid
      L4_739 = L4_739(L5_740)
      L3_738 = L4_739
    end
    L4_739 = mp
    L4_739 = L4_739.GetProcessCommandLine
    L4_739 = L4_739(L5_740)
    if L3_738 == nil or L3_738 == "" or L4_739 == nil or L4_739 == "" then
      bm.add_related_string("error", L5_740, bm.RelatedStringBMReport)
      return false
    end
    for _FORV_8_, _FORV_9_ in L5_740(L2_737) do
      if string.find(L3_738, _FORV_9_[1], 1, true) and string.find(L4_739, _FORV_9_[2], 1, true) then
        return true
      end
    end
  end
  L3_738 = checkParentCmdline
  L4_739 = A0_735
  return L3_738(L4_739, L5_740, 3)
end
function CheckParentPackageManager()
  if bm.get_current_process_startup_info() == nil or bm.get_current_process_startup_info().ppid == nil or bm.get_current_process_startup_info().command_line == "" then
    return false
  end
  return isParentPackageManager(bm.get_current_process_startup_info().ppid, false)
end
function ipv4ToInt(A0_741)
  local L1_742, L2_743, L3_744, L4_745, L5_746, L6_747, L7_748, L8_749
  L1_742 = 0
  if not A0_741 then
    L2_743 = nil
    return L2_743
  end
  L2_743 = {
    [7] = L3_744(L4_745, L5_746)
  }
  L3_744 = string
  L3_744 = L3_744.match
  L8_749 = L3_744(L4_745, L5_746)
  ;({
    [7] = L3_744(L4_745, L5_746)
  })[1] = L3_744
  ;({
    [7] = L3_744(L4_745, L5_746)
  })[2] = L4_745
  ;({
    [7] = L3_744(L4_745, L5_746)
  })[3] = L5_746
  ;({
    [7] = L3_744(L4_745, L5_746)
  })[4] = L6_747
  ;({
    [7] = L3_744(L4_745, L5_746)
  })[5] = L7_748
  ;({
    [7] = L3_744(L4_745, L5_746)
  })[6] = L8_749
  L3_744 = {
    L4_745,
    L5_746,
    L6_747,
    L7_748
  }
  L7_748 = 0
  for L7_748 = 1, 4 do
    L8_749 = tonumber
    L8_749 = L8_749(L2_743[L7_748] or 256)
    if L8_749 > 255 then
      return nil
    end
    L1_742 = L1_742 + mp.shl32(L8_749, L3_744[L7_748])
  end
  return L1_742
end
function ipv4IsPrivateRange(A0_750)
  local L1_751, L2_752, L3_753, L4_754, L5_755, L6_756, L7_757
  L1_751 = {
    L2_752,
    L3_753,
    L4_754,
    L5_755
  }
  L5_755 = 12
  L5_755 = 3232235520
  L6_756 = 16
  L5_755 = {L6_756, L7_757}
  L6_756 = 3758096384
  L7_757 = 4
  A0_750 = L2_752
  if not A0_750 then
    return L2_752
  end
  for L5_755, L6_756 in L2_752(L3_753) do
    L7_757 = mp
    L7_757 = L7_757.shl32
    L7_757 = L7_757(4294967295, 32 - L6_756[2])
    if L6_756[1] == mp.bitand(A0_750, L7_757) then
      return true
    end
  end
  return L2_752
end
function keyboardCoords(A0_758)
  local L1_759, L2_760
  L1_759 = math_floor
  L2_760 = A0_758 / 8
  L1_759 = L1_759(L2_760)
  L2_760 = math_floor
  L2_760 = L2_760((A0_758 - 8 * L1_759) / 2)
  return {L1_759, L2_760}
end
function keyDistance(A0_761, A1_762)
  local L2_763, L3_764, L4_765, L5_766, L6_767
  L2_763 = "`~      1!qQaAzZ2@wWsSxX3#eEdDcC4$rRfFvV5%tTgGbB6^yYhHnN7&uUjJmM8*iIkK,<9(oOlL.>0)pP;:/?-_[{'\"  =+]}      \\|"
  L4_765 = L2_763
  L3_764 = L2_763.find
  L5_766 = A0_761
  L6_767 = 1
  L3_764 = L3_764(L4_765, L5_766, L6_767, true)
  L5_766 = L2_763
  L4_765 = L2_763.find
  L6_767 = A1_762
  L4_765 = L4_765(L5_766, L6_767, 1, true)
  if not L3_764 or not L4_765 then
    L5_766 = 1000
    return L5_766
  end
  L3_764 = L3_764 - 1
  L4_765 = L4_765 - 1
  L5_766 = keyboardCoords
  L6_767 = L3_764
  L5_766 = L5_766(L6_767)
  L6_767 = keyboardCoords
  L6_767 = L6_767(L4_765)
  return euclideanDistance(L5_766, L6_767) + 1
end
function typoDistance(A0_768, A1_769, A2_770)
  if pcall(MpCommon.TypoDistance, A0_768, A1_769) and pcall(MpCommon.TypoDistance, A0_768, A1_769) then
    return pcall(MpCommon.TypoDistance, A0_768, A1_769)
  end
  return 1000
end
function parseIPv4Address(A0_771)
  local L1_772, L2_773, L3_774, L4_775, L5_776, L6_777
  L1_772 = split
  L1_772 = L1_772(L2_773, L3_774)
  for L5_776, L6_777 in L2_773(L3_774) do
    L1_772[L5_776] = tonumber(L6_777)
  end
  return L1_772
end
function isPublicIP(A0_778)
  return getIpAddressClass(A0_778) == 3
end
function isPrivateIP(A0_779)
  return getIpAddressClass(A0_779) == 1
end
function IPv4toNumber(A0_780)
  return mp.shl32(parseIPv4Address(A0_780)[1], 24) + mp.shl32(parseIPv4Address(A0_780)[2], 16) + mp.shl32(parseIPv4Address(A0_780)[3], 8) + parseIPv4Address(A0_780)[4]
end
function computeIPDistance(A0_781, A1_782)
  local L2_783, L3_784
  L2_783 = IPv4toNumber
  L3_784 = A0_781
  L2_783 = L2_783(L3_784)
  L3_784 = IPv4toNumber
  L3_784 = L3_784(A1_782)
  if getIpAddressClass(L2_783) == getIpAddressClass(L3_784) then
    return #math_base(mp.bitxor(L2_783, L3_784), 2)
  else
    return 32
  end
end
function isIPInNetmaskRange(A0_785, A1_786, A2_787)
  return computeIPDistance(A1_786, A0_785) <= 32 - A2_787
end
function getIpAddressClass(A0_788)
  local L1_789, L2_790, L3_791, L4_792, L5_793, L6_794, L7_795, L8_796
  L1_789 = 1
  L2_790 = 2
  L3_791 = 3
  L4_792 = 4
  L5_793 = 5
  L6_794 = 6
  L7_795 = 7
  L8_796 = 8
  if #parseIPv4Address(A0_788) == 0 then
    return L8_796
  end
  if parseIPv4Address(A0_788)[1] == 10 then
    return L1_789
  end
  if parseIPv4Address(A0_788)[1] == 192 then
    if parseIPv4Address(A0_788)[2] == 168 then
      return L1_789
    elseif parseIPv4Address(A0_788)[2] == 0 then
      if parseIPv4Address(A0_788)[3] == 0 then
        return L1_789
      elseif parseIPv4Address(A0_788)[3] == 2 then
        return L7_795
      end
    elseif parseIPv4Address(A0_788)[2] == 51 then
      return L7_795
    end
    return L3_791
  end
  if parseIPv4Address(A0_788)[1] == 172 and parseIPv4Address(A0_788)[2] >= 16 and parseIPv4Address(A0_788)[2] <= 31 then
    return L1_789
  end
  if parseIPv4Address(A0_788)[1] == 127 then
    return L2_790
  end
  if parseIPv4Address(A0_788)[1] == 128 then
    return L4_792
  end
  if parseIPv4Address(A0_788)[1] == 191 and parseIPv4Address(A0_788)[2] == 255 then
    return L4_792
  end
  if parseIPv4Address(A0_788)[1] == 233 and parseIPv4Address(A0_788)[2] == 255 then
    return L4_792
  end
  if parseIPv4Address(A0_788)[1] == 169 and parseIPv4Address(A0_788)[2] == 254 then
    return L5_793
  end
  if parseIPv4Address(A0_788)[1] == 198 then
    if parseIPv4Address(A0_788)[2] == 18 or parseIPv4Address(A0_788)[2] == 19 or parseIPv4Address(A0_788)[2] == 51 and parseIPv4Address(A0_788)[3] == 100 then
      return L1_789
    end
    return L3_791
  end
  if parseIPv4Address(A0_788)[1] == 203 and parseIPv4Address(A0_788)[2] == 0 and parseIPv4Address(A0_788)[3] == 113 then
    return L7_795
  end
  if parseIPv4Address(A0_788)[1] == 100 and parseIPv4Address(A0_788)[2] >= 64 and parseIPv4Address(A0_788)[2] < 128 then
    return L6_794
  end
  if parseIPv4Address(A0_788)[1] == 0 then
    return L4_792
  end
  if A0_788 == "255.255.255.255" then
    return L4_792
  end
  return L3_791
end
function getNetClassName(A0_797)
  return ({
    "PRIVATE",
    "LOOPBACK",
    "PUBLIC",
    "RESERVED",
    "LINKLOCAL",
    "CARRIERGRADE_NAT",
    "TESTNET"
  })[A0_797] or "Unknown! check mapping!"
end
function updateDomainInfo()
  local L0_798, L1_799, L2_800, L3_801, L4_802, L5_803, L6_804, L7_805, L8_806, L9_807, L10_808, L11_809, L12_810, L13_811, L14_812, L15_813, L16_814, L17_815, L18_816, L19_817, L20_818, L21_819, L22_820, L23_821, L24_822, L25_823, L26_824, L27_825, L28_826, L29_827, L30_828, L31_829
  L0_798 = ""
  L1_799 = {}
  L2_800 = {}
  L3_801 = 1
  L4_802 = 2
  L5_803 = 4
  L6_804 = 8
  L7_805 = 16
  L8_806 = 32
  L9_807 = 64
  L10_808 = 128
  L11_809 = 256
  L12_810 = 512
  L13_811 = 1024
  L14_812 = 2048
  L15_813 = 4096
  L16_814 = 8192
  L17_815 = 16384
  L18_816 = 32768
  function L19_817(A0_830, A1_831, A2_832)
    local L3_833
    L3_833 = sysio
    L3_833 = L3_833.GetRegValueAsString
    L3_833 = L3_833(A0_830, A1_831)
    if L3_833 then
      L3_833 = L3_833:lower()
      if not _UPVALUE0_[L3_833] then
        _UPVALUE0_[L3_833] = A2_832
      else
        _UPVALUE0_[L3_833] = mp.bitor(A2_832, _UPVALUE0_[L3_833])
      end
    end
  end
  UpdateDomainInfoList = L19_817
  L19_817 = pcall
  L20_818 = MpCommon
  L20_818 = L20_818.RollingQueueErase
  L21_819 = "domainInfo"
  L19_817(L20_818, L21_819)
  L19_817 = sysio
  L19_817 = L19_817.RegOpenKey
  L20_818 = "HKLM\\SYSTEM\\CurrentControlSet\\Services\\iphlpsvc\\Parameters\\ADHarvest"
  L19_817 = L19_817(L20_818)
  if L19_817 then
    L20_818 = UpdateDomainInfoList
    L21_819 = L19_817
    L22_820 = "LastFetchDomain"
    L20_818(L21_819, L22_820, L23_821)
  end
  L20_818 = sysio
  L20_818 = L20_818.RegOpenKey
  L21_819 = "HKLM\\Software\\Microsoft\\Windows\\CurrentVersion\\Internet Settings\\Connections"
  L20_818 = L20_818(L21_819)
  if L20_818 then
    L21_819 = UpdateDomainInfoList
    L22_820 = L20_818
    L21_819(L22_820, L23_821, L24_822)
  end
  L21_819 = sysio
  L21_819 = L21_819.RegOpenKey
  L22_820 = "HKLM\\SYSTEM\\CurrentControlSet\\Services\\Tcpip\\Parameters"
  L21_819 = L21_819(L22_820)
  if L21_819 then
    L22_820 = sysio
    L22_820 = L22_820.GetRegValueAsString
    L22_820 = L22_820(L23_821, L24_822)
    L0_798 = L22_820
    if L0_798 then
      L22_820 = L0_798.lower
      L22_820 = L22_820(L23_821)
    else
      L0_798 = L22_820 or ""
    end
    L22_820 = #L0_798
    if L22_820 > 0 then
      L22_820 = AppendToRollingQueue
      L22_820(L23_821, L24_822, L25_823, L26_824, L27_825)
    end
    L22_820 = UpdateDomainInfoList
    L22_820(L23_821, L24_822, L25_823)
    L22_820 = UpdateDomainInfoList
    L22_820(L23_821, L24_822, L25_823)
    L22_820 = sysio
    L22_820 = L22_820.GetRegValueAsString
    L22_820 = L22_820(L23_821, L24_822)
    if L22_820 then
      L22_820 = L23_821
      L22_820 = L23_821
      for L26_824, L27_825 in L23_821(L24_822) do
        L28_826 = L2_800[L27_825]
        if not L28_826 then
          L2_800[L27_825] = 1
          L28_826 = AppendToRollingQueue
          L29_827 = "TCP-searchList"
          L30_828 = L27_825
          L31_829 = 1
          L28_826(L29_827, L30_828, L31_829, 604800, 100)
        end
      end
    end
  end
  L22_820 = "HKLM\\SYSTEM\\CurrentControlSet\\Services\\Tcpip\\Parameters\\Interfaces"
  if L23_821 then
    if L24_822 then
      for L28_826, L29_827 in L25_823(L26_824) do
        L30_828 = sysio
        L30_828 = L30_828.RegOpenKey
        L31_829 = string
        L31_829 = L31_829.format
        L31_829 = L31_829("%s\\%s", L22_820, L29_827)
        L30_828 = L30_828(L31_829, L31_829("%s\\%s", L22_820, L29_827))
        if L30_828 then
          L31_829 = UpdateDomainInfoList
          L31_829(L30_828, "Domain", L4_802)
          L31_829 = UpdateDomainInfoList
          L31_829(L30_828, "DhcpDomain", L6_804)
          L31_829 = UpdateDomainInfoList
          L31_829(L30_828, "DefaultGateway", L7_805)
          L31_829 = UpdateDomainInfoList
          L31_829(L30_828, "DhcpDefaultGateway", L8_806)
          L31_829 = UpdateDomainInfoList
          L31_829(L30_828, "IPAddress", L9_807)
          L31_829 = UpdateDomainInfoList
          L31_829(L30_828, "DhcpIPAddress", L10_808)
          L31_829 = UpdateDomainInfoList
          L31_829(L30_828, "SubnetMask", L11_809)
          L31_829 = UpdateDomainInfoList
          L31_829(L30_828, "DhcpSubnetMask", L12_810)
          L31_829 = UpdateDomainInfoList
          L31_829(L30_828, "NameServer", L13_811)
          L31_829 = UpdateDomainInfoList
          L31_829(L30_828, "DhcpNameServer", L14_812)
        end
      end
    end
  end
  L22_820 = "HKLM\\SYSTEM\\CurrentControlSet\\Services\\Tcpip\\Parameters\\DNSRegisteredAdapters"
  if L23_821 then
    if L24_822 then
      for L28_826, L29_827 in L25_823(L26_824) do
        L30_828 = sysio
        L30_828 = L30_828.RegOpenKey
        L31_829 = string
        L31_829 = L31_829.format
        L31_829 = L31_829("%s\\%s", L22_820, L29_827)
        L30_828 = L30_828(L31_829, L31_829("%s\\%s", L22_820, L29_827))
        if L30_828 then
          L31_829 = UpdateDomainInfoList
          L31_829(L30_828, "AdapterDomainName", L15_813)
          L31_829 = UpdateDomainInfoList
          L31_829(L30_828, "Hostname", L16_814)
          L31_829 = UpdateDomainInfoList
          L31_829(L30_828, "PrimaryDomainName", L17_815)
        end
      end
    end
  end
  L22_820 = "HKLM\\SYSTEM\\CurrentControlSet\\Services\\Tcpip6\\Parameters\\Interfaces"
  if L23_821 then
    if L24_822 then
      for L28_826, L29_827 in L25_823(L26_824) do
        L30_828 = sysio
        L30_828 = L30_828.RegOpenKey
        L31_829 = string
        L31_829 = L31_829.format
        L31_829 = L31_829("%s\\%s", L22_820, L29_827)
        L30_828 = L30_828(L31_829, L31_829("%s\\%s", L22_820, L29_827))
        if L30_828 then
          L31_829 = sysio
          L31_829 = L31_829.GetRegValueAsString
          L31_829 = L31_829(L30_828, "Dhcpv6DomainSearchList")
          if L31_829 then
            L31_829 = L31_829:lower()
            if not L2_800[L31_829] then
              L2_800[L31_829] = 1
              AppendToRollingQueue("TCP-searchList", L31_829, 1, 604800, 100)
            end
          end
        end
      end
    end
  end
  for L27_825, L28_826 in L24_822(L25_823) do
    L29_827 = AppendToRollingQueue
    L30_828 = "domainInfo"
    L31_829 = L27_825
    L29_827(L30_828, L31_829, L28_826, 604800, 100)
  end
  return L24_822, L25_823, L26_824
end
function isValidLocalDomain(A0_834)
  A0_834 = A0_834:lower()
  if IsKeyValuePairInRollingQueue("domainInfo", "TCP-hostname", A0_834) then
    return 1
  elseif not IsKeyInRollingQueue("domainInfo", A0_834) then
    if 0 == (GetRollingQueueCount("domainInfo") or 0) then
      if updateDomainInfo() == A0_834 then
        return 1
      elseif updateDomainInfo()[A0_834] then
        return 2
      end
    end
  end
  return 0
end
function updateLocalProfilesList()
  local L0_835, L1_836, L2_837, L3_838, L4_839, L5_840, L6_841, L7_842, L8_843, L9_844, L10_845, L11_846, L12_847, L13_848
  L0_835 = {}
  L1_836 = {}
  L2_837 = "HKLM\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\ProfileList"
  L3_838 = sysio
  L3_838 = L3_838.RegOpenKey
  L4_839 = L2_837
  L3_838 = L3_838(L4_839)
  if L3_838 then
    L4_839 = sysio
    L4_839 = L4_839.RegEnumKeys
    L4_839 = L4_839(L5_840)
    if L4_839 then
      for L8_843, L9_844 in L5_840(L6_841) do
        L10_845 = sysio
        L10_845 = L10_845.RegOpenKey
        L11_846 = string
        L11_846 = L11_846.format
        L12_847 = "%s\\%s"
        L13_848 = L2_837
        L13_848 = L11_846(L12_847, L13_848, L9_844)
        L10_845 = L10_845(L11_846, L12_847, L13_848, L11_846(L12_847, L13_848, L9_844))
        if L10_845 then
          L11_846 = sysio
          L11_846 = L11_846.GetRegValueAsDword
          L12_847 = L10_845
          L13_848 = "FullProfile"
          L11_846 = L11_846(L12_847, L13_848)
          if L11_846 == 1 then
            if L9_844 ~= "" then
              L12_847 = trim
              L13_848 = L9_844
              L12_847 = L12_847(L13_848)
              L12_847 = #L12_847
              if L12_847 > 0 then
                L13_848 = L9_844
                L12_847 = L9_844.lower
                L12_847 = L12_847(L13_848)
                L9_844 = L12_847
                L0_835[L9_844] = 1
                L12_847 = AppendToRollingQueue
                L13_848 = "localUsers"
                L12_847(L13_848, L9_844, 1, 604800)
              end
            end
            L12_847 = sysio
            L12_847 = L12_847.GetRegValueAsString
            L13_848 = L10_845
            L12_847 = L12_847(L13_848, "ProfileImagePath")
            if L12_847 then
              L13_848 = L12_847.match
              L13_848 = L13_848(L12_847, "[^\\]+$")
              if L13_848 and L13_848 ~= "" and #trim(L13_848) > 0 then
                L13_848 = L13_848:lower()
                L1_836[L13_848] = 1
                AppendToRollingQueue("localProfiles", L13_848, 1, 604800)
              end
            end
          end
        end
      end
    end
  end
  L4_839 = L0_835
  return L4_839, L5_840
end
function isLocalProfileSid(A0_849)
  A0_849 = A0_849:lower()
  if not IsKeyInRollingQueue("localUsers", A0_849) then
    if 0 == GetRollingQueueCount("localUsers") and updateLocalProfilesList()[A0_849] then
      return true
    end
    return false
  end
  return true
end
function getProfileUserList()
  local L0_850
  L0_850 = GetRollingQueueKeys
  L0_850 = L0_850("localProfiles")
  if L0_850 == nil then
    _, L0_850 = updateLocalProfilesList()
  end
  return L0_850
end
function isHoneypotMachine()
  local L0_851, L1_852
  L0_851 = {}
  L0_851["2fb5b8cc8c2180d80aedb449adaaa118431999a3"] = 0
  L0_851.e2c28e74ecab690d701d0607f0fbbfaed5866b03 = 0
  L0_851["5a87af4ff7b535b6bd8dede9904102e044febccb"] = 0
  L0_851["3b4c664cc8dae08eed20c649d16cf7ddc91d4b8a"] = 0
  L0_851["26a5d0b18940cf045ab8ff65a4041c55ea6e7484"] = 0
  L1_852 = scrubData
  L1_852 = L1_852(string.lower(mp.GetMachineGUID()))
  L1_852 = L0_851[L1_852]
  L1_852 = L1_852 ~= nil
  return L1_852
end
function getLocalProfileTypoDistance(A0_853, A1_854)
  local L2_855, L3_856, L4_857, L5_858, L6_859, L7_860, L8_861
  L2_855 = getProfileUserList
  L2_855 = L2_855()
  L3_856 = 1000
  L4_857 = ""
  for L8_861 in L5_858(L6_859) do
    if L3_856 > typoDistance(A0_853, L8_861, A1_854) then
      L3_856 = typoDistance(A0_853, L8_861, A1_854)
      L4_857 = L8_861
    end
  end
  return L5_858, L6_859
end
function isLocalProfileUser(A0_862)
  A0_862 = A0_862:lower()
  if not IsKeyInRollingQueue("localProfiles", A0_862) then
    if 0 == GetRollingQueueCount("localProfiles") and updateLocalProfilesList()[A0_862] then
      return true
    end
    return false
  end
  return true
end
function parseLogonEvent(A0_863)
  local L1_864, L2_865, L3_866, L4_867, L5_868, L6_869, L7_870, L8_871
  L1_864 = split
  L2_865 = A0_863.utf8p2
  L3_866 = ";"
  L1_864 = L1_864(L2_865, L3_866)
  L2_865 = {}
  function L3_866(A0_872, A1_873)
    return A0_872 ~= "TN" and A0_872 ~= "Wsn" and type(A1_873) == "string" and A1_873:lower() or (A0_872 == "TN" or A0_872 == "Wsn" or A0_872 == "TDN" or A0_872 == "Ip") and tostring(A1_873) or A1_873
  end
  if L1_864 then
    for L7_870, L8_871 in L4_867(L5_868) do
      kvsplit(L8_871, ":", L2_865, L3_866)
    end
  end
  L1_864 = L4_867
  if L1_864 then
    for L7_870, L8_871 in L4_867(L5_868) do
      kvsplit(L8_871, ":", L2_865, L3_866)
    end
  end
  if L4_867 then
    if L4_867 ~= "" then
      L7_870 = L6_869
      L2_865.TFUN = L4_867
    end
  else
    L2_865.TFUN = L4_867
  end
  if L4_867 then
    L2_865.Ip = "LT:2"
  end
  return L2_865
end
function processPasswordChangeEvent(A0_874)
  local L1_875
  L1_875 = MpCommon
  L1_875 = L1_875.GetCurrentTimeT
  L1_875 = L1_875()
  MpCommon.OverwritePersistContextNoPath("RDP-PWC-" .. A0_874.TN, {
    L1_875 .. "_" .. A0_874.SDN .. "_" .. A0_874.SUN
  }, 315360000)
end
function getLastPWChangeEvent(A0_876)
  local L1_877
  L1_877 = MpCommon
  L1_877 = L1_877.GetPersistContextNoPath
  L1_877 = L1_877("RDP-PWC-" .. A0_876)
  L1_877 = L1_877 and str_split(L1_877, "_")
  return {
    time = L1_877[1],
    sdn = L1_877[2],
    sun = L1_877[3]
  }
end
function isRemoteLogon(A0_878)
  local L1_879
  L1_879 = A0_878.LT
  if L1_879 ~= 3 then
    L1_879 = A0_878.LT
    if L1_879 ~= 10 then
      L1_879 = A0_878.LT
    end
  L1_879 = L1_879 == 11 and L1_879 ~= "-"
  return L1_879
end
function isLocalLogon(A0_880)
  return A0_880.LT == 2
end
function isRelevantLogon(A0_881)
  local L1_882
  L1_882 = A0_881.SLId
  if L1_882 ~= 30000000 then
    L1_882 = A0_881.SLId
  L1_882 = L1_882 == 0 and A0_881.SLId
  return L1_882
end
function addLogonEvent(A0_883, A1_884, A2_885)
  local L3_886
  L3_886 = isRemoteLogon
  L3_886 = L3_886(A0_883)
  if L3_886 then
    L3_886 = deepCopy
    L3_886 = L3_886(A0_883)
    if A2_885 then
      L3_886.TN = "username_" .. scrubData(L3_886.TN)
    end
    if A1_884 then
      updateLastUserSuccess(A0_883)
      updateUserLogs(A0_883)
      addToKnownWorkstations(A0_883.Wsn)
      updateKnownIP(A0_883)
      addRQValue("RDP-Successful-Counter", "counter", 1, 311040000, 1)
      addRQValue("RDP-Ip-Successful-Counter", A0_883.Ip, 1, 311040000, 1000)
      addRQValue("RDP-WSN-Successful-Counter", A0_883.Wsn, 1, 311040000, 1000)
      addRQValue("RDP-Event-Success", safeJsonSerialize(L3_886), 1, 604800, 10)
    else
      logUserFailure(A0_883)
      logIPFailure(A0_883)
      decayAndUpdateCounter("RDP-Failed-Counter", 1, false, 2419200)
      addRQValue("RDP-Ip-Failed-Counter", A0_883.Ip, 1, 2419200, 300)
      addRQValue("RDP-Event-Fail", safeJsonSerialize(L3_886), 1, 604800, 10)
    end
  end
end
function logUserFailure(A0_887)
  addRQValue("RDP-F-User", A0_887.TFUN .. "-" .. A0_887.Ip, 1, 172800, 300)
end
function logIPFailure(A0_888)
  local L1_889
  L1_889 = A0_888.TFUN
  if A0_888.SubStatus ~= 3221225572 then
    L1_889 = scrubData(L1_889)
  end
  addRQValue("RDP-F-IP", A0_888.Ip .. "-" .. L1_889, 1, 172800, 300)
end
function addToKnownWorkstations(A0_890)
  AppendToRollingQueue("RDP-S-Ws", A0_890, 1, 31104000, 1000)
end
function updateKnownIP(A0_891)
  AppendToRollingQueue("RDP-S-IPs", A0_891.Ip, 1, 31104000, 1000)
  AppendToRollingQueue("RDP-S-IP-Wsn", A0_891.Ip .. "-" .. A0_891.Wsn, 1, 31104000, 1000)
  AppendToRollingQueue("RDP-S-IP-User", A0_891.Ip .. "-" .. A0_891.TFUN, 1, 31104000, 1000)
end
function updateUserLogs(A0_892)
  AppendToRollingQueue("RDP-S-User-Wsn", A0_892.TFUN .. "-" .. A0_892.Wsn, 1, 31104000, 1000)
end
function getAllKnownIPs()
  return GetRollingQueueKeys("RDP-S-IPs")
end
function getAllBlockedIPs()
  return GetRollingQueueKeys("FW-IPs")
end
function isKnownUserForIP(A0_893, A1_894)
  return IsKeyInRollingQueue("RDP-S-IP-User", A0_893 .. "-" .. A1_894, true)
end
function updateLastUserSuccess(A0_895)
  local L1_896
  L1_896 = tostring
  L1_896 = L1_896(MpCommon.GetCurrentTimeT())
  addSuccessfulLogonTime(A0_895.TFUN)
end
function updateLastUserPasswordReset(A0_897)
  MpCommon.OverwritePersistContextNoPath("RDP-R-User-" .. A0_897.TFUN, {
    tostring(MpCommon.GetCurrentTimeT())
  }, 604800)
end
function getDistinctTriedUsersForIP(A0_898)
  if not pcall(MpCommon.RollingQueueQueryKeyRegex, "RDP-F-IP", A0_898 .. "-") or not pcall(MpCommon.RollingQueueQueryKeyRegex, "RDP-F-IP", A0_898 .. "-") then
    return 0
  end
  return #pcall(MpCommon.RollingQueueQueryKeyRegex, "RDP-F-IP", A0_898 .. "-")
end
function getDistinctIpsForUser(A0_899)
  if not pcall(MpCommon.RollingQueueQueryKeyRegex, "RDP-F-User", A0_899 .. "-") or not pcall(MpCommon.RollingQueueQueryKeyRegex, "RDP-F-User", A0_899 .. "-") then
    return 0
  end
  return #pcall(MpCommon.RollingQueueQueryKeyRegex, "RDP-F-User", A0_899 .. "-")
end
function getAllIPFailures(A0_900)
  local L1_901, L2_902, L3_903
  L1_901 = {}
  L2_902 = pcall
  L3_903 = MpCommon
  L3_903 = L3_903.RollingQueueQueryMultiKeyRegex
  L3_903 = L2_902(L3_903, "RDP-F-IP", A0_900 .. "-")
  if L2_902 and L3_903 then
    for _FORV_7_, _FORV_8_ in ipairs(L3_903) do
      table.insert(L1_901, string.sub(_FORV_8_.key, #A0_900 + 2))
    end
  end
  return L1_901
end
function getAllIpFailuresForUser(A0_904)
  local L1_905, L2_906, L3_907
  L1_905 = {}
  L2_906 = pcall
  L3_907 = MpCommon
  L3_907 = L3_907.RollingQueueQueryKeyRegex
  L3_907 = L2_906(L3_907, "RDP-F-User", A0_904 .. "-")
  if L2_906 and L3_907 then
    for _FORV_7_, _FORV_8_ in ipairs(L3_907) do
      table.insert(L1_905, string.sub(_FORV_8_.key, #A0_904 + 2))
    end
  end
  return L1_905
end
function isKnownWorkstation(A0_908)
  return IsKeyInRollingQueue("RDP-S-Ws", A0_908, true)
end
function isKnownWorkstationForIP(A0_909, A1_910)
  return IsKeyInRollingQueue("RDP-S-IP-Wsn", A1_910 .. "-" .. A0_909, true)
end
function isKnownWorkstationForUser(A0_911, A1_912)
  return IsKeyInRollingQueue("RDP-S-User-Wsn", A1_912 .. "-" .. A0_911, true)
end
function isKnownAttackerWorkstation(A0_913)
  local L1_914, L2_915
  L1_914 = computeWorkstationReputation
  L2_915 = A0_913.Wsn
  L2_915 = L1_914(L2_915, A0_913.SubStatus ~= 3221225572)
  return L1_914, L2_915
end
function isKnownIP(A0_916)
  return IsKeyInRollingQueue("RDP-S-IPs", A0_916, true)
end
function minDistanceToKnownIp(A0_917)
  local L1_918, L2_919, L3_920, L4_921, L5_922, L6_923, L7_924, L8_925
  L1_918 = getAllKnownIPs
  L1_918 = L1_918()
  L2_919 = 4294967296
  L3_920 = nil
  if L1_918 then
    for L7_924, L8_925 in L4_921(L5_922) do
      if L2_919 > computeIPDistance(A0_917.Ip, L8_925) then
        L2_919, L3_920 = computeIPDistance(A0_917.Ip, L8_925), L8_925
      end
    end
  else
    L4_921(L5_922)
  end
  return L4_921, L5_922
end
function isInvalidUsername(A0_926)
  return A0_926.SubStatus == 3221225572
end
function isTopAbusedUser(A0_927)
  local L1_928, L2_929
  L1_928 = computeUserReputationScore
  L2_929 = A0_927.TN
  L2_929 = L1_928(L2_929, A0_927.SubStatus ~= 3221225572)
  return L1_928, L2_929
end
function computeDecay(A0_930, A1_931, A2_932, A3_933, A4_934)
  local L5_935, L6_936, L7_937, L8_938, L9_939
  A3_933 = A3_933 or 1
  A4_934 = A4_934 or 0
  L5_935 = MpCommon
  L5_935 = L5_935.GetCurrentTimeT
  L5_935 = L5_935()
  L6_936 = math_floor
  L7_937 = L5_935 - A0_930
  L7_937 = L7_937 / A2_932
  L6_936 = L6_936(L7_937)
  if L6_936 == 0 then
    L7_937 = A0_930
    L8_938 = A1_931
    return L7_937, L8_938
  else
    L7_937 = A2_932 * L6_936
    L7_937 = A0_930 + L7_937
    if A3_933 ~= 1 then
      L8_938 = math_pow
      L9_939 = A3_933
      L8_938 = L8_938(L9_939, L6_936 + 1)
      L8_938 = 1 - L8_938
      L9_939 = 1 - A3_933
      L8_938 = L8_938 / L9_939
      L8_938 = L8_938 - 1
      L8_938 = A4_934 * L8_938
    else
      L8_938 = L8_938 or A4_934 * L6_936
    end
    L9_939 = math_floor
    L9_939 = L9_939(A1_931 * math_pow(A3_933, L6_936) + L8_938)
    return L7_937, math_floor(L9_939)
  end
end
function getCounterValue(A0_940, A1_941)
  local L2_942
  L2_942 = "DecayingCounter_"
  L2_942 = L2_942 .. A0_940
  if A1_941 then
    if GetRollingQueue(L2_942) == nil then
      return 0, 0
    end
    if MpCommon.RollingQueueSumOfValues(L2_942) == nil then
      return 0, 0
    end
    return MpCommon.RollingQueueSumOfValues(L2_942).sum, MpCommon.RollingQueueSumOfValues(L2_942).age_secs
  else
    if not MpCommon.AtomicCounterValueEx(L2_942) then
      return 0, 0
    end
    return MpCommon.AtomicCounterValueEx(L2_942).count, MpCommon.GetCurrentTimeT() - MpCommon.AtomicCounterValueEx(L2_942).update_time
  end
end
function decayAndUpdateCounter(A0_943, A1_944, A2_945, A3_946, A4_947)
  local L5_948
  A3_946 = A3_946 or 604800
  A4_947 = A4_947 or 100
  L5_948 = "DecayingCounter_"
  L5_948 = L5_948 .. A0_943
  if A2_945 then
    if GetRollingQueue(L5_948) == nil and not pcall(MpCommon.RollingQueueCreate, L5_948, A4_947, A3_946, 0) then
      return nil
    end
    if MpCommon.RollingQueueSumOfValues(L5_948) then
    end
    AppendToRollingQueue(L5_948, A0_943, A1_944, A3_946, A4_947, 0)
  elseif not pcall(MpCommon.AtomicCounterAdd, L5_948, A1_944) then
    MpCommon.AtomicCounterSet(L5_948, A1_944, A3_946, 10, 1, 0)
  else
  end
  return A1_944 + pcall(MpCommon.AtomicCounterAdd, L5_948, A1_944)
end
function resetCounter(A0_949, A1_950, A2_951, A3_952)
  local L4_953
  A2_951 = A2_951 or 604800
  A3_952 = A3_952 or 100
  L4_953 = "DecayingCounter_"
  L4_953 = L4_953 .. A0_949
  if A1_950 then
    if pcall(MpCommon.RollingQueueErase, L4_953) then
      MpCommon.RollingQueueCreate(L4_953, A3_952, A2_951, 0)
      return true
    end
  elseif pcall(MpCommon.AtomicCounterErase, L4_953) then
    MpCommon.AtomicCounterSet(L4_953, 0, A2_951, 10, 1, 0)
    return true
  end
  return false
end
function addRQValue(A0_954, A1_955, A2_956, A3_957, A4_958)
  A2_956 = A2_956 or 1
  A3_957 = A3_957 or 604800
  A4_958 = A4_958 or 100
  if pcall(MpCommon.RollingQueueQueryKey, A0_954, A1_955) and pcall(MpCommon.RollingQueueQueryKey, A0_954, A1_955) then
    A2_956 = pcall(MpCommon.RollingQueueQueryKey, A0_954, A1_955).value + A2_956
  end
  AppendToRollingQueue(A0_954, A1_955, A2_956, A3_957, A4_958, 1)
  return A2_956
end
function checkBruteForceCookie()
  local L0_959, L1_960
  L0_959 = "BruteForceProtectionCookieV3"
  L1_960 = GetAtomicCounter
  L1_960 = L1_960(L0_959)
  if not L1_960 then
    L1_960 = MpCommon.GetCurrentTimeT()
    pcall(MpCommon.AtomicCounterSet, L0_959, L1_960, 3110400000)
  end
  if GetRollingQueueKeyValue("RDP-Successful-Counter", "counter") and MpCommon.GetCurrentTimeT() - L1_960 > 1209600 then
    return true
  end
  return false
end
function getBruteForceConfig()
  local L0_961, L1_962, L2_963
  L0_961 = {}
  L0_961.status = 0
  L0_961.learning_mode = true
  L0_961.block_local_ip = false
  L1_962, L2_963 = nil, nil
  if MpCommon.GetBehavioralNetworkBlocksSettings then
    L1_962, L2_963 = pcall(MpCommon.GetBehavioralNetworkBlocksSettings, 1)
  end
  if L1_962 and L2_963 then
    if L2_963.State then
      L0_961.status = L2_963.State
    else
      L0_961.status = 0
    end
    if L2_963.Exclusions then
      L0_961.ip_exclusion_list = L2_963.Exclusions
    end
    if L2_963.MaxTimeout then
      L0_961.MaxTimeout = L2_963.MaxTimeout
    end
    if L2_963.AggressiveLevel then
      L0_961.AggressiveLevel = L2_963.AggressiveLevel
    end
    if L2_963.Plugins then
      L0_961.Plugins = L2_963.Plugins
      if L0_961.Plugins then
        if mp.bitand(L0_961.Plugins, 1) == 1 then
          L0_961.learning_mode = false
        end
        if mp.bitand(L0_961.Plugins, 2) == 2 then
          L0_961.block_local_ip = true
        end
      end
    end
  end
  if L0_961.ip_exclusion_list then
    L0_961.ip_exclusion_list = split(L0_961.ip_exclusion_list, ",")
  end
  return L0_961
end
function readDefenderIPExclusion(A0_964, A1_965, A2_966)
  local L3_967, L4_968, L5_969, L6_970, L7_971, L8_972, L9_973
  if not A1_965 then
    L3_967 = {}
    A1_965 = L3_967
  end
  A2_966 = A2_966 or ""
  L3_967 = sysio
  L3_967 = L3_967.RegOpenKey
  L4_968 = A0_964
  L3_967 = L3_967(L4_968)
  if L3_967 then
    L4_968 = sysio
    L4_968 = L4_968.RegEnumValues
    L4_968 = L4_968(L5_969)
    if L4_968 then
      for L8_972, L9_973 in L5_969(L6_970) do
        if not A1_965[L9_973] then
          A1_965[L9_973] = 0
          A2_966 = A2_966 .. "," .. L9_973
        end
      end
    end
  end
  L4_968 = A1_965
  return L4_968, L5_969
end
function getDefenderIPExclusion()
  local L0_974, L1_975
  L1_975 = GetRollingQueueKeyValue
  L1_975 = L1_975("DefenderExclusion", "IpAddresses")
  if L1_975 then
    L0_974 = split(L1_975, ",")
    L0_974 = convert_to_hashtable(L0_974)
  else
    L0_974, L1_975 = readDefenderIPExclusion("HKLM\\SOFTWARE\\Microsoft\\Windows Defender\\Exclusions\\IpAddresses")
    L0_974, L1_975 = readDefenderIPExclusion("HKLM\\SOFTWARE\\Policies\\Microsoft\\Windows Defender\\Exclusions\\IpAddresses", L0_974, L1_975)
    AppendToRollingQueue("DefenderExclusion", "IpAddresses", L1_975, 3600, 2)
  end
  return L0_974
end
function addDefenderIPExclusion(A0_976)
  local L1_977
  L1_977 = GetRollingQueueKeyValue
  L1_977 = L1_977("DefenderExclusion", "IpAddresses")
  if not L1_977 then
    L1_977 = A0_976
  else
    L1_977 = L1_977 .. "," .. A0_976
  end
  AppendToRollingQueue("DefenderExclusion", "IpAddresses", L1_977, 3600, 2)
end
function removeDefenderIPExclusion(A0_978)
  local L1_979, L2_980, L3_981, L4_982, L5_983, L6_984, L7_985
  L2_980 = GetRollingQueueKeyValue
  L2_980 = L2_980(L3_981, L4_982)
  if L2_980 then
    L1_979 = L3_981
    L2_980 = ""
    for L6_984, L7_985 in L3_981(L4_982) do
      if L7_985 ~= A0_978 then
        L2_980 = L2_980 .. "," .. L7_985
      end
    end
    L6_984 = L2_980
    L7_985 = 3600
    L3_981(L4_982, L5_983, L6_984, L7_985, 2)
  end
end
function getWorkstationReputation(A0_986)
  local L1_987, L2_988, L3_989, L4_990, L5_991, L6_992, L7_993, L8_994, L9_995, L10_996
  L1_987 = scrubData
  L2_988 = A0_986
  L1_987 = L1_987(L2_988)
  L2_988 = "F0000"
  L3_989 = string
  L3_989 = L3_989.sub
  L4_990 = L1_987
  L3_989 = L3_989(L4_990, L5_991)
  L1_987 = L2_988 .. L3_989
  L2_988 = 220
  L3_989 = MpCommon
  L3_989 = L3_989.SNidSearch
  L4_990 = L2_988
  L4_990 = L3_989(L4_990, L5_991)
  if L3_989 and L4_990 then
    L4_990 = L5_991
    L4_990 = L5_991
    for L8_994, L9_995, L10_996 in L5_991(L6_992, L7_993) do
      return true, tonumber(L8_994), tonumber(L9_995), tonumber(L10_996)
    end
  end
  L8_994 = 0
  return L5_991, L6_992, L7_993, L8_994
end
function getUserReputation(A0_997)
  local L1_998, L2_999, L3_1000, L4_1001, L5_1002, L6_1003, L7_1004, L8_1005, L9_1006, L10_1007
  L1_998 = scrubData
  L2_999 = A0_997
  L1_998 = L1_998(L2_999)
  L2_999 = "00000"
  L3_1000 = string
  L3_1000 = L3_1000.sub
  L4_1001 = L1_998
  L3_1000 = L3_1000(L4_1001, L5_1002)
  L1_998 = L2_999 .. L3_1000
  L2_999 = 220
  L3_1000 = MpCommon
  L3_1000 = L3_1000.SNidSearch
  L4_1001 = L2_999
  L4_1001 = L3_1000(L4_1001, L5_1002)
  if L3_1000 and L4_1001 then
    L4_1001 = L5_1002
    L4_1001 = L5_1002
    for L8_1005, L9_1006, L10_1007 in L5_1002(L6_1003, L7_1004) do
      return true, tonumber(L8_1005), tonumber(L9_1006), tonumber(L10_1007)
    end
  end
  L8_1005 = 0
  return L5_1002, L6_1003, L7_1004, L8_1005
end
function computeWorkstationReputation(A0_1008, A1_1009, A2_1010)
  local L3_1011, L4_1012, L5_1013, L6_1014, L7_1015, L8_1016, L9_1017, L10_1018, L11_1019, L12_1020
  A2_1010 = A2_1010 or 50
  L3_1011 = 0
  L4_1012, L5_1013, L6_1014, L7_1015 = nil, nil, nil, nil
  L8_1016 = getWorkstationReputation
  L9_1017 = A0_1008
  L11_1019 = L8_1016(L9_1017)
  L12_1020 = A0_1008.lower
  L12_1020 = L12_1020(A0_1008)
  if A0_1008 ~= L12_1020 then
    L4_1012, L5_1013, L6_1014, L7_1015 = getWorkstationReputation(L12_1020)
    if L4_1012 then
      L9_1017 = L8_1016 and math_round((L9_1017 + L5_1013) / 2) or L5_1013
      L10_1018 = L8_1016 and math_round((L10_1018 + L6_1014) / 2) or L6_1014
      L11_1019 = L8_1016 and math_round((L11_1019 + L7_1015) / 2) or L7_1015
    end
  end
  if L8_1016 or L4_1012 then
    if A1_1009 then
      L3_1011 = A2_1010 * (math_ln(L9_1017 + L10_1018) - math_ln(L11_1019)) / 21
    else
      L3_1011 = A2_1010 * (math_ln(L9_1017 + L10_1018) - math_ln(L11_1019)) / 19
    end
  end
  return L9_1017 + L10_1018 > 0 and L11_1019 == 0, math_max(0, math_round(L3_1011))
end
function computeUserReputationScore(A0_1021, A1_1022, A2_1023)
  local L3_1024, L4_1025, L5_1026, L6_1027, L7_1028, L8_1029, L9_1030, L10_1031, L11_1032, L12_1033
  A2_1023 = A2_1023 or 50
  L3_1024 = 0
  L4_1025, L5_1026, L6_1027, L7_1028 = nil, nil, nil, nil
  L8_1029 = getUserReputation
  L9_1030 = A0_1021
  L11_1032 = L8_1029(L9_1030)
  L12_1033 = A0_1021.lower
  L12_1033 = L12_1033(A0_1021)
  if A0_1021 ~= L12_1033 then
    L4_1025, L5_1026, L6_1027, L7_1028 = getUserReputation(L12_1033)
    if L4_1025 then
      L9_1030 = L8_1029 and math_round((L9_1030 + L5_1026) / 2) or L5_1026
      L10_1031 = L8_1029 and math_round((L10_1031 + L6_1027) / 2) or L6_1027
      L11_1032 = L8_1029 and math_round((L11_1032 + L7_1028) / 2) or L7_1028
    end
  end
  if L8_1029 or L4_1025 then
    if A1_1022 then
      L3_1024 = A2_1023 * (math_ln(L9_1030 + L10_1031) - math_ln(L11_1032)) / 21
    else
      L3_1024 = A2_1023 * (math_ln(L9_1030 + L10_1031) - math_ln(L11_1032)) / 19
    end
  end
  return L9_1030 + L10_1031 > 0, math_max(0, math_round(L3_1024))
end
function analyzeSuccess(A0_1034)
  local L1_1035, L2_1036, L3_1037, L4_1038, L5_1039
  L1_1035 = {}
  L2_1036 = 0
  L3_1037 = tonumber
  L4_1038 = GetRollingQueueKeyValue
  L5_1039 = "RDP_Ip"
  L5_1039 = L4_1038(L5_1039, A0_1034.Ip)
  L3_1037 = L3_1037(L4_1038, L5_1039, L4_1038(L5_1039, A0_1034.Ip))
  L4_1038 = tonumber
  L5_1039 = GetRollingQueueKeyValue
  L5_1039 = L5_1039("RDP_Usr", A0_1034.TFUN)
  L4_1038 = L4_1038(L5_1039, L5_1039("RDP_Usr", A0_1034.TFUN))
  if L3_1037 then
    L5_1039 = tonumber
    L5_1039 = L5_1039(L3_1037)
    if L5_1039 and L5_1039 >= 100 then
      L2_1036 = 1
    end
  end
  L5_1039 = {}
  L5_1039.IpScore = L3_1037
  L5_1039.UserScore = L4_1038
  L5_1039.case = L2_1036
  return L2_1036, L5_1039
end
function blockIP(A0_1040, A1_1041)
  A1_1041 = A1_1041 or 7200
  AppendToRollingQueue("FW-IPs", A0_1040, 1, A1_1041, 500)
end
function remediateRDPUser(A0_1042, A1_1043)
  A1_1043 = A1_1043 or 7200
  MpCommon.SetPersistContextNoPath("FW-Usrs", {A0_1042}, A1_1043)
end
function isBlockedIP(A0_1044)
  return IsKeyInRollingQueue("FW-IPs", A0_1044, true)
end
function isBlockedUser(A0_1045)
  if MpCommon.QueryPersistContextNoPath("FW-Usrs", A0_1045) then
    return true
  end
  return false
end
function addSuccessfulLogonTime(A0_1046)
  AppendToRollingQueue("RDP-S-User", A0_1046, tostring(MpCommon.GetCurrentTimeT()), 31104000, 100)
end
function getLastSuccessfulLogonTime(A0_1047)
  return GetRollingQueueKeyValue("RDP-S-User", A0_1047)
end
function reportBFEvidenceFromRQ(A0_1048)
  if not pcall(MpCommon.RollingQueueQueryKey, A0_1048, "evidence") then
    return pcall(MpCommon.RollingQueueQueryKey, A0_1048, "evidence")
  end
  bm.add_related_string("BFELEN", "" .. #pcall(MpCommon.RollingQueueQueryKey, A0_1048, "evidence").value, bm.RelatedStringBMReport)
  bm.add_related_string("BFE", pcall(MpCommon.RollingQueueQueryKey, A0_1048, "evidence").value, bm.RelatedStringBMReport)
  pcall(MpCommon.RollingQueueErase, A0_1048)
  return pcall(MpCommon.RollingQueueQueryKey, A0_1048, "evidence")
end
function cleanBruteForceResource()
  local L0_1049, L1_1050, L2_1051, L3_1052, L4_1053, L5_1054, L6_1055, L7_1056
  L0_1049 = {
    L1_1050,
    L2_1051,
    L3_1052,
    L4_1053,
    L5_1054,
    L6_1055,
    L7_1056,
    "RDP-Ip-Failed-Counter",
    "RDP-F-User",
    "RDP-F-IP",
    "RDP_Ip",
    "RDP_Usr",
    "RDP_blocked_IP",
    "FW-IPs",
    "RDP-S-User",
    "RDP-Event-Success",
    "RDP-Event-Fail",
    "RDP-Successful-Counter"
  }
  L1_1050 = "RDP-Ip-Successful-Counter"
  L2_1051 = "RDP-WSN-Successful-Counter"
  L6_1055 = "RDP-S-IP-User"
  L7_1056 = "RDP-S-Ws"
  L1_1050 = {
    L2_1051,
    L3_1052,
    L4_1053
  }
  L2_1051 = "BruteForceProtectionCookieV3"
  L2_1051 = {
    L3_1052,
    L4_1053,
    L5_1054
  }
  for L6_1055, L7_1056 in L3_1052(L4_1053) do
    pcall(MpCommon.RollingQueueErase, L7_1056)
  end
  for L6_1055, L7_1056 in L3_1052(L4_1053) do
    pcall(MpCommon.AtomicCounterErase, L7_1056)
  end
  for L6_1055, L7_1056 in L3_1052(L4_1053) do
    pcall(MpCommon.OverwritePersistContextNoPath, L7_1056, {}, 1)
  end
end
function checkLogonSuccessEvent(A0_1057)
  local L1_1058, L2_1059, L3_1060, L4_1061, L5_1062, L6_1063, L7_1064, L8_1065, L9_1066, L10_1067, L11_1068, L12_1069, L13_1070, L14_1071, L15_1072, L16_1073, L17_1074, L18_1075
  L1_1058 = parseLogonEvent
  L2_1059 = A0_1057
  L1_1058 = L1_1058(L2_1059)
  L2_1059 = getIpAddressClass
  L3_1060 = L1_1058.Ip
  L2_1059 = L2_1059(L3_1060)
  if L2_1059 == 2 or L2_1059 == 8 then
    return
  end
  L3_1060 = GetRollingQueueCount
  L4_1061 = "RDP-Ip-Successful-Counter"
  L3_1060 = L3_1060(L4_1061)
  if L3_1060 >= 1000 then
    return
  end
  L3_1060 = getBruteForceConfig
  L3_1060 = L3_1060()
  L4_1061 = L3_1060.status
  if L4_1061 == 4 then
    return
  end
  L4_1061 = IsKeyInRollingQueue
  L5_1062 = "BruteForceProtection-Cloud-Config"
  L6_1063 = "signature_disable"
  L4_1061 = L4_1061(L5_1062, L6_1063)
  if L4_1061 then
    return
  end
  L4_1061 = true
  L5_1062 = isHoneypotMachine
  L5_1062 = L5_1062()
  if L5_1062 then
    L4_1061 = false
  end
  L5_1062 = checkBruteForceCookie
  L5_1062()
  L5_1062 = isRelevantLogon
  L6_1063 = L1_1058
  L5_1062 = L5_1062(L6_1063)
  if L5_1062 then
    L5_1062 = addLogonEvent
    L6_1063 = L1_1058
    L7_1064 = true
    L8_1065 = L4_1061
    L5_1062(L6_1063, L7_1064, L8_1065)
    L5_1062 = analyzeSuccess
    L6_1063 = L1_1058
    L6_1063 = L5_1062(L6_1063)
    L7_1064 = tonumber
    L8_1065 = GetRollingQueueKeyValue
    L9_1066 = "RDP-Ip-Successful-Counter"
    L10_1067 = L1_1058.Ip
    L18_1075 = L8_1065(L9_1066, L10_1067)
    L7_1064 = L7_1064(L8_1065, L9_1066, L10_1067, L11_1068, L12_1069, L13_1070, L14_1071, L15_1072, L16_1073, L17_1074, L18_1075, L8_1065(L9_1066, L10_1067))
    if L7_1064 ~= 1 then
      L8_1065 = GetRollingQueueKeyValue
      L9_1066 = "BruteForceCloudQueryHistory"
      L10_1067 = L1_1058.Ip
      L8_1065 = L8_1065(L9_1066, L10_1067)
      if not L8_1065 then
        L7_1064 = 1
      end
    end
    L8_1065 = mp
    L8_1065 = L8_1065.bitand
    L9_1066 = L5_1062
    L10_1067 = 1
    L8_1065 = L8_1065(L9_1066, L10_1067)
    if L8_1065 == 1 or L7_1064 == 1 then
      L8_1065 = getRDPTelemetryData
      L9_1066 = L6_1063
      L10_1067 = L1_1058
      L11_1068 = L4_1061
      L8_1065 = L8_1065(L9_1066, L10_1067, L11_1068)
      L8_1065.ip_address_class = L2_1059
      if L2_1059 == 1 then
        L9_1066 = L3_1060.block_local_ip
        if L9_1066 == false then
          return
        end
      elseif L2_1059 ~= 3 then
        L8_1065.TAG = "NOLOOKUP"
      end
      L9_1066 = GetRollingQueueKeyValue
      L10_1067 = "SuccessCloudCallProcessingQueue"
      L11_1068 = L1_1058.Ip
      L9_1066 = L9_1066(L10_1067, L11_1068)
      if L9_1066 == "1" then
        L9_1066 = addRQValue
        L10_1067 = "BF-HighVolumeRequest"
        L11_1068 = L1_1058.Ip
        L12_1069 = 1
        L13_1070 = 86400
        L14_1071 = 1000
        L9_1066(L10_1067, L11_1068, L12_1069, L13_1070, L14_1071)
        return
      else
        L9_1066 = AppendToRollingQueue
        L10_1067 = "SuccessCloudCallProcessingQueue"
        L11_1068 = L1_1058.Ip
        L12_1069 = 1
        L13_1070 = 300
        L14_1071 = 1000
        L9_1066(L10_1067, L11_1068, L12_1069, L13_1070, L14_1071)
      end
      L8_1065.CONTEXT_SOURCE = "LBFS"
      L9_1066 = SafeGetUrlReputation
      L10_1067 = {L11_1068}
      L11_1068 = L1_1058.Ip
      L11_1068 = L8_1065
      L12_1069 = false
      L13_1070 = 4000
      L14_1071 = false
      L9_1066 = L9_1066(L10_1067, L11_1068, L12_1069, L13_1070, L14_1071)
      L10_1067, L11_1068, L12_1069, L13_1070, L14_1071 = nil, nil, nil, nil, nil
      L15_1072 = L9_1066.urls
      L16_1073 = L1_1058.Ip
      L15_1072 = L15_1072[L16_1073]
      if L15_1072 then
        L15_1072 = AppendToRollingQueue
        L16_1073 = "BruteForceCloudQueryHistory"
        L17_1074 = L1_1058.Ip
        L18_1075 = 0
        L15_1072(L16_1073, L17_1074, L18_1075, 604800, 1000)
        L15_1072 = L9_1066.urls
        L16_1073 = L1_1058.Ip
        L15_1072 = L15_1072[L16_1073]
        L10_1067 = L15_1072.determination
        L15_1072 = L9_1066.urls
        L16_1073 = L1_1058.Ip
        L15_1072 = L15_1072[L16_1073]
        L11_1068 = L15_1072.confidence
        L15_1072 = L9_1066.urls
        L16_1073 = L1_1058.Ip
        L15_1072 = L15_1072[L16_1073]
        L15_1072 = L15_1072.context
        L12_1069 = L15_1072.source
        L15_1072 = L9_1066.urls
        L16_1073 = L1_1058.Ip
        L15_1072 = L15_1072[L16_1073]
        L15_1072 = L15_1072.context
        L14_1071 = L15_1072.signature_disable_ttl
        L15_1072 = L9_1066.urls
        L16_1073 = L1_1058.Ip
        L15_1072 = L15_1072[L16_1073]
        L15_1072 = L15_1072.context
        L13_1070 = L15_1072.score
        if L14_1071 then
          L15_1072 = AppendToRollingQueue
          L16_1073 = "BruteForceProtection-Cloud-Config"
          L17_1074 = "signature_disable"
          L18_1075 = L14_1071
          L15_1072(L16_1073, L17_1074, L18_1075, tonumber(L14_1071))
          L15_1072 = cleanBruteForceResource
          L15_1072()
        end
      else
        L15_1072 = L9_1066.error
        if L15_1072 == 3 then
          L15_1072 = addRQValue
          L16_1073 = "BF-FailedCloudCalls"
          L17_1074 = "Counter"
          L18_1075 = 1
          L15_1072(L16_1073, L17_1074, L18_1075, 86400, 10)
          L15_1072 = AppendToRollingQueue
          L16_1073 = "BF-FailedCloudCalls"
          L17_1074 = "LastError"
          L18_1075 = L9_1066.err_msg
          L15_1072(L16_1073, L17_1074, L18_1075, 86400, 10)
        end
      end
      L15_1072 = AppendToRollingQueue
      L16_1073 = "SuccessCloudCallProcessingQueue"
      L17_1074 = L1_1058.Ip
      L18_1075 = 0
      L15_1072(L16_1073, L17_1074, L18_1075, 1, 1000)
      if L10_1067 == 2 and L12_1069 == "BruteforceReputationLookup" and L11_1068 >= 70 then
        L15_1072 = {}
        L16_1073 = L1_1058.Ip
        L15_1072.IP = L16_1073
        L16_1073 = L1_1058.Wsn
        L15_1072.WorkStationName = L16_1073
        L15_1072.CONTEXT_SOURCE = "LBFS"
        L16_1073 = L1_1058.TN
        L15_1072.Username = L16_1073
        L16_1073 = L1_1058.TDN
        L15_1072.DomainName = L16_1073
        L16_1073 = nil
        L17_1074 = {
          L18_1075,
          900,
          3600,
          21600,
          86400,
          604800
        }
        L18_1075 = 180
        L18_1075 = addRQValue
        L18_1075 = L18_1075("RDP_blocked_IP", L1_1058.Ip, 1, 604800, 1000)
        L18_1075 = math_min(5, L18_1075)
        if L11_1068 == 100 then
          L16_1073 = math_max(L17_1074[L18_1075], L17_1074[3])
        else
          L16_1073 = L17_1074[L18_1075]
        end
        if L3_1060.MaxTimeout and L3_1060.MaxTimeout ~= 0 then
          L16_1073 = math_min(L3_1060.MaxTimeout, L16_1073)
        end
        if L3_1060.AggressiveLevel == 0 and L11_1068 == 100 or L3_1060.AggressiveLevel == 1 and L11_1068 >= 70 or L3_1060.AggressiveLevel == 2 then
          if L3_1060.status == 1 then
            MpCommon.AddBlockingFirewallRule(L1_1058.Ip, L16_1073, true)
          end
          bm.trigger_sig("BruteForceDetectionAdditionalInfo", safeJsonSerialize(L15_1072))
        end
        AppendToRollingQueue("RDP-Ip-Successful-Counter", L1_1058.Ip, 0, 604800, 1000, 1)
        AppendToRollingQueue("RDP-WSN-Successful-Counter", L1_1058.Ip, 0, 604800, 1000, 1)
      else
        L15_1072 = L6_1063.IpScore
        if L15_1072 then
          L15_1072 = L6_1063.IpScore
          if L15_1072 > 0 then
            L15_1072 = AppendToRollingQueue
            L16_1073 = "RDP_Ip"
            L17_1074 = L1_1058.Ip
            L18_1075 = 0
            L15_1072(L16_1073, L17_1074, L18_1075, 604800, 1000, 1)
            L15_1072 = AppendToRollingQueue
            L16_1073 = "RDP_Usr"
            L17_1074 = L1_1058.TFUN
            L18_1075 = 0
            L15_1072(L16_1073, L17_1074, L18_1075, 604800, 1000, 1)
            L15_1072 = AppendToRollingQueue
            L16_1073 = "RDP_blocked_IP"
            L17_1074 = L1_1058.Ip
            L18_1075 = 0
            L15_1072(L16_1073, L17_1074, L18_1075, 604800, 1000, 1)
          end
        end
      end
    end
  end
  return
end
function checkLogonFailureEvent(A0_1076)
  local L1_1077, L2_1078, L3_1079, L4_1080, L5_1081, L6_1082, L7_1083, L8_1084, L9_1085, L10_1086, L11_1087, L12_1088, L13_1089, L14_1090, L15_1091, L16_1092, L17_1093, L18_1094, L19_1095, L20_1096
  L1_1077 = parseLogonEvent
  L2_1078 = A0_1076
  L1_1077 = L1_1077(L2_1078)
  L2_1078 = getIpAddressClass
  L3_1079 = L1_1077.Ip
  L2_1078 = L2_1078(L3_1079)
  if L2_1078 == 2 or L2_1078 == 8 then
    return
  end
  L3_1079 = GetRollingQueueCount
  L4_1080 = "RDP-Ip-Successful-Counter"
  L3_1079 = L3_1079(L4_1080)
  if L3_1079 >= 1000 then
    return
  end
  L3_1079 = getBruteForceConfig
  L3_1079 = L3_1079()
  L4_1080 = L3_1079.status
  if L4_1080 == 4 then
    return
  end
  L4_1080 = IsKeyInRollingQueue
  L5_1081 = "BruteForceProtection-Cloud-Config"
  L6_1082 = "signature_disable"
  L4_1080 = L4_1080(L5_1081, L6_1082)
  if L4_1080 then
    return
  end
  L4_1080 = true
  L5_1081 = isHoneypotMachine
  L5_1081 = L5_1081()
  if L5_1081 then
    L4_1080 = false
  end
  L5_1081 = checkBruteForceCookie
  L5_1081()
  L5_1081 = L3_1079.status
  if L5_1081 ~= 0 then
    L5_1081 = L3_1079.status
  elseif L5_1081 == 2 then
    L5_1081 = isBlockedIP
    L6_1082 = L1_1077.Ip
    L5_1081 = L5_1081(L6_1082)
    if L5_1081 then
      return
    end
  end
  L5_1081 = isRelevantLogon
  L6_1082 = L1_1077
  L5_1081 = L5_1081(L6_1082)
  if L5_1081 then
    if L2_1078 ~= 1 then
      L5_1081 = isKnownIP
      L6_1082 = L1_1077.Ip
      L5_1081 = L5_1081(L6_1082)
      if L5_1081 then
        return
      end
    end
    L5_1081 = getDefenderIPExclusion
    L5_1081 = L5_1081()
    L6_1082 = convert_to_hashtable
    L6_1082 = L6_1082(L7_1083, L8_1084)
    if L6_1082 then
      for L10_1086 in L7_1083(L8_1084) do
        L11_1087 = split
        L12_1088 = L10_1086
        L13_1089 = "/"
        L11_1087 = L11_1087(L12_1088, L13_1089)
        L12_1088 = L11_1087[1]
        L13_1089 = L11_1087[2]
        if L13_1089 then
          L14_1090 = pcall
          L15_1091 = isIPInNetmaskRange
          L16_1092 = L1_1077.Ip
          L17_1093 = L12_1088
          L18_1094 = L13_1089
          L15_1091 = L14_1090(L15_1091, L16_1092, L17_1093, L18_1094)
          if L14_1090 and L15_1091 then
            return
          end
        else
          L14_1090 = L1_1077.Ip
          if L10_1086 == L14_1090 then
            return
          end
        end
      end
    end
    L10_1086 = L4_1080
    L7_1083(L8_1084, L9_1085, L10_1086)
    if L9_1085 then
      if not L9_1085 then
        return
      end
    end
    L10_1086 = "CloudCallProcessingQueue"
    L11_1087 = L1_1077.Ip
    if L9_1085 == "1" then
      L10_1086 = "BF-HighVolumeRequest"
      L11_1087 = L1_1077.Ip
      L12_1088 = 1
      L13_1089 = 86400
      L14_1090 = 1000
      L9_1085(L10_1086, L11_1087, L12_1088, L13_1089, L14_1090)
      return
    end
    L10_1086, L11_1087, L12_1088, L13_1089, L14_1090 = nil, nil, nil, nil, nil
    L15_1091 = mp
    L15_1091 = L15_1091.bitand
    L16_1092 = L7_1083
    L17_1093 = 1
    L15_1091 = L15_1091(L16_1092, L17_1093)
    if L15_1091 == 1 then
      L15_1091 = getRDPTelemetryData
      L16_1092 = L8_1084
      L17_1093 = L1_1077
      L18_1094 = L4_1080
      L15_1091 = L15_1091(L16_1092, L17_1093, L18_1094)
      L16_1092 = safeJsonSerialize
      L17_1093 = L3_1079
      L16_1092 = L16_1092(L17_1093)
      L15_1091.config = L16_1092
      L15_1091.ip_address_class = L2_1078
      L16_1092 = L3_1079.block_local_ip
      if L16_1092 or L2_1078 ~= 1 then
        L16_1092 = AppendToRollingQueue
        L17_1093 = "CloudCallProcessingQueue"
        L18_1094 = L1_1077.Ip
        L19_1095 = 1
        L20_1096 = 300
        L16_1092(L17_1093, L18_1094, L19_1095, L20_1096, 1000)
        L15_1091.CONTEXT_SOURCE = "LBFF"
        if L2_1078 ~= 3 then
          L15_1091.TAG = "NOLOOKUP"
        end
        L16_1092 = SafeGetUrlReputation
        L17_1093 = {L18_1094}
        L18_1094 = L1_1077.Ip
        L18_1094 = L15_1091
        L19_1095 = false
        L20_1096 = 4000
        L16_1092 = L16_1092(L17_1093, L18_1094, L19_1095, L20_1096, false)
        L16_1092 = L9_1085.urls
        L17_1093 = L1_1077.Ip
        L16_1092 = L16_1092[L17_1093]
        if L16_1092 then
          L16_1092 = L9_1085.urls
          L17_1093 = L1_1077.Ip
          L16_1092 = L16_1092[L17_1093]
          L10_1086 = L16_1092.determination
          L16_1092 = L9_1085.urls
          L17_1093 = L1_1077.Ip
          L16_1092 = L16_1092[L17_1093]
          L11_1087 = L16_1092.confidence
          L16_1092 = L9_1085.urls
          L17_1093 = L1_1077.Ip
          L16_1092 = L16_1092[L17_1093]
          L16_1092 = L16_1092.context
          L12_1088 = L16_1092.source
          L16_1092 = L9_1085.urls
          L17_1093 = L1_1077.Ip
          L16_1092 = L16_1092[L17_1093]
          L16_1092 = L16_1092.context
          L14_1090 = L16_1092.score
          L16_1092 = L9_1085.urls
          L17_1093 = L1_1077.Ip
          L16_1092 = L16_1092[L17_1093]
          L16_1092 = L16_1092.context
          L13_1089 = L16_1092.signature_disable_ttl
          if L13_1089 then
            L16_1092 = AppendToRollingQueue
            L17_1093 = "BruteForceProtection-Cloud-Config"
            L18_1094 = "signature_disable"
            L19_1095 = L13_1089
            L20_1096 = tonumber
            L20_1096 = L20_1096(L13_1089)
            L16_1092(L17_1093, L18_1094, L19_1095, L20_1096, L20_1096(L13_1089))
            L16_1092 = cleanBruteForceResource
            L16_1092()
          end
        else
          L16_1092 = L9_1085.error
          if L16_1092 == 3 then
            L16_1092 = addRQValue
            L17_1093 = "BF-FailedCloudCalls"
            L18_1094 = "Counter"
            L19_1095 = 1
            L20_1096 = 86400
            L16_1092(L17_1093, L18_1094, L19_1095, L20_1096, 10)
            L16_1092 = AppendToRollingQueue
            L17_1093 = "BF-FailedCloudCalls"
            L18_1094 = "LastError"
            L19_1095 = L9_1085.err_msg
            L20_1096 = 86400
            L16_1092(L17_1093, L18_1094, L19_1095, L20_1096, 10)
          end
        end
      end
      if L10_1086 == 1 and L12_1088 == "BruteforceReputationLookup" then
        L16_1092 = AppendToRollingQueue
        L17_1093 = "RDP_Ip"
        L18_1094 = L1_1077.Ip
        L19_1095 = 0
        L20_1096 = 604800
        L16_1092(L17_1093, L18_1094, L19_1095, L20_1096, 1000, 1)
        L16_1092 = AppendToRollingQueue
        L17_1093 = "RDP_Usr"
        L18_1094 = L1_1077.TFUN
        L19_1095 = 0
        L20_1096 = 604800
        L16_1092(L17_1093, L18_1094, L19_1095, L20_1096, 1000, 1)
        L16_1092 = AppendToRollingQueue
        L17_1093 = "RDP_blocked_IP"
        L18_1094 = L1_1077.Ip
        L19_1095 = 0
        L20_1096 = 604800
        L16_1092(L17_1093, L18_1094, L19_1095, L20_1096, 1000, 1)
      else
        L16_1092 = nil
        L17_1093 = {
          L18_1094,
          L19_1095,
          L20_1096,
          21600,
          86400,
          604800
        }
        L18_1094 = 180
        L19_1095 = 900
        L20_1096 = 3600
        L18_1094 = addRQValue
        L19_1095 = "RDP_blocked_IP"
        L20_1096 = L1_1077.Ip
        L18_1094 = L18_1094(L19_1095, L20_1096, 1, 604800, 1000)
        L19_1095 = math_min
        L20_1096 = 5
        L19_1095 = L19_1095(L20_1096, L18_1094)
        L18_1094 = L19_1095
        if L11_1087 == 100 then
          L19_1095 = math_max
          L20_1096 = L17_1093[L18_1094]
          L19_1095 = L19_1095(L20_1096, L17_1093[3])
          L16_1092 = L19_1095
        else
          L16_1092 = L17_1093[L18_1094]
        end
        L19_1095 = L3_1079.MaxTimeout
        if L19_1095 then
          L19_1095 = L3_1079.MaxTimeout
          if L19_1095 ~= 0 then
            L19_1095 = math_min
            L20_1096 = L3_1079.MaxTimeout
            L19_1095 = L19_1095(L20_1096, L16_1092)
            L16_1092 = L19_1095
          end
        end
        if L2_1078 == 1 then
          L19_1095 = L3_1079.block_local_ip
          if not L19_1095 then
            L19_1095 = false
            L20_1096 = GetRollingQueueKeyValue
            L20_1096 = L20_1096("domainInfo", L1_1077.Ip)
            if L20_1096 and mp.bitand(L20_1096, 48) ~= 0 then
              L19_1095 = true
            end
            if not L19_1095 then
              return
            elseif MpCommon.IsSampled(20000, true, true, true) then
              L15_1091.CONTEXT_SOURCE = "LBFF"
              L15_1091.TAG = "NOLOOKUP"
            end
          end
        end
        L19_1095 = L3_1079.AggressiveLevel
        if L19_1095 ~= 0 or L11_1087 ~= 100 then
          L19_1095 = L3_1079.AggressiveLevel
          if L19_1095 ~= 1 or not (L11_1087 >= 70) then
            L19_1095 = L3_1079.AggressiveLevel
          end
        elseif L19_1095 == 2 then
          L19_1095 = L3_1079.status
          if L19_1095 == 1 then
            L19_1095 = MpCommon
            L19_1095 = L19_1095.AddBlockingFirewallRule
            L20_1096 = L1_1077.Ip
            L19_1095(L20_1096, L16_1092, true)
          end
          L19_1095 = {}
          L20_1096 = L1_1077.Ip
          L19_1095.IP = L20_1096
          L20_1096 = L1_1077.Wsn
          L19_1095.WorkStationName = L20_1096
          L19_1095.CONTEXT_SOURCE = "LBFF"
          L20_1096 = L1_1077.TN
          L19_1095.Username = L20_1096
          L20_1096 = L1_1077.TDN
          L19_1095.DomainName = L20_1096
          L20_1096 = bm
          L20_1096 = L20_1096.trigger_sig
          L20_1096("BruteForceDetectionAdditionalInfo", safeJsonSerialize(L19_1095))
        end
        L19_1095 = blockIP
        L20_1096 = L1_1077.Ip
        L19_1095(L20_1096, L16_1092)
        L19_1095 = AppendToRollingQueue
        L20_1096 = "CloudCallProcessingQueue"
        L19_1095(L20_1096, L1_1077.Ip, 0, 1, 1000)
      end
    elseif L2_1078 ~= 1 then
      L15_1091 = GetRollingQueueKeyValue
      L16_1092 = "RDP-Ip-Failed-Counter"
      L17_1093 = L1_1077.Ip
      L15_1091 = L15_1091(L16_1092, L17_1093)
      if L15_1091 == "1" then
        L15_1091 = MpCommon
        L15_1091 = L15_1091.IsSampled
        L16_1092 = 10000
        L17_1093 = true
        L18_1094 = true
        L19_1095 = true
        L15_1091 = L15_1091(L16_1092, L17_1093, L18_1094, L19_1095)
        if L15_1091 then
          L15_1091 = getRDPTelemetryData
          L16_1092 = L8_1084
          L17_1093 = L1_1077
          L18_1094 = L4_1080
          L15_1091 = L15_1091(L16_1092, L17_1093, L18_1094)
          L15_1091.ip_address_class = L2_1078
          L15_1091.CONTEXT_SOURCE = "LBFF"
          L15_1091.reason = "spraying attack"
          L16_1092 = SafeGetUrlReputation
          L17_1093 = {L18_1094}
          L18_1094 = L1_1077.Ip
          L18_1094 = L15_1091
          L19_1095 = false
          L20_1096 = 2000
          L16_1092(L17_1093, L18_1094, L19_1095, L20_1096, false)
        end
      end
    end
  end
  return
end
function renderFeatures(A0_1097)
  local L1_1098, L2_1099
  L1_1098 = {}
  L2_1099 = {
    "GenB_FLAG_SameExtension",
    "GenB_FLAG_Encrypt3Folder",
    "GenB_FLAG_SameRenameFolder",
    "GenB_FLAG_AllFileUnknown",
    "GenB_FLAG_SameMagicByte",
    "GenB_FLAG_AllFileHasHighEntropy",
    "GenB_FLAG_AllFileMagicExtMismatch"
  }
  for _FORV_6_ = 1, #L2_1099 do
    table.insert(L1_1098, L2_1099[_FORV_6_] .. "=" .. tostring(mp.bitand(A0_1097, math_pow(2, _FORV_6_ - 1)) > 0))
  end
  return L1_1098
end
function RansomwareFeatures()
  local L0_1100, L1_1101, L2_1102, L3_1103, L4_1104, L5_1105, L6_1106, L7_1107, L8_1108, L9_1109, L10_1110, L11_1111, L12_1112, L13_1113, L14_1114, L15_1115, L16_1116, L17_1117, L18_1118, L19_1119, L20_1120, L21_1121, L22_1122, L23_1123, L24_1124, L25_1125, L26_1126, L27_1127, L28_1128, L29_1129, L30_1130
  L0_1100 = 1
  L1_1101 = 2
  L2_1102 = 4
  L3_1103 = 8
  L4_1104 = 16
  L5_1105 = 32
  L6_1106 = 64
  L7_1107 = 0
  L8_1108 = bm
  L8_1108 = L8_1108.get_current_process_startup_info
  L8_1108 = L8_1108()
  L9_1109 = L8_1108.ppid
  L8_1108 = L9_1109 or -1
  L9_1109 = "genb_ransom_meta_"
  L10_1110 = L8_1108
  L9_1109 = L9_1109 .. L10_1110
  L10_1110 = MpCommon
  L10_1110 = L10_1110.RollingQueueCount
  L11_1111 = L9_1109
  L10_1110 = L10_1110(L11_1111)
  if L10_1110 ~= nil and L10_1110 >= 25 and L10_1110 <= 100 then
    L11_1111 = GetRollingQueue
    L12_1112 = L9_1109
    L11_1111 = L11_1111(L12_1112)
    if L11_1111 ~= nil then
      L12_1112 = type
      L13_1113 = L11_1111
      L12_1112 = L12_1112(L13_1113)
    elseif L12_1112 ~= "table" then
      L12_1112 = mp
      L12_1112 = L12_1112.CLEAN
      return L12_1112
    end
    L12_1112 = nil
    L13_1113 = ""
    L14_1114 = ""
    L15_1115 = {}
    L16_1116 = 0
    L17_1117 = {}
    L18_1118 = 0
    L19_1119 = 0
    L20_1120 = {}
    L21_1121 = 0
    L22_1122 = 0
    L23_1123 = 0
    L24_1124 = ""
    L25_1125 = false
    L26_1126 = ""
    L27_1127 = ""
    L28_1128 = ""
    L29_1129 = ""
    L30_1130 = ""
    for _FORV_35_, _FORV_36_ in ipairs(L11_1111) do
      L12_1112 = explode(_FORV_36_.value, "|")
      L26_1126 = L12_1112[1]
      L27_1127 = L12_1112[2]
      L28_1128 = L12_1112[3]
      L29_1129 = L12_1112[4]
      L30_1130 = L12_1112[6]
      if L17_1117[L26_1126] ~= 1 then
        L18_1118 = L18_1118 + 1
        L17_1117[L26_1126] = 1
      end
      L13_1113 = string.match(L27_1127, "(.*[/\\])")
      L14_1114 = mp.crc32(0, L13_1113, 1, #L13_1113)
      if L15_1115[L14_1114] ~= 1 then
        L16_1116 = L16_1116 + 1
        L15_1115[L14_1114] = 1
      end
      L24_1124 = string.match(L28_1128, "(.*[/\\])")
      if L24_1124 ~= L13_1113 and L25_1125 == false then
        L25_1125 = true
      end
      if L29_1129 == "Unknown" then
        L19_1119 = L19_1119 + 1
      end
      if L20_1120[L30_1130] ~= 1 then
        L21_1121 = L21_1121 + 1
        L20_1120[L30_1130] = 1
      end
      if ExtensionToMagicMismatch(L26_1126, L30_1130) == true then
        L23_1123 = L23_1123 + 1
      end
      if 7 <= L12_1112[7] then
        L22_1122 = L22_1122 + 1
      end
    end
    if L18_1118 == 1 then
      L7_1107 = mp.bitor(L7_1107, L0_1100)
    end
    if L16_1116 > 3 then
      L7_1107 = mp.bitor(L7_1107, L1_1101)
    end
    if L25_1125 == false then
      L7_1107 = mp.bitor(L7_1107, L2_1102)
    end
    if L19_1119 == L10_1110 then
      L7_1107 = mp.bitor(L7_1107, L3_1103)
    end
    if L21_1121 == 1 then
      L7_1107 = mp.bitor(L7_1107, L4_1104)
    end
    if L22_1122 == L10_1110 then
      L7_1107 = mp.bitor(L7_1107, L5_1105)
    end
    if L23_1123 == L10_1110 then
      L7_1107 = mp.bitor(L7_1107, L6_1106)
    end
  end
  L11_1111 = renderFeatures
  L12_1112 = L7_1107
  return L11_1111(L12_1112)
end
function analyzeFailure(A0_1131)
  local L1_1132, L2_1133, L3_1134, L4_1135, L5_1136, L6_1137, L7_1138, L8_1139, L9_1140, L10_1141, L11_1142, L12_1143, L13_1144, L14_1145, L15_1146, L16_1147, L17_1148, L18_1149, L19_1150, L20_1151, L21_1152, L22_1153, L23_1154, L24_1155, L25_1156, L26_1157, L27_1158
  L1_1132 = 0
  L2_1133 = 0
  L3_1134 = 1
  L4_1135 = 2
  L5_1136 = 4
  L6_1137 = 8
  L7_1138 = 16
  L8_1139 = 32
  L9_1140 = 64
  L10_1141 = 128
  L11_1142 = 256
  L12_1143 = 512
  L13_1144 = 1024
  L14_1145 = 2048
  L15_1146 = 4096
  L16_1147 = 8192
  L17_1148 = 16384
  L18_1149 = 32568
  L19_1150 = 65536
  L20_1151 = isPublicIP
  L21_1152 = A0_1131.Ip
  L20_1151 = L20_1151(L21_1152)
  function L21_1152(A0_1159, A1_1160, A2_1161)
    if isKnownWorkstationForIP(A0_1159.Ip, A0_1159.Wsn) then
      A2_1161 = mp.bitor(A2_1161, _UPVALUE0_)
      A1_1160 = A1_1160 - 10
    elseif isKnownWorkstationForUser(A0_1159.TFUN, A0_1159.Wsn) then
      A2_1161 = mp.bitor(A2_1161, _UPVALUE1_)
      A1_1160 = A1_1160 - 10
    elseif isKnownWorkstation(A0_1159.Wsn) then
      A2_1161 = mp.bitor(A2_1161, _UPVALUE2_)
      A1_1160 = A1_1160 - 5
    elseif isKnownAttackerWorkstation(A0_1159) then
      A2_1161 = mp.bitor(A2_1161, _UPVALUE3_)
      A1_1160 = A1_1160 + isKnownAttackerWorkstation(A0_1159)
    elseif mp.bitand(A2_1161, _UPVALUE4_) == _UPVALUE4_ and mp.bitand(A2_1161, _UPVALUE5_) == _UPVALUE5_ then
      A1_1160 = A1_1160 + 1
    else
      A1_1160 = A1_1160 + 10
    end
    return A1_1160, A2_1161
  end
  ComputeWSNScore = L21_1152
  function L21_1152(A0_1162, A1_1163, A2_1164)
    local L3_1165, L4_1166
    L3_1165 = A0_1162.SubStatus
    if L3_1165 ~= 3221225572 then
      L3_1165 = mp
      L3_1165 = L3_1165.bitor
      L4_1166 = A2_1164
      L3_1165 = L3_1165(L4_1166, _UPVALUE0_)
      A2_1164 = L3_1165
      A1_1163 = A1_1163 - 1
    else
      L3_1165 = mp
      L3_1165 = L3_1165.bitor
      L4_1166 = A2_1164
      L3_1165 = L3_1165(L4_1166, _UPVALUE1_)
      A2_1164 = L3_1165
      L3_1165 = getLocalProfileTypoDistance
      L4_1166 = A0_1162.TN
      L4_1166 = L3_1165(L4_1166, 3)
      if L3_1165 < 3 then
        A2_1164 = mp.bitor(A2_1164, _UPVALUE2_)
        A1_1163 = math_min(math_floor(A1_1163 * L3_1165 / 4), A1_1163 - 10)
        if isKnownUserForIP(A0_1162.Ip, L4_1166) then
          A2_1164 = mp.bitor(A2_1164, _UPVALUE3_)
          A1_1163 = A1_1163 - 10
        end
      else
        A1_1163 = A1_1163 + 10
        if isTopAbusedUser(A0_1162) then
          A2_1164 = mp.bitor(A2_1164, _UPVALUE4_)
          A1_1163 = A1_1163 + isTopAbusedUser(A0_1162)
        end
        if #A0_1162.TDN and A0_1162.TDN ~= "" and isValidLocalDomain(A0_1162.TDN) > 0 then
          A2_1164 = mp.bitor(A2_1164, _UPVALUE5_)
          if isValidLocalDomain(A0_1162.TDN) == 1 then
            A2_1164 = mp.bitor(A2_1164, _UPVALUE6_)
          end
          A1_1163 = A1_1163 - 10
        end
      end
    end
    L3_1165 = A1_1163
    L4_1166 = A2_1164
    return L3_1165, L4_1166
  end
  ComputeUserScore = L21_1152
  function L21_1152(A0_1167, A1_1168, A2_1169)
    local L3_1170, L4_1171, L5_1172
    L3_1170 = isRemoteLogon
    L4_1171 = A0_1167
    L3_1170 = L3_1170(L4_1171)
    if L3_1170 then
      L3_1170 = mp
      L3_1170 = L3_1170.bitor
      L4_1171 = A2_1169
      L5_1172 = _UPVALUE0_
      L3_1170 = L3_1170(L4_1171, L5_1172)
      A2_1169 = L3_1170
      L3_1170 = _UPVALUE1_
      if L3_1170 then
        L3_1170 = mp
        L3_1170 = L3_1170.bitor
        L4_1171 = A2_1169
        L5_1172 = _UPVALUE2_
        L3_1170 = L3_1170(L4_1171, L5_1172)
        A2_1169 = L3_1170
        L3_1170 = isKnownIP
        L4_1171 = A0_1167.Ip
        L3_1170 = L3_1170(L4_1171)
        if L3_1170 then
          L3_1170 = mp
          L3_1170 = L3_1170.bitor
          L4_1171 = A2_1169
          L5_1172 = _UPVALUE3_
          L3_1170 = L3_1170(L4_1171, L5_1172)
          A2_1169 = L3_1170
          A1_1168 = A1_1168 - 20
          L3_1170 = isKnownUserForIP
          L4_1171 = A0_1167.Ip
          L5_1172 = A0_1167.TFUN
          L3_1170 = L3_1170(L4_1171, L5_1172)
          if L3_1170 then
            L3_1170 = mp
            L3_1170 = L3_1170.bitor
            L4_1171 = A2_1169
            L5_1172 = _UPVALUE4_
            L3_1170 = L3_1170(L4_1171, L5_1172)
            A2_1169 = L3_1170
            A1_1168 = A1_1168 - 10
          end
        else
          L3_1170 = pcall
          L4_1171 = minDistanceToKnownIp
          L5_1172 = A0_1167
          L5_1172 = L3_1170(L4_1171, L5_1172)
          if L3_1170 then
            if L4_1171 < 16 then
              A2_1169 = mp.bitor(A2_1169, _UPVALUE5_)
              A1_1168 = A1_1168 + L4_1171 - 8
              if isKnownUserForIP(L5_1172, A0_1167.TFUN) then
                A2_1169 = mp.bitor(A2_1169, _UPVALUE4_)
                A1_1168 = A1_1168 - 10
              end
              if isKnownWorkstationForIP(A0_1167.Wsn, L5_1172) then
                A2_1169 = mp.bitor(A2_1169, _UPVALUE4_)
                A1_1168 = A1_1168 - 10
              end
            else
              A1_1168 = A1_1168 + 10
            end
          end
        end
      else
        A1_1168 = A1_1168 + 10
      end
    end
    L3_1170 = A1_1168
    L4_1171 = A2_1169
    return L3_1170, L4_1171
  end
  ComputeIPScore = L21_1152
  function L21_1152(A0_1173, ...)
    local L2_1175
    L2_1175 = {
      pcall(A0_1173, ...)
    }
    if L2_1175[1] then
      return L2_1175[2], L2_1175[3]
    else
      return 0, 0, L2_1175[2]
    end
  end
  pcallErrorLog = L21_1152
  L21_1152 = 0
  L22_1153, L23_1154, L24_1155 = nil, nil, nil
  L25_1156 = pcallErrorLog
  L26_1157 = ComputeIPScore
  L27_1158 = A0_1131
  L27_1158 = L25_1156(L26_1157, L27_1158, L21_1152, L2_1133)
  L22_1153 = L27_1158
  L2_1133 = L26_1157
  L21_1152 = L25_1156
  L25_1156 = pcallErrorLog
  L26_1157 = ComputeUserScore
  L27_1158 = A0_1131
  L27_1158 = L25_1156(L26_1157, L27_1158, L21_1152, L2_1133)
  L23_1154 = L27_1158
  L2_1133 = L26_1157
  L21_1152 = L25_1156
  if L20_1151 then
    L25_1156 = A0_1131.Wsn
    if L25_1156 ~= "-" then
      L25_1156 = pcallErrorLog
      L26_1157 = ComputeWSNScore
      L27_1158 = A0_1131
      L27_1158 = L25_1156(L26_1157, L27_1158, L21_1152, L2_1133)
      L24_1155 = L27_1158
      L2_1133 = L26_1157
      L21_1152 = L25_1156
    end
  end
  L25_1156 = isValidLocalDomain
  L26_1157 = A0_1131.TDN
  L25_1156 = L25_1156(L26_1157)
  if L25_1156 ~= 0 then
    L25_1156 = getLastSuccessfulLogonTime
    L26_1157 = A0_1131.TFUN
    L25_1156 = L25_1156(L26_1157)
    L26_1157 = nil
    if L25_1156 ~= nil then
      L27_1158 = MpCommon
      L27_1158 = L27_1158.GetCurrentTimeT
      L27_1158 = L27_1158()
      L26_1157 = L27_1158 - L25_1156
    end
    L27_1158 = mp
    L27_1158 = L27_1158.bitand
    L27_1158 = L27_1158(L2_1133, L8_1139)
    if L27_1158 == 0 then
      L27_1158 = versioning
      L27_1158 = L27_1158.IsServer
      L27_1158 = L27_1158()
      if L27_1158 then
        if L25_1156 == nil or L26_1157 > 2592000 then
          L21_1152 = L21_1152 - 5
        end
      elseif L25_1156 == nil or L26_1157 > 604800 then
        L21_1152 = L21_1152 - 5
      end
    end
  end
  if L20_1151 then
    L25_1156 = GetRollingQueueKeyValue
    L26_1157 = "RDP-Ip-Successful-Counter"
    L27_1158 = A0_1131.Ip
    L25_1156 = L25_1156(L26_1157, L27_1158)
    if L25_1156 then
      L21_1152 = 0
    end
  else
    L25_1156 = math_max
    L26_1157 = L21_1152
    L27_1158 = 1
    L25_1156 = L25_1156(L26_1157, L27_1158)
    L21_1152 = L25_1156
  end
  L25_1156 = addRQValue
  L26_1157 = "RDP_Ip"
  L27_1158 = A0_1131.Ip
  L25_1156 = L25_1156(L26_1157, L27_1158, L21_1152, 604800, 1000)
  L26_1157 = 0
  L27_1158 = mp
  L27_1158 = L27_1158.bitand
  L27_1158 = L27_1158(L2_1133, L5_1136)
  if L27_1158 ~= L5_1136 then
    L27_1158 = addRQValue
    L27_1158 = L27_1158("RDP_Usr", A0_1131.TFUN, L21_1152, 604800, 1000)
    L26_1157 = L27_1158
  end
  if L25_1156 >= 100 then
    L1_1132 = 1
  end
  if L26_1157 >= 100 then
    L27_1158 = mp
    L27_1158 = L27_1158.bitor
    L27_1158 = L27_1158(L1_1132, 2)
    L1_1132 = L27_1158
  end
  L27_1158 = {}
  L27_1158.IpScore = L25_1156
  L27_1158.UserScore = L26_1157
  L27_1158.flags = L2_1133
  L27_1158.score = L21_1152
  L27_1158.case = L1_1132
  L27_1158.compute_ip_sore_error = L22_1153
  L27_1158.compute_user_score_error = L23_1154
  L27_1158.compute_wsn_score_error = L24_1155
  return L1_1132, L27_1158
end
function getRDPTelemetryData(A0_1176, A1_1177, A2_1178)
  local L3_1179, L4_1180, L5_1181, L6_1182, L7_1183, L8_1184
  A0_1176.current_event = A1_1177
  L3_1179 = getAllIPFailures
  L3_1179 = L3_1179(L4_1180)
  A0_1176.IPF = L3_1179
  if A2_1178 then
    L3_1179 = A1_1177.SubStatus
    if L3_1179 ~= 3221225572 then
      L3_1179 = A0_1176.current_event
      L3_1179 = L3_1179.TN
      if L3_1179 then
        L3_1179 = A0_1176.current_event
        L3_1179.TN = L4_1180
      end
    end
  end
  L3_1179 = safeJsonSerialize
  L3_1179 = L3_1179(L4_1180)
  A0_1176.current_event = L3_1179
  L3_1179 = versioning
  L3_1179 = L3_1179.IsServer
  L3_1179 = L3_1179()
  A0_1176.IsServer = L3_1179
  L3_1179 = {}
  for L7_1183, L8_1184 in L4_1180(L5_1181) do
    L3_1179[L7_1183] = type(L8_1184) == "table" and safeJsonSerialize(L8_1184) or type(L8_1184) ~= "string" and tostring(L8_1184) or L8_1184
  end
  L7_1183 = "counter"
  L4_1180["RDP-Successful-Counter"] = L5_1181
  L7_1183 = A1_1177.Ip
  L4_1180["RDP-Ip-Successful-Counter"] = L5_1181
  L7_1183 = A1_1177.Wsn
  L4_1180["RDP-WSN-Successful-Counter"] = L5_1181
  L7_1183 = A1_1177.Ip
  L4_1180["RDP-Ip-Failed-Counter"] = L5_1181
  L7_1183 = A1_1177.Ip
  L4_1180["RDP-blocked-IP-Counter"] = L5_1181
  L4_1180.NumberOfBlockedIPs = L5_1181
  L4_1180["Unique-Ip-Success-Count"] = L5_1181
  L4_1180.localProfilesCount = L5_1181
  L7_1183 = A1_1177.Ip
  L4_1180["BF-HighVolumeRequest-IP"] = L5_1181
  L7_1183 = "Counter"
  L4_1180["BF-FailedCloudCalls-Counter"] = L5_1181
  L7_1183 = "LastError"
  L4_1180["BF-FailedCloudCalls-LastError"] = L5_1181
  if L4_1180 then
    L3_1179.detection_info = L4_1180
  end
  L7_1183 = A1_1177.Ip
  L3_1179.network_data = L5_1181
  if L5_1181 then
    L7_1183 = A1_1177.Ip
    L8_1184 = ""
    L5_1181(L6_1182, L7_1183, L8_1184, 1, 100)
  end
  L7_1183 = "Version"
  L3_1179.defender_for_identity_version = L5_1181
  L7_1183 = "SupportedUsers"
  L3_1179.defender_for_identity_supported_users = L5_1181
  return L3_1179
end
function taint(A0_1185, A1_1186, A2_1187, A3_1188, A4_1189)
  local L5_1190, L6_1191, L7_1192
  A4_1189 = A4_1189 or 500
  L5_1190 = A3_1188 or ""
  L6_1191 = pcall
  L7_1192 = MpCommon
  L7_1192 = L7_1192.RollingQueueCreate
  L7_1192 = L6_1191(L7_1192, A1_1186, A4_1189, A2_1187, 1)
  if not L6_1191 then
    return false
  end
  L6_1191, L7_1192 = pcall(MpCommon.RollingQueueAppend, A1_1186, A0_1185, L5_1190, A2_1187)
  return L6_1191
end
function isTainted(A0_1193, A1_1194)
  local L2_1195
  if pcall(MpCommon.RollingQueueQueryKey, A1_1194, A0_1193) and pcall(MpCommon.RollingQueueQueryKey, A1_1194, A0_1193) then
    L2_1195 = pcall(MpCommon.RollingQueueQueryKey, A1_1194, A0_1193).value
  end
  return pcall(MpCommon.RollingQueueQueryKey, A1_1194, A0_1193) and pcall(MpCommon.RollingQueueQueryKey, A1_1194, A0_1193) ~= nil, L2_1195
end
function taintedCount(A0_1196)
  if pcall(MpCommon.RollingQueueCount, A0_1196) then
    return pcall(MpCommon.RollingQueueCount, A0_1196)
  else
    return 0
  end
end
function persistentTaint(A0_1197, A1_1198, A2_1199)
  local L3_1200
  L3_1200 = {A0_1197}
  MpCommon.SetPersistContextNoPath(A1_1198, L3_1200, A2_1199)
  return true
end
function isPersistentTainted(A0_1201, A1_1202)
  local L2_1203
  L2_1203 = MpCommon
  L2_1203 = L2_1203.GetPersistContextNoPath
  L2_1203 = L2_1203(A1_1202)
  if L2_1203 ~= nil then
    for _FORV_6_, _FORV_7_ in ipairs(L2_1203) do
      if _FORV_7_ == A0_1201 then
        return true
      end
    end
  end
  return false
end
function persistentTaintedCount(A0_1204)
  return MpCommon.GetPersistContextCount(A0_1204)
end
function checkFilePathInProcessCommandline(A0_1205, A1_1206, A2_1207, A3_1208)
  local L4_1209, L5_1210
  if A0_1205 == nil or A1_1206 == nil then
    L4_1209 = false
    return L4_1209
  end
  L4_1209 = A3_1208
  if A3_1208 == 0 or A3_1208 == nil then
    L4_1209 = 3
  end
  L5_1210 = mp
  L5_1210 = L5_1210.GetProcessCommandLine
  L5_1210 = L5_1210(A0_1205)
  if L5_1210 ~= nil and string.find(L5_1210, A1_1206, 1, true) then
    return true
  end
  if A2_1207 == true then
    return checkParentCmdline(A0_1205, {
      {"", A1_1206}
    }, L4_1209)
  end
  return false
end
function parseNetworkVolumeEvent(A0_1211)
  local L1_1212, L2_1213, L3_1214, L4_1215, L5_1216, L6_1217, L7_1218, L8_1219, L9_1220, L10_1221
  L1_1212 = A0_1211.matched
  if not L1_1212 then
    return
  end
  L1_1212 = {}
  L2_1213 = {}
  L3_1214 = {}
  L4_1215, L5_1216 = nil, nil
  L9_1220 = L2_1213
  L2_1213 = L6_1217
  L9_1220 = L3_1214
  L3_1214 = L6_1217
  for L9_1220, L10_1221 in L6_1217(L7_1218) do
    table.insert(L2_1213, L10_1221)
  end
  for L9_1220, L10_1221 in L6_1217(L7_1218) do
    if L10_1221 ~= nil then
      L9_1220, L9_1220, L4_1215, L5_1216 = string.find(L10_1221, "(%w+)%s*=%s*(.+)", 0)
      if L4_1215 ~= nil and L5_1216 ~= nil then
        L1_1212[L4_1215] = L5_1216
      end
    end
  end
  return L1_1212
end
function addOverallNetworkVolume()
  local L0_1222, L1_1223
  L0_1222 = bm
  L0_1222 = L0_1222.GetOverallTrafficVolumes
  L0_1222 = L0_1222()
  L1_1223 = {}
  if L0_1222 and #L0_1222 > 0 then
    L1_1223 = safeJsonSerialize(L0_1222)
    bm.add_related_string("BmNetOverallvolumeLen", "" .. #L1_1223, bm.RelatedStringBMReport)
    bm.add_related_string("BmNetOverallvolume", L1_1223, bm.RelatedStringBMReport)
  end
  return L1_1223
end
function reportPcallEx()
  local L0_1224, L1_1225, L2_1226, L3_1227, L4_1228, L5_1229, L6_1230
  L0_1224 = "LuaError"
  L1_1225 = GetRollingQueueKeys
  L1_1225 = L1_1225(L2_1226)
  if L1_1225 ~= nil then
    if L2_1226 == "table" then
      for L5_1229, L6_1230 in L2_1226(L3_1227) do
        bm.add_related_string(L0_1224, L6_1230, bm.RelatedStringBMReport)
      end
    end
  end
end
function reportLuaErrors(A0_1231)
  if GetRollingQueueKeys("LuaError") then
    bm.trigger_sig("BMSigLuaErrors", A0_1231)
  end
end
function reportRdTrace()
  local L0_1232, L1_1233, L2_1234, L3_1235, L4_1236, L5_1237, L6_1238
  L0_1232 = "RdTrace"
  L1_1233 = GetRollingQueueKeys
  L1_1233 = L1_1233(L2_1234)
  if L1_1233 ~= nil then
    if L2_1234 == "table" then
      for L5_1237, L6_1238 in L2_1234(L3_1235) do
        bm.add_related_string(L0_1232, L6_1238, bm.RelatedStringBMReport)
      end
    end
  end
end
function isSensitiveFileForLinux(A0_1239)
  local L1_1240, L2_1241, L3_1242, L4_1243, L5_1244, L6_1245
  L1_1240 = {}
  L5_1244 = "/etc/sudoers"
  L6_1245 = "/etc/system.d/"
  L1_1240.prefix = L2_1241
  L5_1244 = "/.docker/config.json"
  L6_1245 = "private-keys-v1.d"
  L1_1240.substr = L2_1241
  L5_1244 = "^/home/(%w+)/%.bash_login$"
  L6_1245 = "^/home/(%w+)/%.bash_history$"
  L1_1240.regex = L2_1241
  if A0_1239 == nil or A0_1239 == "" then
    return L2_1241
  end
  for L5_1244, L6_1245 in L2_1241(L3_1242) do
    if string.find(A0_1239, L6_1245, 1, true) == 1 then
      return true
    end
  end
  for L5_1244, L6_1245 in L2_1241(L3_1242) do
    if string.find(A0_1239, L6_1245, 1, true) then
      return true
    end
  end
  for L5_1244, L6_1245 in L2_1241(L3_1242) do
    if string.find(A0_1239, L6_1245) then
      return true
    end
  end
  return L2_1241
end
function extractDllForRegproc(A0_1246)
  local L1_1247
  if A0_1246 == nil then
    return
  end
  if not A0_1246 then
    return
  end
  A0_1246 = string.lower(A0_1246)
  if string.find(A0_1246, "^%s*\"") then
    A0_1246 = string.gsub(A0_1246, "^%s*\"[^\"]*regsvr32[%.ex]*\"%s", "")
    A0_1246 = string.gsub(A0_1246, "^%s*\"[^\"]*rundll32[%.ex]*\"%s", "")
  else
    A0_1246 = string.gsub(A0_1246, "^%s*[%S]*regsvr32[%.ex]*%s", "")
    A0_1246 = string.gsub(A0_1246, "^%s*[%S]*rundll32[%.ex]*%s", "")
  end
  A0_1246 = string.gsub(A0_1246, "[/-]%l+%s", "")
  A0_1246 = string.gsub(A0_1246, "[/-]i:[%S]+", "")
  if string.find(A0_1246, "^%s*\"") then
    _, _, L1_1247 = string.find(A0_1246, "^%s*\"([^\",]+)\"")
  else
    _, _, L1_1247 = string.find(A0_1246, "^%s*([^%s,]+)")
  end
  if L1_1247 and string.find(L1_1247, "%.+$") then
    L1_1247 = string.gsub(L1_1247, "%.+$", "")
  end
  if L1_1247 then
    L1_1247 = string.gsub(L1_1247, "/", "\\")
    if StringStartsWith(L1_1247, "\\\\") then
    end
    L1_1247 = string.gsub(L1_1247, "\\+", "\\")
    if true then
      L1_1247 = "\\" .. L1_1247
    end
    L1_1247 = string.gsub(L1_1247, "^\\\\%.\\", "")
    L1_1247 = string.gsub(L1_1247, "\\%.\\", "\\")
    L1_1247 = string.gsub(L1_1247, "^\\\\%?\\", "")
    L1_1247 = string.gsub(L1_1247, "^\\\\localhost\\c%$\\", "c:\\")
    L1_1247 = string.gsub(L1_1247, "^\\\\127%.0%.0%.1\\c%$\\", "c:\\")
  end
  return L1_1247
end
function reportGenericRansomwareRQ(A0_1248)
  local L1_1249, L2_1250, L3_1251, L4_1252, L5_1253
  if A0_1248 == nil or A0_1248 == "" then
    L1_1249 = mp
    L1_1249 = L1_1249.CLEAN
    return L1_1249
  end
  L1_1249 = "dummy_image_path"
  L2_1250 = "dummy_proc_info"
  L3_1251 = ""
  L4_1252 = GetRollingQueueAsHashTable
  L5_1253 = A0_1248
  L4_1252 = L4_1252(L5_1253)
  if L4_1252 == nil then
    L5_1253 = mp
    L5_1253 = L5_1253.CLEAN
    return L5_1253
  end
  L5_1253 = L4_1252.cur_image_path
  if L5_1253 ~= nil then
    L1_1249 = L4_1252.cur_image_path
  end
  L5_1253 = L4_1252.proc_info
  if L5_1253 ~= nil then
    L2_1250 = L4_1252.proc_info
  end
  L5_1253 = L4_1252.appended_ext
  if L5_1253 ~= nil then
    L3_1251 = L4_1252.appended_ext
  end
  if L1_1249 == "" or L2_1250 == "" then
    L5_1253 = mp
    L5_1253 = L5_1253.CLEAN
    return L5_1253
  end
  L5_1253 = bm
  L5_1253 = L5_1253.get_current_process_startup_info
  L5_1253 = L5_1253()
  if L5_1253 ~= nil then
    L5_1253 = L5_1253.ppid
  else
    L5_1253 = "-2"
  end
  bm.add_related_file(L1_1249)
  bm.add_related_string("debug_proc_info", "old <" .. L2_1250 .. "> new <" .. L5_1253 .. ">", bm.RelatedStringBMReport)
  bm.add_related_string("ransom_extension", L3_1251, bm.RelatedStringBMReport)
  if StringSplit(L4_1252.renamed_file_path, ",") ~= nil or #StringSplit(L4_1252.renamed_file_path, ",") ~= 0 then
    for _FORV_10_ = 1, #StringSplit(L4_1252.renamed_file_path, ",") do
      bm.add_related_file(StringSplit(L4_1252.renamed_file_path, ",")[_FORV_10_])
    end
  end
  return _FOR_.INFECTED
end
function isCurrentProcessFriendly()
  return MpCommon.IsFriendlyProcess(bm.get_current_process_startup_info().ppid)
end
function getCurProcTaintReason()
  local L0_1254, L2_1255, L3_1256, L5_1257
  L0_1254 = mp
  L0_1254 = L0_1254.SIGATTR_LOG_SZ
  if L0_1254 == 0 then
    L0_1254 = nil
    return L0_1254
  end
  L0_1254 = ""
  for _FORV_4_ = L2_1255.SIGATTR_LOG_SZ, 1, -1 do
    if sigattr_tail[_FORV_4_].attribute == 16470 and sigattr_tail[_FORV_4_].utf8p1 then
      L0_1254 = L0_1254 .. sigattr_tail[_FORV_4_].utf8p1 .. ","
    end
  end
  return L0_1254
end
function CheckIfProcessTreePartOfTaintExecution(A0_1258, A1_1259, A2_1260)
  local L3_1261, L4_1262, L5_1263
  if A1_1259 == 0 then
    L3_1261 = false
    return L3_1261
  end
  L3_1261 = A1_1259
  if A1_1259 == nil or A1_1259 < 0 or A1_1259 > 5 then
    L3_1261 = 5
  end
  L4_1262 = A0_1258
  if A0_1258 == nil or A0_1258 == "" then
    L5_1263 = bm
    L5_1263 = L5_1263.get_current_process_startup_info
    L5_1263 = L5_1263()
    if L5_1263 == nil or L5_1263.ppid == nil or L5_1263.ppid == "" then
      return false
    end
    L4_1262 = L5_1263.ppid
  end
  L5_1263 = "queue_pid_taintfactory_a"
  if A2_1260 and IsKeyInRollingQueue(L5_1263, L4_1262, true) then
    return true
  end
  if mp.GetParentProcInfo(L4_1262) ~= nil and mp.GetParentProcInfo(L4_1262).ppid ~= nil and mp.GetParentProcInfo(L4_1262).image_path ~= nil then
    if IsKeyInRollingQueue(L5_1263, L4_1262, true) then
      return true
    end
    return CheckIfProcessTreePartOfTaintExecution(mp.GetParentProcInfo(L4_1262).ppid, L3_1261 - 1)
  end
end
function IsAncestorTaintedScriptOrBin(A0_1264, A1_1265, A2_1266, A3_1267, A4_1268)
-- fail 171
null
22
  local L5_1269, L6_1270, L7_1271, L8_1272, L9_1273, L10_1274, L11_1275, L12_1276, L13_1277, L14_1278, L15_1279, L16_1280, L17_1281, L18_1282, L19_1283, L20_1284
  if A1_1265 == 0 then
    L17_1281 = false
    L18_1282 = {}
    L19_1283 = nil
    return L17_1281, L18_1282, L19_1283
  end
  L17_1281 = A1_1265
  if A1_1265 == nil or A1_1265 < 0 or A1_1265 > 5 then
    L17_1281 = 3
  end
  L18_1282 = A4_1268 or false
  L19_1283 = A2_1266
  if not A2_1266 or A2_1266 == "" then
    L20_1284 = pcall
    L16_1280, L20_1284 = bm.get_current_process_startup_info, L20_1284(bm.get_current_process_startup_info)
    L14_1278 = L20_1284
    L20_1284 = pcall
    L7_1271, L20_1284 = bm.get_imagepath, L20_1284(bm.get_imagepath)
    _ = L20_1284
    if L14_1278 and L16_1280 then
      L20_1284 = L16_1280.ppid
      L20_1284 = L20_1284 and L16_1280.ppid
    elseif L20_1284 == "" or not L7_1271 then
      L20_1284 = false
      return L20_1284, {}, nil
    end
    L19_1283 = L16_1280.ppid
  end
  L20_1284 = pcall
  L15_1279, L20_1284 = mp.GetParentProcInfo, L20_1284(mp.GetParentProcInfo, L19_1283)
  L14_1278 = L20_1284
  L20_1284 = "queue_pid_tainted_scripts"
  if not A0_1264 then
    if not L14_1278 or not L15_1279 or not L15_1279.ppid or L15_1279.ppid == "" or not L15_1279.image_path or L15_1279.image_path == "" then
      return false, {}, nil
    end
    L7_1271 = L15_1279.image_path
    L19_1283 = L15_1279.ppid
    L15_1279 = nil
    L14_1278, L15_1279 = pcall(mp.GetParentProcInfo, L19_1283)
  end
  pcall(bm.add_related_process, L19_1283)
  L5_1269, L6_1270 = IsKeyInRollingQueue(L20_1284, L19_1283, true)
  if L5_1269 then
    pcall(bm.add_related_file, L6_1270)
    L13_1277 = L6_1270
  end
  if L7_1271 and L7_1271 ~= "" then
    L8_1272 = isTainted(L7_1271, "remote_file_created_taint")
    if L8_1272 then
      pcall(bm.add_related_file, L7_1271)
      L13_1277 = L7_1271
    end
  end
  L9_1273 = L8_1272 or L5_1269
  if (L18_1282 or not L9_1273) and L15_1279 and L15_1279.ppid and L15_1279.ppid ~= "" and L15_1279.image_path then
    L10_1274, L11_1275, L12_1276 = IsAncestorTaintedScriptOrBin(true, L17_1281 - 1, L15_1279.ppid, L15_1279.image_path, L18_1282)
    if L9_1273 then
      table.insert(L11_1275, L13_1277)
    end
  end
  return L10_1274 or L9_1273, {L13_1277}, L12_1276 or L19_1283
end
function TerminateParentProcessForLinux(A0_1285, A1_1286)
  local L2_1287, L3_1288, L4_1289
  if A1_1286 == 0 then
    return
  end
  L2_1287 = A1_1286
  if A1_1286 == nil or A1_1286 < 0 or A1_1286 > 5 then
    L2_1287 = 5
  end
  L3_1288 = A0_1285
  if A0_1285 == nil or A0_1285 == "" then
    L4_1289 = bm
    L4_1289 = L4_1289.get_current_process_startup_info
    L4_1289 = L4_1289()
    if L4_1289 == nil or L4_1289.ppid == nil or L4_1289.ppid == "" then
      return
    end
    L3_1288 = L4_1289.ppid
  end
  L4_1289 = {}
  L4_1289.prefix = {
    "/var/tmp/",
    "/var/mail/",
    "/var/spool/mail/",
    "/var/lock/",
    "/dev/shm",
    "/home/",
    "/usr/bin/find",
    "/usr/bin/xargs"
  }
  L4_1289.substr = {
    "/python",
    "/perl",
    "/ruby",
    "/bash",
    "/dash",
    "/zsh",
    "/sh",
    "/ksh",
    "/ksh93",
    "/tcsh"
  }
  function shouldKillParent(A0_1290, A1_1291, A2_1292)
    local L3_1293, L4_1294, L5_1295, L6_1296, L7_1297
    for L6_1296, L7_1297 in L3_1293(L4_1294) do
      if string.find(A1_1291, L7_1297, 1, true) == 1 then
        return true
      end
    end
    for L6_1296, L7_1297 in L3_1293(L4_1294) do
      if string.find(A1_1291, L7_1297, 1, true) then
        return true
      end
    end
    if L3_1293 then
      return L3_1293
    end
    if L3_1293 >= 4 then
      if L3_1293 ~= nil then
        L6_1296 = L3_1293
        if L5_1295 > 6 then
          L6_1296 = A1_1291
          L7_1297 = "/usr/lib/systemd/systemd"
          if L5_1295 ~= 1 then
            return L5_1295
          end
        end
      end
    end
    return L3_1293
  end
  if mp.GetParentProcInfo(L3_1288) ~= nil and mp.GetParentProcInfo(L3_1288).ppid ~= nil and mp.GetParentProcInfo(L3_1288).image_path ~= nil then
    if shouldKillParent(mp.GetParentProcInfo(L3_1288).ppid, mp.GetParentProcInfo(L3_1288).image_path, L4_1289) then
      bm.add_threat_process(mp.GetParentProcInfo(L3_1288).ppid)
    end
    TerminateParentProcessForLinux(mp.GetParentProcInfo(L3_1288).ppid, L2_1287 - 1)
  end
end
function RemediateProcessTreeForLinux(A0_1298, A1_1299)
  local L2_1300, L3_1301, L4_1302, L5_1303
  L2_1300 = A1_1299
  if A1_1299 == 0 or A1_1299 == nil or A1_1299 < 0 or A1_1299 > 5 then
    L2_1300 = 5
  end
  L3_1301 = A0_1298
  if A0_1298 == nil or A0_1298 == "" then
    L4_1302 = bm
    L4_1302 = L4_1302.get_current_process_startup_info
    L4_1302 = L4_1302()
    if L4_1302 ~= nil then
      L5_1303 = L4_1302.ppid
      if L5_1303 ~= nil then
        L5_1303 = L4_1302.ppid
      end
    elseif L5_1303 == "" then
      return
    end
    L3_1301 = L4_1302.ppid
  end
  L4_1302 = TerminateParentProcessForLinux
  L5_1303 = L3_1301
  L4_1302(L5_1303, L2_1300)
  L4_1302 = bm
  L4_1302 = L4_1302.get_process_relationships
  L5_1303 = L3_1301
  L5_1303 = L4_1302(L5_1303)
  for _FORV_9_, _FORV_10_ in ipairs(L5_1303) do
    if _FORV_10_ ~= nil and _FORV_10_.ppid ~= nil then
      bm.add_threat_process(_FORV_10_.ppid)
    end
  end
end
function ValidateDate(A0_1304, A1_1305, A2_1306)
  A0_1304 = tonumber(A0_1304)
  A1_1305 = tonumber(A1_1305)
  A2_1306 = tonumber(A2_1306)
  if A0_1304 and A1_1305 and A2_1306 and A0_1304 > 1900 and A0_1304 < 2040 and A1_1305 > 0 and A1_1305 <= 12 and A2_1306 > 0 and A2_1306 <= 31 then
    return true
  end
  return false
end
function IsExtensionDatePattern(A0_1307)
  local L1_1308, L2_1309, L3_1310, L4_1311, L5_1312, L6_1313, L7_1314, L8_1315, L9_1316, L10_1317
  L1_1308 = {
    L2_1309,
    L3_1310,
    L4_1311,
    L5_1312,
    L6_1313
  }
  L5_1312 = "^(%.)(%d%d%d%d)(%d%d)(%d%d)$"
  L6_1313 = "^(%-)(%d%d%d%d)(%d%d)(%d%d)$"
  for L5_1312, L6_1313 in L2_1309(L3_1310) do
    L7_1314 = string
    L7_1314 = L7_1314.match
    L8_1315 = A0_1307
    L9_1316 = L6_1313
    L10_1317 = L7_1314(L8_1315, L9_1316)
    if L7_1314 and L8_1315 and L9_1316 and L10_1317 and ValidateDate(L8_1315, L9_1316, L10_1317) then
      return true
    end
  end
  return L2_1309
end
function ValidateUniqueRQThreshold(A0_1318, A1_1319, A2_1320, A3_1321, A4_1322, A5_1323)
  local L6_1324, L7_1325
  L6_1324, L7_1325 = pcall(MpCommon.RollingQueueCreate, A0_1318, A1_1319, A2_1320, 1)
  if not L6_1324 then
    return false
  end
  L6_1324, L7_1325 = pcall(MpCommon.RollingQueueAppend, A0_1318, A3_1321, A4_1322, A2_1320)
  if not L6_1324 then
    return false
  end
  L6_1324, L7_1325 = pcall(MpCommon.RollingQueueCount, A0_1318)
  if not L6_1324 then
    return false
  end
  if A5_1323 <= L7_1325 then
    return true
  end
  return false
end
function getGpoDataStorePath(A0_1326, A1_1327, A2_1328)
  local L3_1329, L4_1330, L5_1331, L6_1332, L7_1333, L8_1334, L9_1335, L10_1336, L11_1337, L12_1338, L13_1339
  if A0_1326 == nil or A1_1327 == nil then
    L3_1329 = nil
    return L3_1329
  end
  L3_1329 = nil
  if A2_1328 == nil then
    L3_1329 = "HKLM\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Group Policy\\DataStore\\Machine"
  else
    L4_1330 = "HKLM\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Group Policy\\DataStore\\"
    L5_1331 = A2_1328
    L3_1329 = L4_1330 .. L5_1331
  end
  L4_1330 = sysio
  L4_1330 = L4_1330.RegOpenKey
  L5_1331 = L3_1329
  L4_1330 = L4_1330(L5_1331)
  if L4_1330 == nil then
    L5_1331 = nil
    return L5_1331
  end
  L5_1331, L6_1332 = nil, nil
  L13_1339 = L8_1334(L9_1335)
  for L10_1336, L11_1337 in L7_1333(L8_1334, L9_1335, L10_1336, L11_1337, L12_1338, L13_1339, L8_1334(L9_1335)) do
    L12_1338 = L3_1329
    L13_1339 = "\\"
    L5_1331 = L12_1338 .. L13_1339 .. L11_1337
    L12_1338 = sysio
    L12_1338 = L12_1338.RegOpenKey
    L13_1339 = L5_1331
    L12_1338 = L12_1338(L13_1339)
    L6_1332 = L12_1338
    if L6_1332 then
      L12_1338 = sysio
      L12_1338 = L12_1338.GetRegValueAsString
      L13_1339 = L6_1332
      L12_1338 = L12_1338(L13_1339, "DomainName")
      if A0_1326 == L12_1338 then
        break
      end
    end
    L6_1332 = nil
  end
  if L6_1332 == nil then
    return L7_1333
  end
  L13_1339 = L10_1336(L11_1337)
  for L12_1338, L13_1339 in L9_1335(L10_1336, L11_1337, L12_1338, L13_1339, L10_1336(L11_1337)) do
    if A1_1327 == sysio.GetRegValueAsString(L8_1334, "GPOName"):lower() then
      break
    end
  end
  return L7_1333
end
function parseGpoSysvolPath(A0_1340)
  local L1_1341, L2_1342, L3_1343
  if A0_1340 == nil then
    L1_1341 = nil
    return L1_1341
  end
  L2_1342 = A0_1340
  L1_1341 = A0_1340.lower
  L1_1341 = L1_1341(L2_1342)
  L2_1342 = L1_1341
  L1_1341 = L1_1341.match
  L3_1343 = "\\\\(.+)\\sysvol\\(.+)\\policies\\({[0-9a-f\\-]+})\\.+"
  L3_1343 = L1_1341(L2_1342, L3_1343)
  if L1_1341 ~= L2_1342 then
    return nil
  end
  return L1_1341, L3_1343
end
function parseGpoDatastorePath(A0_1344)
  local L1_1345, L2_1346, L3_1347, L4_1348, L5_1349
  if A0_1344 == nil then
    L1_1345 = nil
    return L1_1345
  end
  L2_1346 = A0_1344
  L1_1345 = A0_1344.lower
  L1_1345 = L1_1345(L2_1346)
  L2_1346 = L1_1345
  L1_1345 = L1_1345.match
  L3_1347 = ".:\\.+\\system32\\grouppolicy\\datastore\\(%x+)\\sysvol\\(.+)\\Policies\\({[0-9a-f\\-]+})\\.+"
  L3_1347 = L1_1345(L2_1346, L3_1347)
  L4_1348 = L1_1345
  L5_1349 = L2_1346
  return L4_1348, L5_1349, L3_1347
end
function addressToIpString(A0_1350, A1_1351)
  local L2_1352, L3_1353, L4_1354, L5_1355, L6_1356, L7_1357, L8_1358, L9_1359, L10_1360, L11_1361, L12_1362, L13_1363, L14_1364, L15_1365, L16_1366, L17_1367, L18_1368
  if A0_1350 == nil then
    L2_1352 = nil
    return L2_1352
  end
  if A1_1351 == nil then
    L2_1352 = nil
    return L2_1352
  end
  L2_1352 = mp
  L2_1352 = L2_1352.bsplit
  L3_1353 = mp
  L3_1353 = L3_1353.bitand
  L4_1354 = A1_1351
  L5_1355 = 4294967295
  L3_1353 = L3_1353(L4_1354, L5_1355)
  L4_1354 = 8
  L5_1355 = L2_1352(L3_1353, L4_1354)
  L6_1356 = mp
  L6_1356 = L6_1356.bsplit
  L7_1357 = mp
  L7_1357 = L7_1357.bitand
  L8_1358 = mp
  L8_1358 = L8_1358.shr64
  L9_1359 = A1_1351
  L10_1360 = 32
  L8_1358 = L8_1358(L9_1359, L10_1360)
  L9_1359 = 4294967295
  L7_1357 = L7_1357(L8_1358, L9_1359)
  L8_1358 = 8
  L9_1359 = L6_1356(L7_1357, L8_1358)
  L10_1360 = mp
  L10_1360 = L10_1360.bsplit
  L11_1361 = mp
  L11_1361 = L11_1361.bitand
  L12_1362 = A0_1350
  L13_1363 = 4294967295
  L11_1361 = L11_1361(L12_1362, L13_1363)
  L12_1362 = 8
  L13_1363 = L10_1360(L11_1361, L12_1362)
  L14_1364 = mp
  L14_1364 = L14_1364.bsplit
  L15_1365 = mp
  L15_1365 = L15_1365.bitand
  L16_1366 = mp
  L16_1366 = L16_1366.shr64
  L17_1367 = A0_1350
  L18_1368 = 32
  L16_1366 = L16_1366(L17_1367, L18_1368)
  L17_1367 = 4294967295
  L15_1365 = L15_1365(L16_1366, L17_1367)
  L16_1366 = 8
  L17_1367 = L14_1364(L15_1365, L16_1366)
  if A0_1350 == 0 then
    L18_1368 = string
    L18_1368 = L18_1368.format
    return L18_1368("%d.%d.%d.%d", L6_1356, L7_1357, L8_1358, L9_1359)
  else
    L18_1368 = ""
    L18_1368 = L18_1368 .. string.format("%02x%02x:", L10_1360, L11_1361)
    L18_1368 = L18_1368 .. string.format("%02x%02x:", L12_1362, L13_1363)
    L18_1368 = L18_1368 .. string.format("%02x%02x:", L14_1364, L15_1365)
    L18_1368 = L18_1368 .. string.format("%02x%02x:", L16_1366, L17_1367)
    L18_1368 = L18_1368 .. string.format("%02x%02x:", L2_1352, L3_1353)
    L18_1368 = L18_1368 .. string.format("%02x%02x:", L4_1354, L5_1355)
    L18_1368 = L18_1368 .. string.format("%02x%02x:", L6_1356, L7_1357)
    L18_1368 = L18_1368 .. string.format("%02x%02x", L8_1358, L9_1359)
    return L18_1368
  end
end
function isAddressInternal(A0_1369, A1_1370)
  if A0_1369 == nil then
    return nil
  end
  if A1_1370 == nil then
    return nil
  end
  if A0_1369 == 0 then
    return mp.bsplit(mp.bitand(mp.shr64(A1_1370, 32), 4294967295), 8) == 10 or mp.bsplit(mp.bitand(mp.shr64(A1_1370, 32), 4294967295), 8) == 127 or mp.bsplit(mp.bitand(mp.shr64(A1_1370, 32), 4294967295), 8) == 172 and (mp.bsplit(mp.bitand(mp.shr64(A1_1370, 32), 4294967295), 8) > 15 or mp.bsplit(mp.bitand(mp.shr64(A1_1370, 32), 4294967295), 8) < 32) or mp.bsplit(mp.bitand(mp.shr64(A1_1370, 32), 4294967295), 8) == 169 and mp.bsplit(mp.bitand(mp.shr64(A1_1370, 32), 4294967295), 8) == 254 or mp.bsplit(mp.bitand(mp.shr64(A1_1370, 32), 4294967295), 8) == 192 and mp.bsplit(mp.bitand(mp.shr64(A1_1370, 32), 4294967295), 8) == 168
  else
    return mp.bsplit(mp.bitand(A0_1369, 4294967295), 8) == 254 and mp.bsplit(mp.bitand(A0_1369, 4294967295), 8) == 128 or mp.bsplit(mp.bitand(A0_1369, 4294967295), 8) == 252 and mp.bsplit(mp.bitand(A0_1369, 4294967295), 8) == 0 or mp.bsplit(mp.bitand(A0_1369, 4294967295), 8) == 255 or mp.bsplit(mp.bitand(A0_1369, 4294967295), 8) + mp.bsplit(mp.bitand(A0_1369, 4294967295), 8) + mp.bsplit(mp.bitand(A0_1369, 4294967295), 8) + mp.bsplit(mp.bitand(A0_1369, 4294967295), 8) + mp.bsplit(mp.bitand(mp.shr64(A0_1369, 32), 4294967295), 8) + mp.bsplit(mp.bitand(mp.shr64(A0_1369, 32), 4294967295), 8) + mp.bsplit(mp.bitand(mp.shr64(A0_1369, 32), 4294967295), 8) + mp.bsplit(mp.bitand(mp.shr64(A0_1369, 32), 4294967295), 8) + mp.bsplit(mp.bitand(A1_1370, 4294967295), 8) + mp.bsplit(mp.bitand(A1_1370, 4294967295), 8) + mp.bsplit(mp.bitand(A1_1370, 4294967295), 8) + mp.bsplit(mp.bitand(A1_1370, 4294967295), 8) + mp.bsplit(mp.bitand(mp.shr64(A1_1370, 32), 4294967295), 8) + mp.bsplit(mp.bitand(mp.shr64(A1_1370, 32), 4294967295), 8) + mp.bsplit(mp.bitand(mp.shr64(A1_1370, 32), 4294967295), 8) == 0 and mp.bsplit(mp.bitand(mp.shr64(A1_1370, 32), 4294967295), 8) == 1
  end
end
function getHostType(A0_1371)
  if A0_1371 == nil then
    return -1
  end
  if string.match(A0_1371, "^%d+%.%d+%.%d+%.%d+$") then
    return 1
  elseif string.match(A0_1371, "^[:%x]+$") then
    return 2
  elseif string.match(A0_1371, "^[.%d%a]+$") then
    return 3
  else
    return -1
  end
end
function isIEXfound(A0_1372)
  local L1_1373, L2_1374, L3_1375, L4_1376, L5_1377, L6_1378, L7_1379
  L1_1373 = type
  L2_1374 = A0_1372
  L1_1373 = L1_1373(L2_1374)
  if L1_1373 ~= "string" then
    L1_1373 = false
    return L1_1373
  end
  L1_1373 = false
  L2_1374 = A0_1372.lower
  L2_1374 = L2_1374(L3_1375)
  A0_1372 = L2_1374
  L2_1374 = {
    L3_1375,
    L4_1376,
    L5_1377,
    L6_1378,
    L7_1379,
    "^iex\\s+",
    "[char][int][decimal]::round(73.2)+[char][int][decimal]::round(68.9)+[char][int][decimal]::round(88)"
  }
  L6_1378 = "invoke-expression.*"
  L7_1379 = "[.\\x22\\x27>]invoke[\\x22\\x27<(]"
  for L6_1378, L7_1379 in L3_1375(L4_1376) do
    L1_1373, L6_1378 = MpCommon.StringRegExpSearch(L7_1379, A0_1372)
    if L1_1373 then
      return true
    end
  end
  return L3_1375
end
function IsSenseRelatedProc()
  local L0_1380, L1_1381, L2_1382, L3_1383, L4_1384
  L0_1380 = {}
  L0_1380["mssense.exe"] = true
  L0_1380["senseir.exe"] = true
  L0_1380["sensecm.exe"] = true
  L0_1380["sensendr.exe"] = true
  L0_1380["sensece.exe"] = true
  L0_1380["mdecontaintoolv2.exe"] = true
  L0_1380["openhandlecollector.exe"] = true
  L0_1380["sensetvm.exe"] = true
  L0_1380["senseap.exe"] = true
  L1_1381 = string
  L1_1381 = L1_1381.lower
  L2_1382 = bm
  L2_1382 = L2_1382.get_imagepath
  L4_1384 = L2_1382()
  L1_1381 = L1_1381(L2_1382, L3_1383, L4_1384, L2_1382())
  if L1_1381 ~= nil then
    L2_1382 = string
    L2_1382 = L2_1382.find
    L3_1383 = L1_1381
    L4_1384 = "\\program files\\windows defender advanced threat protection\\"
    L2_1382 = L2_1382(L3_1383, L4_1384, 1, true)
    if not L2_1382 then
      L2_1382 = string
      L2_1382 = L2_1382.find
      L3_1383 = L1_1381
      L4_1384 = "\\programdata\\microsoft\\windows defender advanced threat protection\\"
      L2_1382 = L2_1382(L3_1383, L4_1384, 1, true)
    elseif L2_1382 then
      L2_1382 = string
      L2_1382 = L2_1382.match
      L3_1383 = L1_1381
      L4_1384 = "\\([^\\]+)$"
      L2_1382 = L2_1382(L3_1383, L4_1384)
      L3_1383 = L0_1380[L2_1382]
      if L3_1383 then
        L3_1383 = true
        return L3_1383
      end
    end
  end
  L2_1382 = bm
  L2_1382 = L2_1382.get_current_process_startup_info
  L2_1382 = L2_1382()
  L3_1383 = mp
  L3_1383 = L3_1383.GetParentProcInfo
  L4_1384 = L2_1382.ppid
  L3_1383 = L3_1383(L4_1384)
  if L3_1383 ~= nil then
    L4_1384 = string
    L4_1384 = L4_1384.lower
    L4_1384 = L4_1384(L3_1383.image_path)
    if (string.find(L4_1384, "\\program files\\windows defender advanced threat protection\\", 1, true) or string.find(L4_1384, "\\programdata\\microsoft\\windows defender advanced threat protection\\", 1, true)) and L0_1380[string.match(L4_1384, "\\([^\\]+)$")] then
      return true
    end
  end
  L4_1384 = false
  return L4_1384
end
function IsExcludedForXplatHeuristicTrigger(A0_1385, A1_1386)
  local L2_1387, L3_1388, L4_1389
  if A0_1385 ~= nil then
    L2_1387 = #A0_1385
    if not (L2_1387 < 0) and A1_1386 ~= nil then
      L2_1387 = #A1_1386
    end
  elseif L2_1387 < 0 then
    L2_1387 = false
    return L2_1387
  end
  L2_1387 = {
    L3_1388,
    L4_1389,
    {
      ".php",
      "/twig/",
      1,
      0
    },
    {
      ".php",
      "/wp-content/cache.bak/",
      1,
      0
    },
    {
      ".php",
      "/wp-content/cache/",
      1,
      0
    },
    {
      ".php",
      "/smarty/templates_c",
      -1,
      1
    },
    {
      ".php",
      "/tmp/templates_c",
      -1,
      1
    },
    {
      ".php",
      "/core/cache/catalog.config/",
      1,
      0
    },
    {
      ".php",
      "cache/phpstan/",
      -1,
      6
    },
    {
      ".php",
      "/storage/framework/views",
      1,
      0
    },
    {
      ".php",
      "/cache/t_compile",
      1,
      0
    },
    {
      ".php",
      "/aec/app/cache",
      1,
      0
    },
    {
      ".php",
      "/compiled_templates",
      1,
      0
    },
    {
      ".php",
      "/administrator/cache/",
      1,
      0
    },
    {
      ".php",
      "/public_html/templates_c",
      1,
      0
    },
    {
      ".file",
      "/share/flatpak/repo/",
      1,
      0
    },
    {
      ".file",
      "/flatpak/repo/tmp/flatpak-cache-",
      1,
      0
    },
    {
      ".py",
      "/python_stubs/",
      1,
      0
    },
    {
      ".cch",
      "/BlockCache",
      -1,
      2
    },
    {
      ".vehicle",
      "/core/packages/",
      1,
      0
    },
    {
      ".resolver",
      "/core/packages/",
      1,
      0
    },
    {
      "",
      "/diff/usr/lib/.build-id/",
      -1,
      6
    },
    {
      "",
      "/.metadata/.plugins/org.eclipse.core.resources/.history",
      -1,
      6
    },
    {
      "",
      "/library/developer/xcode/deriveddata/",
      1,
      0
    },
    {
      "",
      "node_modules/esbuild/bin/esbuild",
      1,
      0
    },
    {
      "",
      "esbuild/darwin-arm64/bin/esbuild",
      1,
      0
    }
  }
  L3_1388 = {
    L4_1389,
    "/.svn/pristine/",
    1,
    0
  }
  L4_1389 = ".svn-base"
  L4_1389 = {
    ".php",
    "/twig_cache/",
    1,
    0
  }
  L3_1388, L4_1389 = nil, nil
  for _FORV_10_, _FORV_11_ in ipairs(L2_1387) do
    if #_FORV_11_ == 4 then
      L4_1389 = _FORV_11_[1]
      L3_1388 = _FORV_11_[2]
      if L4_1389 ~= nil and L3_1388 ~= nil and _FORV_11_[3] ~= nil and _FORV_11_[4] ~= nil and (L4_1389 == "" or string.find(A1_1386, L4_1389, -1 * #L4_1389, true)) and (_FORV_11_[3] == -1 and string.find(A0_1385, L3_1388, _FORV_11_[3] * (#L3_1388 + _FORV_11_[4]), true) or _FORV_11_[3] == 1 and string.find(A0_1385, L3_1388, _FORV_11_[3] + _FORV_11_[4], true)) then
        return true
      end
    end
  end
  return false
end
function isnull(A0_1390)
  if type(A0_1390) == "string" and A0_1390 == "" then
    return true
  end
  if type(A0_1390) == "table" and not next(A0_1390) then
    return true
  end
  if type(A0_1390) == "nil" then
    return true
  end
  return false
end
function IsSuspPSModule(A0_1391)
  local L1_1392
  if A0_1391 ~= nil then
    L1_1392 = type
    L1_1392 = L1_1392(A0_1391)
  elseif L1_1392 ~= "string" then
    L1_1392 = false
    return L1_1392
  end
  L1_1392 = {
    "powersploit",
    "powertools",
    "powershellempire",
    "empireproject//empire",
    "nishang",
    "offensive-powershell",
    "powercat",
    "psattackbuildtool",
    "exploit-jmxconsole",
    "invoke-psuacme",
    "invoke-reflectivepeinjection",
    "invoke-voicetroll",
    "invoke-paranoia",
    "invoke-processhunterthreaded",
    "invoke-kerberoast",
    "invoke-stealthuserhunter",
    "invoke-postexfil",
    "invoke-poshrathttp",
    "invoke-passwordsprayowa",
    "invoke-massmimikatz",
    "invoke-dllinjection",
    "invoke-shellcodemsil",
    "invoke-processhunter",
    "invoke-whitneykatz",
    "invoke-wmiobfuscatedpscommand",
    "invoke-credentialinjection",
    "invoke-netripper",
    "invoke-lswmimplant",
    "invoke-scomdecrypt",
    "invoke-usernameharvestowa",
    "invoke-backdoorlnk",
    "invoke-bloodhound",
    "invoke-thunderstruck",
    "invoke-poshrathttps",
    "invoke-adsbackdoor",
    "invoke-credentialsphish",
    "invoke-powershelltcp",
    "invoke-sharedfinder",
    "invoke-mimikatz",
    "invoke-callbackiex",
    "invoke-mimikatzwdigestdowngrade",
    "invoke-jsratrundll",
    "invoke-ninjacopy",
    "invoke-smbscanner",
    "invoke-findpathhijack",
    "invoke-dcsync",
    "invoke-networkrelay",
    "invoke-mapdomaintrusts",
    "invoke-mapdomaintrustsldap",
    "invoke-servicedisable",
    "invoke-filefinderthreaded",
    "invoke-userprocesshunter",
    "invoke-serviceenable",
    "invoke-portscan",
    "invoke-powershelltcponeline",
    "invoke-checklocaladminaccess",
    "invoke-callbackloop",
    "invoke-wscripttrigger",
    "invoke-wscriptelevate",
    "invoke-powerdump",
    "invoke-computerfieldsearch",
    "invoke-gofetch",
    "invoke-searchfiles",
    "invoke-filetransferwmimplant",
    "invoke-wcmdump",
    "invoke-enumsecuritytools",
    "invoke-jsratregsvr",
    "invoke-bruteforce",
    "invoke-empire",
    "invoke-processpunisher",
    "invoke-wmimplant",
    "invoke-loadpe",
    "invoke-shellcode",
    "invoke-reversednslookup",
    "invoke-psinject",
    "invoke-finddllhijack",
    "invoke-amsibypass",
    "invoke-arpscan",
    "invoke-domainharvestowa",
    "invoke-userhunter",
    "invoke-passwordsprayews",
    "invoke-wscriptbypassuac",
    "invoke-enumeratelocaladmin",
    "invoke-usereventhunter",
    "invoke-servicestop",
    "invoke-powershelludp",
    "invoke-findlocaladminaccessthreaded",
    "invoke-reverttoself",
    "invoke-powershelludponeline",
    "invoke-memoryloadlibrary",
    "invoke-findlocaladminaccess",
    "invoke-memoryfreelibrary",
    "invoke-servicecmd",
    "invoke-findallusertrustgroups",
    "invoke-enumeratelocaltrustgroups",
    "invoke-serviceuseradd",
    "invoke-inveigh",
    "invoke-sendmail",
    "invoke-powershellicmp",
    "invoke-packetknock",
    "invoke-psgcatagent",
    "invoke-filedownloader",
    "invoke-tokenmanipulation",
    "invoke-userview",
    "invoke-phant0m",
    "invoke-impersonateuser",
    "invoke-createremotethread",
    "invoke-filesearch",
    "invoke-winenum",
    "invoke-dnsloop",
    "invoke-searchgal",
    "invoke-enumeratelocaladmins",
    "invoke-enumeratelocaltrustgroupsthreaded",
    "invoke-netviewthreaded",
    "invoke-inveighrelay",
    "invoke-checkwrite",
    "invoke-threadedfunction",
    "invoke-hostenum",
    "invoke-findallgrouptrustusers",
    "invoke-servicestart",
    "invoke-bypassuac",
    "invoke-aclscanner",
    "invoke-patchdll",
    "invoke-mailsearch",
    "invoke-userhunterthreaded",
    "invoke-sharefinderthreaded",
    "invoke-userfieldsearch",
    "invoke-mapdomaintrust",
    "invoke-enumeratelocaladminsthreaded",
    "invoke-findusertrustgroups",
    "invoke-sharefinder",
    "invoke-portbind",
    "invoke-psexeccmd",
    "invoke-allchecks",
    "invoke-powershellwmi",
    "invoke-psgcat",
    "invoke-findgrouptrustusers",
    "invoke-downgradeaccount",
    "invoke-eventhunter",
    "invoke-userhunter",
    "invoke-processhunter",
    "invoke-sharefinder",
    "invoke-mapdomaintrust",
    "invoke-enumeratelocaladmin",
    "invoke-checklocaladminaccess",
    "invoke-threadedfunction",
    "invoke-zerologon\226\128\139",
    "invoke-rubeus",
    "invoke-cleverspray",
    "new-powercat",
    "do-exfiltration",
    "inject-portableexecutable",
    "show-targetscreen",
    "new-honeyhash",
    "inject-bypassstuff",
    "remove-poshrat",
    "inject-netripper",
    "get-vulnautorun",
    "add-exfiltration",
    "show-wmimplantmainmenu",
    "get-processlistingwmimplant",
    "get-filecontentswmimplant",
    "start-powercat",
    "find-filewmimplant",
    "find-pathhijack",
    "get-lsasecret",
    "get-foxdump",
    "connect-powercat",
    "set-masterbootrecord",
    "http-backdoor",
    "inject-remoteshellcode",
    "configure-victim",
    "execute-dnstxt-code",
    "find-dllhijack",
    "snifferspoofer",
    "gupt-backdoor",
    "exploit-jboss",
    "write-hijackdll",
    "set-samaccountpasswordhash",
    "dns_txt_pwnage",
    "inject-localshellcode",
    "add-scrnsavebackdoor",
    "get-keepassdatabasekey",
    "get-passhashes",
    "add-regbackdoor",
    "get-modifiablefile",
    "get-psadforestkrbtgtinfo",
    "get-vulnschtask",
    "parse-ilhosts",
    "write-bytestomemory",
    "smbrelayexecute",
    "copy-arrayofmemaddresses",
    "find-fruit",
    "create-remotethread",
    "get-uniquetokens",
    "write-cmdservicebinary",
    "decrypthashes",
    "select-emailitem",
    "get-remoteprocaddress",
    "set-desktopacltoalloweveryone",
    "get-memoryprocaddress",
    "remove-persistence",
    "start-agentjob",
    "get-unattendedinstallfiles",
    "get-topport",
    "get-iecookies",
    "disable-securitysettings",
    "elevateprivs",
    "get-pebasicinfo",
    "portscan-alive",
    "reset-securitysettings",
    "get-entropy",
    "dumphashes",
    "write-serviceexe",
    "get-lostlimit",
    "get-regautologon",
    "unregister-processmoduletrace",
    "enable-duplicatetoken",
    "copy-clonedfile",
    "new-dllexportfunction",
    "discover-psmsexchangeservers",
    "find-psserviceaccounts",
    "get-chromedump",
    "get-tokeninformation",
    "get-ildisassembly",
    "get-psadforestinfo",
    "get-keystrokes",
    "get-procaddress",
    "get-gppinnerfields",
    "smbrelayresponse",
    "get-pearchitecture",
    "get-processmemoryinfo",
    "parse-ports",
    "get-usertgtevents",
    "write-portscanout",
    "set-macattribute",
    "create-multiplesessions",
    "smbntlmchallenge",
    "write-useraddmsi",
    "out-encryptedscript",
    "get-wlan-keys",
    "get-systemdnsserver",
    "get-primarytoken",
    "export-powerviewcsv",
    "injecturl2download",
    "get-imagentheaders",
    "download-execute-ps",
    "remove-ports",
    "copy-sections",
    "decryptsinglehash",
    "smbrelaychallenge",
    "restore-serviceexe",
    "set-killdate",
    "get-vaultelementvalue",
    "update-memoryprotectionflags",
    "set-desktopacls",
    "getwsusconfiguration",
    "get-methodaddress",
    "get-hbootkey",
    "get-unattendedinstallfile",
    "start-negotiate",
    "get-ntsysteminformation",
    "parse-hosts",
    "get-virtualprotectvalue",
    "find-processpes",
    "free-alltokens",
    "get-ffxandchromecookies",
    "import-dllinremoteprocess",
    "update-memoryaddresses",
    "create-processwithtoken",
    "portscan-port",
    "get-assemblyimplementedmethods",
    "write-useraddservicebinary",
    "get-userhashes",
    "powerpreter",
    "find-interestingfile",
    "find-4648logons",
    "get-pedetailedinfo",
    "decrypt-ciphertext",
    "discover-psinterestingservices",
    "write-serviceexecmd",
    "enum-alltokens",
    "get-serviceunquoted",
    "emit-callthreadstub",
    "get-serviceexeperms",
    "find-4624logons",
    "process-tasking",
    "find-avsignature",
    "set-criticalprocess",
    "get-vaultcredential",
    "smbntlmresponse",
    "get-shuffledarray",
    "parse-ipports",
    "find-localadminaccess",
    "ntlmchallengebase64",
    "download_execute",
    "process-packet",
    "get-killdate",
    "get-decryptedcpassword",
    "register-processmoduletrace",
    "discover-psmssqlservers",
    "load-libraryfrommemory",
    "run-exeonremote",
    "new-inmemorymodule",
    "sid_to_key",
    "get-passhints",
    "get-exploitablesystem",
    "get-netforestdomain",
    "get-netdomaincontroller",
    "get-netuser",
    "add-netuser",
    "add-netgroupuser",
    "get-netcomputer",
    "get-netou",
    "get-netfileserver",
    "get-netsession",
    "get-netrdpsession",
    "get-netprocess",
    "get-userevent",
    "get-userproperty",
    "get-computerproperty",
    "find-interestingfile",
    "find-userfield",
    "find-computerfield",
    "find-localadminaccess",
    "get-netdomaintrust",
    "get-netforesttrust",
    "find-foreignuser",
    "find-foreigngroup",
    "get-exploitablesystem",
    "invoke-totalexec"
  }
  if contains(A0_1391, L1_1392) then
    return true
  end
  return false
end
function IsExchangeServer()
  local L0_1393, L1_1394, L2_1395, L3_1396, L4_1397
  L0_1393 = versioning
  L0_1393 = L0_1393.IsServer
  L0_1393 = L0_1393()
  if not L0_1393 then
    L0_1393 = false
    return L0_1393
  end
  L0_1393 = "Microsoft.Exchange.Store.Service.exe"
  L1_1394 = GetRollingQueueKeyValue
  L2_1395 = "ExchgVersion"
  L3_1396 = L0_1393
  L1_1394 = L1_1394(L2_1395, L3_1396)
  if L1_1394 == nil then
    L2_1395 = "ExchgVersion"
    L3_1396 = 86400
    L4_1397 = sysio
    L4_1397 = L4_1397.RegOpenKey
    L4_1397 = L4_1397("HKLM\\Software\\Microsoft\\ExchangeServer\\V15\\Setup")
    L4_1397 = L4_1397 or sysio.RegOpenKey("HKLM\\Software\\Microsoft\\ExchangeServer\\V14\\Setup")
    if not L4_1397 then
      return false
    end
    L1_1394 = sysio.GetRegValueAsString(L4_1397, "OwaVersion")
    if not L1_1394 then
      return false
    end
    AppendToRollingQueue(L2_1395, L0_1393, L1_1394, L3_1396)
  end
  return L1_1394
end
function IsSharepointServer()
  local L0_1398, L1_1399, L2_1400, L3_1401, L4_1402, L5_1403, L6_1404, L7_1405, L8_1406, L9_1407, L10_1408
  L0_1398 = versioning
  L0_1398 = L0_1398.IsServer
  L0_1398 = L0_1398()
  if not L0_1398 then
    L0_1398 = false
    return L0_1398
  end
  L0_1398 = string
  L0_1398 = L0_1398.lower
  L1_1399 = bm
  L1_1399 = L1_1399.get_imagepath
  L10_1408 = L1_1399()
  L0_1398 = L0_1398(L1_1399, L2_1400, L3_1401, L4_1402, L5_1403, L6_1404, L7_1405, L8_1406, L9_1407, L10_1408, L1_1399())
  L1_1399 = GetRollingQueueKeyValue
  L2_1400 = "SPVersion"
  L3_1401 = L0_1398
  L1_1399 = L1_1399(L2_1400, L3_1401)
  if L1_1399 == nil then
    L2_1400 = "SPVersion"
    L3_1401 = nil
    L4_1402 = 86400
    L5_1403 = {
      L6_1404,
      L7_1405,
      L8_1406
    }
    for L9_1407, L10_1408 in L6_1404(L7_1405) do
      if sysio.RegOpenKey("HKLM\\SOFTWARE\\Microsoft\\Shared Tools\\Web Server Extensions\\" .. L10_1408 .. "\\WSS") then
        L3_1401 = sysio.RegOpenKey("HKLM\\SOFTWARE\\Microsoft\\Shared Tools\\Web Server Extensions\\" .. L10_1408)
      end
    end
    if not L3_1401 then
      return L6_1404
    end
    L1_1399 = L6_1404
    if not L1_1399 then
      return L6_1404
    end
    L9_1407 = L1_1399
    L10_1408 = L4_1402
    L6_1404(L7_1405, L8_1406, L9_1407, L10_1408)
  end
  return L1_1399
end
function IsActiveDirectoryRole()
  local L0_1409, L1_1410, L2_1411, L3_1412, L4_1413, L5_1414, L6_1415, L7_1416, L8_1417, L9_1418, L10_1419
  L0_1409 = versioning
  L0_1409 = L0_1409.IsServer
  L0_1409 = L0_1409()
  if not L0_1409 then
    L0_1409 = false
    return L0_1409
  end
  L0_1409 = "AD-Domain-Services"
  L1_1410 = GetRollingQueueKeyValue
  L2_1411 = "ActiveDirRole"
  L1_1410 = L1_1410(L2_1411, L3_1412)
  if L1_1410 ~= nil then
    L2_1411 = true
    return L2_1411
  end
  L2_1411 = MpCommon
  L2_1411 = L2_1411.GetServerRoles
  L2_1411 = L2_1411()
  if L2_1411 ~= nil then
    for L6_1415, L7_1416 in L3_1412(L4_1413) do
      if L7_1416 == "AD-Domain-Services" then
        L8_1417 = "ActiveDirRole"
        L9_1418 = 86400
        L10_1419 = sysio
        L10_1419 = L10_1419.GetCommandLineFromService
        L10_1419 = L10_1419("NTDS")
        if not L10_1419 then
          return false
        end
        if not string.find(L10_1419, "lsass.exe", 1, true) then
          return false
        end
        AppendToRollingQueue(L8_1417, L0_1409, 1, L9_1418)
        return true
      end
    end
  end
  return L3_1412
end
function IsADConnectRole()
  local L0_1420, L1_1421, L2_1422, L3_1423, L4_1424
  L0_1420 = versioning
  L0_1420 = L0_1420.IsServer
  L0_1420 = L0_1420()
  if not L0_1420 then
    L0_1420 = false
    return L0_1420
  end
  L0_1420 = "Microsoft.Azure.ActiveDirectory.ADSyncManagement.Server"
  L1_1421 = GetRollingQueueKeyValue
  L2_1422 = "ADConnect"
  L3_1423 = L0_1420
  L1_1421 = L1_1421(L2_1422, L3_1423)
  if L1_1421 == nil then
    L2_1422 = "ADConnect"
    L3_1423 = 86400
    L4_1424 = sysio
    L4_1424 = L4_1424.GetCommandLineFromService
    L4_1424 = L4_1424("ADSync")
    if not L4_1424 then
      return false
    end
    if not string.find(L4_1424, "miiserver.exe", 1, true) then
      return false
    end
    AppendToRollingQueue(L2_1422, L0_1420, 1, L3_1423)
  end
  L2_1422 = true
  return L2_1422
end
function IsADConnectCloudSyncRole()
  local L0_1425, L1_1426, L2_1427, L3_1428, L4_1429
  L0_1425 = versioning
  L0_1425 = L0_1425.IsServer
  L0_1425 = L0_1425()
  if not L0_1425 then
    L0_1425 = false
    return L0_1425
  end
  L0_1425 = "AADConnectProvisioningAgent"
  L1_1426 = GetRollingQueueKeyValue
  L2_1427 = "ADConnectCloudSync"
  L3_1428 = L0_1425
  L1_1426 = L1_1426(L2_1427, L3_1428)
  if L1_1426 == nil then
    L2_1427 = "ADConnectCloudSync"
    L3_1428 = 86400
    L4_1429 = sysio
    L4_1429 = L4_1429.GetCommandLineFromService
    L4_1429 = L4_1429("AADConnectProvisioningAgent")
    if not L4_1429 then
      return false
    end
    if not string.find(L4_1429, "AADConnectProvisioningAgent.exe", 1, true) then
      return false
    end
    AppendToRollingQueue(L2_1427, L0_1425, 1, L3_1428)
  end
  L2_1427 = true
  return L2_1427
end
function IsADFSRole()
  local L0_1430, L1_1431, L2_1432, L3_1433, L4_1434
  L0_1430 = versioning
  L0_1430 = L0_1430.IsServer
  L0_1430 = L0_1430()
  if not L0_1430 then
    L0_1430 = false
    return L0_1430
  end
  L0_1430 = "Microsoft.IdentityServer.ServiceHost"
  L1_1431 = GetRollingQueueKeyValue
  L2_1432 = "ADFSService"
  L3_1433 = L0_1430
  L1_1431 = L1_1431(L2_1432, L3_1433)
  if L1_1431 == nil then
    L2_1432 = "ADFSService"
    L3_1433 = 86400
    L4_1434 = sysio
    L4_1434 = L4_1434.GetCommandLineFromService
    L4_1434 = L4_1434("adfssrv")
    if not L4_1434 then
      return false
    end
    if not string.find(L4_1434, "Microsoft.IdentityServer.ServiceHost.exe", 1, true) then
      return false
    end
    AppendToRollingQueue(L2_1432, L0_1430, 1, L3_1433)
  end
  L2_1432 = true
  return L2_1432
end
function IsADCSRole()
  local L0_1435
  L0_1435 = versioning
  L0_1435 = L0_1435.IsServer
  L0_1435 = L0_1435()
  if not L0_1435 then
    L0_1435 = false
    return L0_1435
  end
  L0_1435 = sysio
  L0_1435 = L0_1435.GetCommandLineFromService
  L0_1435 = L0_1435("CertSvc")
  if not L0_1435 then
    return false
  end
  if not string.find(string.lower(L0_1435), "\\windows\\system32\\certsrv.exe", 1, true) then
    return false
  end
  return true
end
function IsVeeamRole()
  local L0_1436
  L0_1436 = versioning
  L0_1436 = L0_1436.IsServer
  L0_1436 = L0_1436()
  if not L0_1436 then
    L0_1436 = false
    return L0_1436
  end
  L0_1436 = sysio
  L0_1436 = L0_1436.GetCommandLineFromService
  L0_1436 = L0_1436("VeeamBackupSvc")
  if not L0_1436 then
    return false
  end
  if not string.find(L0_1436, "Veeam.Backup.Service.exe", 1, true) then
    return false
  end
  return true
end
function CheckNewThresholdMet(A0_1437, A1_1438, A2_1439)
  local L3_1440, L4_1441, L5_1442
  L3_1440 = false
  L4_1441 = ""
  L5_1442 = -9223372036854775808
  for _FORV_9_, _FORV_10_ in pairs(A2_1439) do
    if _FORV_9_ <= A0_1437 and _FORV_9_ > A0_1437 - A1_1438 and _FORV_9_ > L5_1442 then
      L3_1440 = true
      L4_1441 = _FORV_10_
      L5_1442 = _FORV_9_
    end
  end
  return L3_1440, L4_1441
end
function reportMassReconHistory(A0_1443, A1_1444, A2_1445)
  local L3_1446
  L3_1446 = sms_untrusted_process
  L3_1446()
  L3_1446 = reportSessionInformation
  L3_1446()
  L3_1446 = reportTimingData
  L3_1446()
  L3_1446 = GetRollingQueue
  L3_1446 = L3_1446(A0_1443)
  bm.add_related_string("MassRecon_" .. A1_1444 .. A2_1445, safeJsonSerialize(L3_1446), bm.RelatedStringBMReport)
  for _FORV_7_, _FORV_8_ in ipairs(L3_1446) do
    _FORV_8_.key = {
      parentPPID = explode(_FORV_8_.key, "|")[1],
      processPPID = explode(_FORV_8_.key, "|")[2],
      process_image = explode(_FORV_8_.key, "|")[3],
      process_cmd = explode(_FORV_8_.key, "|")[4]
    }
    bm.add_related_file(explode(_FORV_8_.key, "|")[3])
    bm.add_related_process(explode(_FORV_8_.key, "|")[1])
    bm.add_related_process(explode(_FORV_8_.key, "|")[2])
  end
end
function copyBMEvent(A0_1447)
  local L1_1448, L2_1449
  L1_1448 = {}
  L2_1449 = {
    "matched",
    "timestamp",
    "ppid",
    "image_path",
    "reg_block_src",
    "reg_block_usermode",
    "attribute",
    "p1",
    "p2",
    "np1",
    "np2",
    "wp1",
    "wp2",
    "utf8p1",
    "utf8p2"
  }
  for _FORV_6_, _FORV_7_ in ipairs(L2_1449) do
    L1_1448[_FORV_7_] = A0_1447[_FORV_7_]
  end
  return L1_1448
end
function getCurrentProcessInjectors()
  local L0_1450, L1_1451, L2_1452, L3_1453, L4_1454, L5_1455, L6_1456, L7_1457, L8_1458, L9_1459, L10_1460, L11_1461, L12_1462, L13_1463, L14_1464, L15_1465, L16_1466, L17_1467, L18_1468, L19_1469, L20_1470, L21_1471
  L0_1450 = pcall
  L1_1451 = bm
  L1_1451 = L1_1451.get_process_relationships
  L2_1452 = L0_1450(L1_1451)
  L3_1453 = {}
  L4_1454 = {}
  L4_1454.count = 0
  L5_1455 = {}
  L5_1455.count = 0
  if L0_1450 and L1_1451 then
    for L9_1459, L10_1460 in L6_1456(L7_1457) do
      L11_1461 = mp
      L11_1461 = L11_1461.bitand
      L12_1462 = L10_1460.reason
      L13_1463 = 2
      L11_1461 = L11_1461(L12_1462, L13_1463)
      if L11_1461 == 2 then
        L11_1461 = pcall
        L12_1462 = bm
        L12_1462 = L12_1462.get_process_relationships
        L13_1463 = L10_1460.ppid
        L13_1463 = L11_1461(L12_1462, L13_1463)
        L3_1453[L14_1464] = L15_1465
        L4_1454[L14_1464] = L10_1460
        L4_1454.count = L14_1464
        if L11_1461 and L13_1463 then
        else
          if L14_1464 == 0 then
            if L14_1464 then
              for L18_1468, L19_1469 in L15_1465(L16_1466) do
                L20_1470 = string
                L20_1470 = L20_1470.match
                L21_1471 = L19_1469.value
                L21_1471 = L20_1470(L21_1471, "imagename:%s*(.-)%s*;targetprocessp(%d+:%d+);(injectiontype:%w+);")
                if L21_1471 then
                  table.insert(L3_1453[L10_1460.ppid], L21_1471)
                  if not L5_1455[L21_1471] then
                    L5_1455[L21_1471] = {
                      image_name = L20_1470,
                      injection_type = L20_1470(L21_1471, "imagename:%s*(.-)%s*;targetprocessp(%d+:%d+);(injectiontype:%w+);")
                    }
                    L5_1455.count = L5_1455.count + 1
                  end
                end
              end
            end
        end
        else
          for L17_1467, L18_1468 in L14_1464(L15_1465) do
            L19_1469 = mp
            L19_1469 = L19_1469.bitand
            L20_1470 = L18_1468.reason
            L21_1471 = 2
            L19_1469 = L19_1469(L20_1470, L21_1471)
            if L19_1469 == 2 then
              L19_1469 = table
              L19_1469 = L19_1469.insert
              L20_1470 = L10_1460.ppid
              L20_1470 = L3_1453[L20_1470]
              L21_1471 = L18_1468.ppid
              L19_1469(L20_1470, L21_1471)
              L19_1469 = L18_1468.ppid
              L19_1469 = L5_1455[L19_1469]
              if not L19_1469 then
                L19_1469 = L18_1468.ppid
                L5_1455[L19_1469] = L18_1468
                L19_1469 = L5_1455.count
                L19_1469 = L19_1469 + 1
                L5_1455.count = L19_1469
              end
            end
          end
        end
      end
    end
  end
  return L6_1456, L7_1457, L8_1458
end
function readRegDQwordValue(A0_1472)
  local L1_1473, L2_1474
  function L1_1473(A0_1475)
    local L1_1476, L2_1477, L3_1478, L4_1479, L5_1480
    L1_1476 = ""
    for L5_1480 = #A0_1475, 1, -2 do
      L1_1476 = L1_1476 .. string.sub(A0_1475, L5_1480 - 1, L5_1480)
    end
    return L1_1476
  end
  L2_1474 = tohex
  L2_1474 = L2_1474(A0_1472)
  L2_1474 = L1_1473(L2_1474)
  while #L2_1474 > 1 and L2_1474:sub(1, 1) == "0" do
    L2_1474 = L2_1474:sub(2, -1)
  end
  return L2_1474
end
function GetPidFromParentImagePath(A0_1481)
  local L1_1482
  if not A0_1481 then
    return
  end
  L1_1482 = string
  L1_1482 = L1_1482.lower
  L1_1482 = L1_1482(A0_1481)
  A0_1481 = L1_1482
  L1_1482 = bm
  L1_1482 = L1_1482.get_process_relationships
  L1_1482 = L1_1482()
  if not L1_1482 then
    return
  end
  for _FORV_6_, _FORV_7_ in ipairs(L1_1482) do
    if _FORV_7_.ppid and _FORV_7_.image_path and string.find(string.lower(_FORV_7_.image_path), A0_1481, 1, true) then
      return _FORV_7_.ppid
    end
  end
  return
end
function GetCurrentPpid()
  if not pcall(bm.get_current_process_startup_info) or not pcall(bm.get_current_process_startup_info) then
    return
  end
  return pcall(bm.get_current_process_startup_info).ppid
end
function GetCurrentProcessImageName()
  local L0_1483, L1_1484
  L0_1483 = pcall
  L1_1484 = bm
  L1_1484 = L1_1484.get_imagepath
  L1_1484 = L0_1483(L1_1484)
  if not L0_1483 or not L1_1484 then
    return
  end
  return string.match(L1_1484, "([^\\]+)$")
end
function BlockC2Connection(A0_1485, A1_1486)
  local L2_1487
  L2_1487 = A1_1486 or L2_1487()
  if not L2_1487 then
    return
  end
  bm.trigger_sig("C2Block", A0_1485 and A0_1485 or "", L2_1487)
end
function TriggerTargetedMemoryScan(A0_1488, A1_1489)
  local L2_1490, L3_1491
  L2_1490 = A1_1489 or L2_1490()
  if not L2_1490 then
    return
  end
  L3_1491 = string
  L3_1491 = L3_1491.format
  L3_1491 = L3_1491("%s,address:%s,size:0", L2_1490, A0_1488)
  mp.TriggerScanResource("ems", L3_1491)
end
function AddSuspiciousRegion(A0_1492, A1_1493)
  local L2_1494, L3_1495
  L2_1494 = A1_1493 or L2_1494()
  if not L2_1494 then
    return
  end
  L3_1495 = string
  L3_1495 = L3_1495.format
  L3_1495 = L3_1495("susp_regions:%s", L2_1494)
  if not IsKeyInRollingQueue(L3_1495, A0_1492) then
    AppendToRollingQueue(L3_1495, A0_1492, nil, nil, 8)
  end
end
function GetSuspiciousAllocsInBmLog(A0_1496)
  local L1_1497, L2_1498, L3_1499, L4_1500, L5_1501, L6_1502, L7_1503, L8_1504, L9_1505, L10_1506, L11_1507
  L1_1497 = mp
  L1_1497 = L1_1497.SIGATTR_LOG_SZ
  if L1_1497 == 0 then
    return
  end
  function L1_1497(A0_1508, A1_1509)
    local L3_1510, L4_1511, L6_1512
    for _FORV_5_ = L3_1510.SIGATTR_LOG_SZ, 1, -1 do
      if A1_1509[_FORV_5_].attribute == 16435 and not A0_1508[A1_1509[_FORV_5_].utf8p2] then
        A0_1508[A1_1509[_FORV_5_].utf8p2] = true
      end
      if A1_1509[_FORV_5_].attribute == 16505 and not A0_1508[string.match(A1_1509[_FORV_5_].utf8p2, "(%d+);region")] then
        A0_1508[string.match(A1_1509[_FORV_5_].utf8p2, "(%d+);region")] = true
      end
      if A1_1509[_FORV_5_].attribute == 16523 and not A0_1508[A1_1509[_FORV_5_].utf8p2] then
        A0_1508[A1_1509[_FORV_5_].utf8p2] = true
      end
    end
  end
  L2_1498 = {}
  L3_1499 = L1_1497
  L3_1499(L4_1500, L5_1501)
  L3_1499 = L1_1497
  L3_1499(L4_1500, L5_1501)
  if A0_1496 then
    L3_1499 = 0
    for L7_1503 in L4_1500(L5_1501) do
      L8_1504 = bm
      L8_1504 = L8_1504.VirtualQuery
      L9_1505 = L7_1503
      L9_1505 = L8_1504(L9_1505)
      if L8_1504 then
        L10_1506 = string
        L10_1506 = L10_1506.format
        L11_1507 = "s:%x,p:%x,i:%x,t:%x"
        L10_1506 = L10_1506(L11_1507, L9_1505.size, L9_1505.prot, L9_1505.alloc_prot, L9_1505.state_type)
        L3_1499 = L3_1499 + 1
        L11_1507 = string
        L11_1507 = L11_1507.format
        L11_1507 = L11_1507("a40d39a6_%d", L3_1499)
        bm.add_related_string(L11_1507, L10_1506, bm.RelatedStringBMReport)
      end
    end
    L7_1503 = L3_1499
    L7_1503 = bm
    L7_1503 = L7_1503.RelatedStringBMReport
    L4_1500(L5_1501, L6_1502, L7_1503)
  end
  return L2_1498
end
function GetSuspiciousRegions(A0_1513)
  local L1_1514, L2_1515
  L1_1514 = A0_1513 or L1_1514()
  if not L1_1514 then
    return
  end
  L2_1515 = string
  L2_1515 = L2_1515.format
  L2_1515 = L2_1515("susp_regions:%s", L1_1514)
  if not GetRollingQueueKeys(L2_1515) then
    return
  end
  return (GetRollingQueueKeys(L2_1515))
end
function TriggerScanBeaconing(A0_1516)
  local L1_1517
  L1_1517 = A0_1516 or L1_1517()
  if not L1_1517 then
    return
  end
  bm.trigger_sig("ScanSuspiciousRegions", L1_1517, L1_1517)
end
function ProcessCodeInjection(A0_1518, A1_1519)
  local L2_1520, L3_1521, L4_1522, L5_1523, L6_1524, L7_1525, L8_1526, L9_1527, L10_1528, L11_1529, L12_1530, L13_1531, L14_1532, L15_1533, L16_1534, L17_1535
  L2_1520 = A0_1518.utf8p1
  if not L2_1520 then
    L3_1521 = false
    return L3_1521
  end
  L3_1521 = A0_1518.utf8p2
  if not L3_1521 then
    L4_1522 = false
    return L4_1522
  end
  L4_1522 = string
  L4_1522 = L4_1522.match
  L5_1523 = L3_1521
  L6_1524 = "regionsize:(%d+)"
  L4_1522 = L4_1522(L5_1523, L6_1524)
  if not L4_1522 then
    L5_1523 = false
    return L5_1523
  end
  L5_1523 = string
  L5_1523 = L5_1523.match
  L6_1524 = L3_1521
  L7_1525 = "vmbaseaddress:(%d+)"
  L5_1523 = L5_1523(L6_1524, L7_1525)
  if not L5_1523 then
    L6_1524 = false
    return L6_1524
  end
  L6_1524 = string
  L6_1524 = L6_1524.match
  L7_1525 = L3_1521
  L8_1526 = "injectiontype:(%a+);"
  L6_1524 = L6_1524(L7_1525, L8_1526)
  if not L6_1524 then
    L7_1525 = false
    return L7_1525
  end
  L7_1525 = A1_1519.utf8p2
  if not L7_1525 then
    L8_1526 = false
    return L8_1526
  end
  L8_1526 = string
  L8_1526 = L8_1526.match
  L9_1527 = L7_1525
  L10_1528 = "injectiontype:(%a+);"
  L8_1526 = L8_1526(L9_1527, L10_1528)
  if not L8_1526 then
    L9_1527 = false
    return L9_1527
  end
  L9_1527 = string
  L9_1527 = L9_1527.match
  L10_1528 = L2_1520
  L11_1529 = "targetprocessppid:(%d+):(%d+)"
  L10_1528 = L9_1527(L10_1528, L11_1529)
  if not L9_1527 or not L10_1528 then
    L11_1529 = false
    return L11_1529
  end
  L11_1529 = A0_1518.ppid
  if not L11_1529 then
    L12_1530 = false
    return L12_1530
  end
  L12_1530 = MpCommon
  L12_1530 = L12_1530.IsFriendlyProcess
  L13_1531 = L11_1529
  L12_1530 = L12_1530(L13_1531)
  if L12_1530 then
    L12_1530 = "1"
  else
    L12_1530 = L12_1530 or "0"
  end
  L13_1531 = GetCurrentProcessImageName
  L13_1531 = L13_1531()
  L14_1532 = string
  L14_1532 = L14_1532.match
  L15_1533 = L2_1520
  L16_1534 = "imagename:(.+);"
  L14_1532 = L14_1532(L15_1533, L16_1534)
  if (L13_1531 == "RunDll64.exe" or L14_1532 == "RunDll64.exe") and (L4_1522 == "950" or L4_1522 == "995") and L8_1526 == "remotethread" and L12_1530 == "1" then
    L15_1533 = false
    return L15_1533
  end
  L15_1533 = string
  L15_1533 = L15_1533.format
  L16_1534 = "%s:%s:%s:%s:%s:%s"
  L17_1535 = L13_1531
  L15_1533 = L15_1533(L16_1534, L17_1535, L14_1532, L8_1526, L6_1524, L4_1522, L12_1530)
  L16_1534 = {}
  L16_1534["msedge.exe:msedge.exe:queueuserapc:allocvmremote:4096:1"] = true
  L16_1534["chrome.exe:chrome.exe:queueuserapc:allocvmremote:4096:1"] = true
  L16_1534["Teams.exe:Teams.exe:queueuserapc:allocvmremote:4096:1"] = true
  L16_1534["msedgewebview2.exe:msedgewebview2.exe:queueuserapc:allocvmremote:4096:1"] = true
  L16_1534["msedge.exe:msedge.exe:queueuserapc:protectvm:16:1"] = true
  L16_1534["firefox.exe:firefox.exe:queueuserapc:allocvmremote:4096:1"] = true
  L16_1534["chrome.exe:chrome.exe:queueuserapc:protectvm:16:1"] = true
  L16_1534["Teams.exe:Teams.exe:queueuserapc:protectvm:16:1"] = true
  L16_1534["AcroRd32.exe:AcroRd32.exe:queueuserapc:protectvm:12:1"] = true
  L16_1534["svservice.exe:powershell.exe:queueuserapc:allocvmremote:578:1"] = true
  L16_1534["RdrCEF.exe:RdrCEF.exe:queueuserapc:protectvm:12:1"] = true
  L16_1534["svservice.exe:svchost.exe:queueuserapc:allocvmremote:578:1"] = true
  L16_1534["OfficeClickToRun.exe:msoadfsb.exe:queueuserapc:protectvm:1024:1"] = true
  L16_1534["Acrobat.exe:Acrobat.exe:queueuserapc:protectvm:12:1"] = true
  L16_1534["msedgewebview2.exe:msedgewebview2.exe:queueuserapc:protectvm:16:1"] = true
  L16_1534["RdrCEF.exe:RdrCEF.exe:queueuserapc:allocvmremote:4096:1"] = true
  L16_1534["chrome.exe:chrome.exe:queueuserapc:protectvm:736:1"] = true
  L16_1534["msedge.exe:msedge.exe:queueuserapc:protectvm:800:1"] = true
  L16_1534["powershell.exe:svservice.exe:queueuserapc:protectvm:578:1"] = true
  L16_1534["msedge.exe:msedge.exe:queueuserapc:protectvm:1312:1"] = true
  L16_1534["chrome.exe:chrome.exe:queueuserapc:allocvmremote:4096:0"] = true
  L16_1534["ai.exe:OfficeClickToRun.exe:queueuserapc:protectvm:1024:1"] = true
  L16_1534["Teams.exe:Teams.exe:queueuserapc:protectvm:928:1"] = true
  L16_1534["msedge.exe:core.exe:queueuserapc:allocvmremote:578:1"] = true
  L16_1534["chrome.exe:chrome.exe:queueuserapc:protectvm:672:1"] = true
  L16_1534["AcroCEF.exe:AcroCEF.exe:queueuserapc:allocvmremote:4096:1"] = true
  L16_1534["java.exe:jcmd.exe:remotethread:allocvmremote:136:1"] = true
  L16_1534["svchost.exe:svservice.exe:queueuserapc:protectvm:578:1"] = true
  L16_1534["chrome.exe:chrome.exe:queueuserapc:protectvm:12:1"] = true
  L16_1534["firefox.exe:firefox.exe:queueuserapc:protectvm:16:1"] = true
  L16_1534["RdrCEF.exe:RdrCEF.exe:queueuserapc:protectvm:912:1"] = true
  L16_1534["firefox.exe:firefox.exe:queueuserapc:protectvm:12:1"] = true
  L16_1534["Spotify.exe:Spotify.exe:queueuserapc:allocvmremote:4096:1"] = true
  L16_1534["AcroRd32.exe:AcroRd32.exe:queueuserapc:allocvmremote:4096:1"] = true
  L16_1534["jabra-direct.exe:jabra-direct.exe:queueuserapc:allocvmremote:4096:1"] = true
  L16_1534["AcroCEF.exe:AcroCEF.exe:queueuserapc:protectvm:12:1"] = true
  L16_1534["msedge.exe:core.exe:queueuserapc:allocvmremote:725:1"] = true
  L16_1534["firefox.exe:firefox.exe:queueuserapc:protectvm:4096:1"] = true
  L16_1534["EXCEL.EXE:OfficeClickToRun.exe:queueuserapc:protectvm:1024:1"] = true
  L16_1534["SIP.exe:powershell.exe:remotethread:protectvm:8192:1"] = true
  L16_1534["jcmd.exe:java.exe:remotethread:allocvmremote:136:1"] = true
  L16_1534["OfficeClickToRun.exe:ai.exe:queueuserapc:protectvm:1024:1"] = true
  L16_1534["A180AG.exe:AcroRd32.exe:remotethread:allocvmremote:4096:1"] = true
  L16_1534["MavInject32.exe:msoadfsb.exe:queueuserapc:protectvm:1024:1"] = true
  L16_1534["EpicDumpTruckInjector64.exe:Hyperdrive.exe:remotethread:allocvmremote:166:0"] = true
  L16_1534["EpicDumpTruckInjector.exe:HubFramework.exe:remotethread:allocvmremote:160:0"] = true
  L16_1534["IPScriptHost.exe:T.exe:remotethread:allocvmremote:100:1"] = true
  L16_1534["SIP.exe:cmd.exe:remotethread:protectvm:8192:1"] = true
  L16_1534["SIP.exe:SelfService.exe:remotethread:protectvm:8192:1"] = true
  L16_1534["SIP.exe:ClearPassUSHARemediate.exe:remotethread:protectvm:8192:1"] = true
  L16_1534["VeeamGuestHelper.exe:svchost.exe:remotethread:allocvmremote:44:1"] = true
  L16_1534["OfficeClickToRun.exe:EXCEL.EXE:queueuserapc:protectvm:1024:1"] = true
  L16_1534["EpicDumpTruckInjector64.exe:Hyperdrive.exe:remotethread:allocvmremote:170:0"] = true
  L16_1534["EpicDumpTruckInjector.exe:HubFramework.exe:remotethread:allocvmremote:164:0"] = true
  L16_1534["Unattended.exe:explorer.exe:remotethread:allocvmremote:1360:1"] = true
  L16_1534["SIP.exe:netsh.exe:remotethread:protectvm:8192:1"] = true
  L16_1534["LDUrlMonInject64.exe:msedge.exe:remotethread:allocvmremote:1122:1"] = true
  L16_1534["SIP.exe:HxTsr.exe:remotethread:protectvm:8192:1"] = true
  L16_1534["explorer.exe:chrome.exe:remotethread:allocvmremote:664:1"] = true
  L16_1534["SIP.exe:VSSVC.exe:remotethread:protectvm:8192:1"] = true
  L16_1534["SIP.exe:splunk-MonitorNoHandle.exe:remotethread:protectvm:8192:1"] = true
  L16_1534["SIP.exe:CefSharp.BrowserSubprocess.exe:remotethread:protectvm:8192:1"] = true
  L16_1534["explorer.exe:cmd.exe:remotethread:allocvmremote:664:1"] = true
  L16_1534["Workstation.exe:Workstation.exe:queueuserapc:protectvm:16:1"] = true
  L16_1534["SIP.exe:WMIC.exe:remotethread:protectvm:8192:1"] = true
  L16_1534["A180AG.exe:AcroRd32.exe:queueuserapc:allocvmremote:4096:1"] = true
  L16_1534["explorer.exe:msedge.exe:remotethread:allocvmremote:664:1"] = true
  L16_1534["A180AG.exe:Teams.exe:remotethread:allocvmremote:4096:1"] = true
  L16_1534["A180AG.exe:WmiPrvSE.exe:remotethread:allocvmremote:4096:1"] = true
  L16_1534["SIP.exe:get_proxy.exe:remotethread:protectvm:8192:1"] = true
  L16_1534["SIP.exe:wa_3rd_party_host_32.exe:remotethread:protectvm:8192:1"] = true
  L16_1534["TextServer.exe:T.exe:remotethread:allocvmremote:508:1"] = true
  L16_1534["EpicDumpTruckInjector64.exe:Hyperdrive.exe:remotethread:allocvmremote:170:1"] = true
  L16_1534["SIP.exe:wa_3rd_party_host_64.exe:remotethread:protectvm:8192:1"] = true
  L16_1534["LDUrlMonInject64.exe:chrome.exe:remotethread:allocvmremote:1122:1"] = true
  L16_1534["EpicDumpTruckInjector.exe:HubFramework.exe:remotethread:allocvmremote:164:1"] = true
  L16_1534["SIP.exe:chrome.exe:remotethread:protectvm:8192:1"] = true
  L16_1534["idea64.exe:java.exe:remotethread:allocvmremote:136:1"] = true
  L16_1534["syspin.exe:explorer.exe:remotethread:allocvmremote:38008:1"] = true
  L16_1534["OfficeClickToRun.exe:WINWORD.EXE:queueuserapc:protectvm:1024:1"] = true
  L16_1534["msiexec_monitor64.exe:msiexec.exe:remotethread:allocvmremote:172:1"] = true
  L16_1534["HubCore.exe:wfshell.exe:remotethread:allocvmremote:166:0"] = true
  L16_1534["rundll32.exe:powershell.exe:remotethread:protectvm:4096:1"] = true
  L16_1534["core.exe:msedge.exe:remotethread:allocvmremote:578:1"] = true
  L16_1534["RadeonSoftware.exe:QtWebEngineProcess.exe:queueuserapc:allocvmremote:4096:1"] = true
  L16_1534["SIP.exe:HPWarrantyChecker.exe:remotethread:protectvm:8192:1"] = true
  L16_1534["SIP.exe:powershell.exe:remotethread:protectvm:8192:0"] = true
  L16_1534["SIP.exe:updater.exe:remotethread:protectvm:8192:1"] = true
  L16_1534["NHOSTSVC.EXE:winlogon.exe:remotethread:allocvmremote:227328:1"] = true
  L16_1534["explorer.exe:SecurityHealthSystray.exe:remotethread:allocvmremote:664:1"] = true
  L16_1534["SIP.exe:cscript.exe:remotethread:protectvm:8192:1"] = true
  L16_1534["SIP.exe:osqueryi.exe:remotethread:protectvm:8192:1"] = true
  L16_1534["core.exe:msedge.exe:remotethread:allocvmremote:725:1"] = true
  L16_1534["Dropbox.exe:Dropbox.exe:queueuserapc:allocvmremote:4096:1"] = true
  L16_1534["MavInject32.exe:EXCEL.EXE:queueuserapc:protectvm:1024:1"] = true
  L16_1534["SIP.exe:RunHidden.exe:remotethread:protectvm:8192:1"] = true
  L16_1534["A180AG.exe:conhost.exe:remotethread:allocvmremote:4096:1"] = true
  L16_1534["AcroCEF.exe:AcroCEF.exe:queueuserapc:protectvm:928:1"] = true
  L16_1534["911 Location Manager.exe:911 Location Manager.exe:queueuserapc:protectvm:16:1"] = true
  L16_1534["core.exe:msedge.exe:queueuserapc:allocvmremote:578:1"] = true
  L16_1534["Acrobat.exe:Acrobat.exe:queueuserapc:protectvm:16:1"] = true
  L16_1534["AcroCEF.exe:AcroCEF.exe:queueuserapc:protectvm:16:1"] = true
  L16_1534["chrome.exe:chrome.exe:queueuserapc:protectvm:16:0"] = true
  L16_1534["AppVClient.exe:msedge.exe:queueuserapc:protectvm:1024:1"] = true
  L16_1534["msedgewebview2.exe:msedgewebview2.exe:queueuserapc:protectvm:800:1"] = true
  L16_1534["SIP.exe:vf_host.exe:remotethread:protectvm:8192:1"] = true
  L16_1534["core.exe:msedge.exe:queueuserapc:allocvmremote:725:1"] = true
  L16_1534["msedgewebview2.exe:msedgewebview2.exe:queueuserapc:protectvm:1312:1"] = true
  L16_1534["Teams.exe:Teams.exe:queueuserapc:protectvm:12:1"] = true
  L16_1534["Acrobat.exe:Acrobat.exe:queueuserapc:allocvmremote:4096:1"] = true
  L16_1534["AcroCEF.exe:AcroCEF.exe:queueuserapc:protectvm:912:1"] = true
  L16_1534["Teams.exe:Teams.exe:queueuserapc:protectvm:1056:1"] = true
  L16_1534["core.exe:msedge.exe:queueuserapc:allocvmremote:555:1"] = true
  L16_1534["brave.exe:brave.exe:queueuserapc:allocvmremote:4096:1"] = true
  L16_1534["AppVClient.exe:explorer.exe:queueuserapc:protectvm:1024:1"] = true
  L16_1534["Workstation.exe:Workstation.exe:queueuserapc:allocvmremote:4096:1"] = true
  L16_1534["core.exe:chrome.exe:queueuserapc:allocvmremote:578:1"] = true
  L16_1534["firefox.exe:firefox.exe:queueuserapc:protectvm:848:1"] = true
  L16_1534["opera.exe:opera.exe:queueuserapc:allocvmremote:4096:1"] = true
  L16_1534["Spotify.exe:Spotify.exe:queueuserapc:protectvm:16:1"] = true
  L16_1534["core.exe:dllhost.exe:queueuserapc:allocvmremote:725:1"] = true
  L16_1534["msedge.exe:msedge.exe:queueuserapc:protectvm:16:0"] = true
  L16_1534["msedge.exe:msedge.exe:queueuserapc:allocvmremote:4096:0"] = true
  L16_1534["core.exe:dwm.exe:queueuserapc:protectvm:950:1"] = true
  L16_1534["msedge.exe:msedge.exe:queueuserapc:protectvm:12:1"] = true
  L16_1534["svservice.exe:svchost.exe:queueuserapc:protectvm:578:1"] = true
  L16_1534["chrome.exe:chrome.exe:queueuserapc:protectvm:720:1"] = true
  L16_1534["core.exe:dwm.exe:queueuserapc:allocvmremote:725:1"] = true
  L16_1534["Code.exe:Code.exe:queueuserapc:allocvmremote:4096:1"] = true
  L16_1534["AdskAccessUIHost.exe:AdskAccessUIHost.exe:queueuserapc:allocvmremote:4096:1"] = true
  L16_1534["CTskMstr.exe:AgentExecutor.exe:queueuserapc:allocvmremote:612:1"] = true
  L16_1534["svservice.exe:powershell.exe:queueuserapc:protectvm:578:1"] = true
  L16_1534["AppVClient.exe:iexplore.exe:queueuserapc:protectvm:1024:1"] = true
  L16_1534["cyserver.exe:tlaworker.exe:queueuserapc:protectvm:1:1"] = true
  L16_1534["jabra-direct.exe:jabra-direct.exe:queueuserapc:protectvm:12:1"] = true
  L16_1534["core.exe:chrome.exe:queueuserapc:allocvmremote:725:1"] = true
  L16_1534["rserver3.exe:FamItrfc.Exe:queueuserapc:allocvmremote:41:1"] = true
  L16_1534["AcroRd32.exe:AcroRd32.exe:queueuserapc:protectvm:12:0"] = true
  L16_1534["chrome.exe:chrome.exe:queueuserapc:protectvm:656:1"] = true
  L16_1534["tableau.exe:QtWebEngineProcess.exe:queueuserapc:allocvmremote:4096:1"] = true
  L16_1534["911 Location Manager.exe:911 Location Manager.exe:queueuserapc:allocvmremote:4096:1"] = true
  L16_1534["EPOSConnect.exe:EPOSConnect.exe:queueuserapc:protectvm:12:1"] = true
  L16_1534["SIP.exe:Textron.scr:remotethread:protectvm:8192:1"] = true
  L16_1534["SIP.exe:BeforeLogonForm.exe:remotethread:protectvm:8192:1"] = true
  L16_1534["SIP.exe:wscript.exe:remotethread:protectvm:8192:1"] = true
  L16_1534["idea64.exe:java.exe:queueuserapc:allocvmremote:136:1"] = true
  L16_1534["SIP.exe:TaniumExecWrapper.exe:remotethread:protectvm:8192:1"] = true
  L16_1534["A180AG.exe:Cibc.DI.Platform.Process.exe:remotethread:allocvmremote:4096:1"] = true
  L16_1534["A180AG.exe:chrome.exe:remotethread:allocvmremote:4096:1"] = true
  L16_1534["MavInject32.exe:WINWORD.EXE:queueuserapc:protectvm:1024:1"] = true
  L16_1534["SIP.exe:AdobeARM.exe:remotethread:protectvm:8192:1"] = true
  L16_1534["core.exe:msedge.exe:queueuserapc:protectvm:578:1"] = true
  L16_1534["core.exe:msedge.exe:queueuserapc:allocvmremote:950:1"] = true
  L16_1534["core.exe:msedge.exe:queueuserapc:protectvm:555:1"] = true
  L16_1534["core.exe:firefox.exe:queueuserapc:allocvmremote:521:1"] = true
  L16_1534["core.exe:msedge.exe:queueuserapc:protectvm:725:1"] = true
  L16_1534["Teams.exe:Teams.exe:queueuserapc:allocvmremote:4096:0"] = true
  L16_1534["core.exe:msedge.exe:queueuserapc:protectvm:950:1"] = true
  L16_1534["SIP.exe:DPM.exe:remotethread:protectvm:8192:1"] = true
  L16_1534["A180AG.exe:chrome.exe:queueuserapc:allocvmremote:4096:1"] = true
  L16_1534["AMAgentAssist.exe:winlogon.exe:remotethread:allocvmremote:138:1"] = true
  L16_1534["core.exe:msedge.exe:remotethread:allocvmremote:555:1"] = true
  L16_1534["explorer.exe:EXCEL.EXE:remotethread:allocvmremote:664:1"] = true
  L16_1534["AMDllInjectionAssist.exe:vpnagent.exe:remotethread:allocvmremote:150:1"] = true
  L16_1534["jcmd.exe:java.exe:queueuserapc:allocvmremote:136:1"] = true
  L16_1534["SIP.exe:splunk-admon.exe:remotethread:protectvm:8192:1"] = true
  L16_1534["msedge.exe:msedge.exe:remotethread:allocvmremote:4096:1"] = true
  L16_1534["OfficeClickToRun.exe:POWERPNT.EXE:queueuserapc:protectvm:1024:1"] = true
  L16_1534["AMAgentAssist.exe:lsass.exe:remotethread:allocvmremote:138:1"] = true
  L16_1534["firefox.exe:firefox.exe:queueuserapc:mapview:65536:1"] = true
  L16_1534["sfc.exe:msedge.exe:queueuserapc:allocvmremote:4096:1"] = true
  L16_1534["explorer.exe:PGStub.exe:remotethread:allocvmremote:664:1"] = true
  L16_1534["AMDllInjectionAssist.exe:armsvc.exe:remotethread:allocvmremote:150:1"] = true
  L16_1534["EPOSConnect.exe:EPOSConnect.exe:queueuserapc:allocvmremote:4096:1"] = true
  L16_1534["explorer.exe:SnippingTool.exe:remotethread:allocvmremote:664:1"] = true
  L17_1535 = L16_1534[L15_1533]
  if L17_1535 then
    L17_1535 = false
    return L17_1535
  end
  L17_1535 = bm
  L17_1535 = L17_1535.add_related_string
  L17_1535("ci_al", L6_1524, bm.RelatedStringBMReport)
  L17_1535 = bm
  L17_1535 = L17_1535.add_related_string
  L17_1535("ci_tp", L8_1526, bm.RelatedStringBMReport)
  L17_1535 = bm
  L17_1535 = L17_1535.add_related_string
  L17_1535("ci_sz", L4_1522, bm.RelatedStringBMReport)
  L17_1535 = bm
  L17_1535 = L17_1535.add_related_string
  L17_1535("ci_fr", L12_1530, bm.RelatedStringBMReport)
  L17_1535 = bm
  L17_1535 = L17_1535.add_related_string
  L17_1535("ci_src_img", L13_1531, bm.RelatedStringBMReport)
  L17_1535 = bm
  L17_1535 = L17_1535.add_related_string
  L17_1535("ci_tgt_img", L14_1532, bm.RelatedStringBMReport)
  L17_1535 = bm
  L17_1535 = L17_1535.add_related_string
  L17_1535("ci_v", "2", bm.RelatedStringBMReport)
  L17_1535 = string
  L17_1535 = L17_1535.format
  L17_1535 = L17_1535("pid:%s,ProcessStart:%s", L9_1527, L10_1528)
  TriggerTargetedMemoryScan(L5_1523, L17_1535)
  bm.trigger_sig("injection_target", "Behavior:Win32/ScanCodeInjection.A", L17_1535)
  return true
end
function IsTaintedProcessinParentTreeForLinux(A0_1536, A1_1537, A2_1538, A3_1539)
  local L4_1540, L5_1541
  if A2_1538 == 0 then
    return
  end
  if A0_1536 == nil or A0_1536 == "" then
    return
  end
  L4_1540 = A2_1538
  if A2_1538 == nil or A2_1538 < 0 or A2_1538 > 5 then
    L4_1540 = 2
  end
  if A3_1539 == nil or A3_1539 == "" then
    A3_1539 = true
  end
  if A3_1539 then
    L5_1541 = bm
    L5_1541 = L5_1541.get_imagepath
    L5_1541 = L5_1541()
    if L5_1541 ~= nil and L5_1541 ~= "" and isTainted(L5_1541, A0_1536) then
      bm.add_related_file(L5_1541)
      return true
    end
  end
  L5_1541 = A1_1537
  if A1_1537 == nil or A1_1537 == "" then
    if bm.get_current_process_startup_info() == nil or bm.get_current_process_startup_info().ppid == nil or bm.get_current_process_startup_info().ppid == "" then
      return
    end
    L5_1541 = bm.get_current_process_startup_info().ppid
  end
  if mp.GetParentProcInfo(L5_1541) ~= nil and mp.GetParentProcInfo(L5_1541).ppid ~= nil and mp.GetParentProcInfo(L5_1541).image_path ~= nil then
    if isTainted(mp.GetParentProcInfo(L5_1541).image_path, A0_1536) then
      bm.add_related_file(mp.GetParentProcInfo(L5_1541).image_path)
      return true
    end
    return IsTaintedProcessinParentTreeForLinux(A0_1536, mp.GetParentProcInfo(L5_1541).ppid, L4_1540 - 1, false)
  end
end
