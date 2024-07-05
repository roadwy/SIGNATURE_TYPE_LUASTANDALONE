local L0_0, L1_1
function L0_0()
  local L0_2, L1_3, L2_4, L3_5, L4_6, L5_7, L6_8, L7_9
  L0_2 = {}
  L1_3 = sysio
  L1_3 = L1_3.GetLogicalDrivesMask
  L1_3 = L1_3()
  L2_4 = {
    L3_5,
    L4_6,
    L5_7,
    L6_8,
    L7_9,
    "F:",
    "G:",
    "H:",
    "I:",
    "J:",
    "K:",
    "L:",
    "M:",
    "N:",
    "O:",
    "P:",
    "Q:",
    "R:",
    "S:",
    "T:",
    "U:",
    "V:",
    "W:",
    "X:",
    "Y:",
    "Z:"
  }
  L6_8 = "D:"
  L7_9 = "E:"
  for L6_8, L7_9 in L3_5(L4_6) do
    if mp.bitand(mp.shl32(1, L6_8 - 1), L1_3) ~= 0 and sysio.QuerySymbolicLinkObject("\\??\\globalroot\\GLOBAL??\\" .. L7_9) then
      L0_2[L7_9] = sysio.QuerySymbolicLinkObject("\\??\\globalroot\\GLOBAL??\\" .. L7_9)
    end
  end
  return L0_2
end
Infrastructure_GetMappedDriveVolumes = L0_0
function L0_0()
  local L0_10, L1_11, L2_12, L3_13, L4_14, L5_15, L6_16, L7_17
  L0_10 = sysio
  L0_10 = L0_10.QuerySymbolicLinkObject
  L1_11 = "\\??\\globalroot\\device\\BootPartition"
  L0_10 = L0_10(L1_11)
  L1_11 = Infrastructure_GetMappedDriveVolumes
  L1_11 = L1_11()
  for L5_15, L6_16 in L2_12(L3_13) do
    L7_17 = L5_15
    L7_17 = L7_17 .. "\\Windows"
    if L6_16 == L0_10 and sysio.IsFolderExists(L7_17) then
      return L7_17
    end
  end
end
Infrastructure_GetWindowsPathSlow = L0_0
function L0_0()
  local L0_18
  L0_18 = sysio
  L0_18 = L0_18.RegOpenKey
  L0_18 = L0_18("HKLM\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Image File Execution Options\\mpcmdrun.exe")
  if L0_18 then
    sysio.DeleteRegValue(L0_18, "Debugger")
  end
  L0_18 = sysio.RegOpenKey("HKLM\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Image File Execution Options\\msseces.exe")
  if L0_18 then
    sysio.DeleteRegValue(L0_18, "Debugger")
  end
  L0_18 = sysio.RegOpenKey("HKLM\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Image File Execution Options\\msmpeng.exe")
  if L0_18 then
    sysio.DeleteRegValue(L0_18, "Debugger")
  end
  L0_18 = sysio.RegOpenKey("HKLM\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Image File Execution Options\\msascui.exe")
  if L0_18 then
    sysio.DeleteRegValue(L0_18, "Debugger")
  end
end
Infrastructure_CheckProductImageExecEntriesAndRemove = L0_0
function L0_0(A0_19)
  local L1_20, L2_21, L3_22, L4_23, L5_24, L6_25, L7_26, L8_27, L9_28
  L1_20 = sysio
  L1_20 = L1_20.RegOpenKey
  L2_21 = A0_19
  L1_20 = L1_20(L2_21)
  if L1_20 then
    L2_21 = sysio
    L2_21 = L2_21.RegEnumKeys
    L2_21 = L2_21(L3_22)
    if L2_21 then
      for L6_25, L7_26 in L3_22(L4_23) do
        L8_27 = sysio
        L8_27 = L8_27.RegOpenKey
        L9_28 = A0_19
        L9_28 = L9_28 .. "\\" .. L7_26
        L8_27 = L8_27(L9_28)
        if L8_27 then
          L9_28 = sysio
          L9_28 = L9_28.GetRegValueAsString
          L9_28 = L9_28(L8_27, "ItemData")
          if L9_28 and (string.find(string.lower(L9_28), "microsoft security", 1, true) or string.find(string.lower(L9_28), "defender", 1, true)) then
            sysio.DeleteRegKey(L8_27, nil)
          end
        end
      end
    end
  end
end
Infrastructure_ScanSrpKeyPath_MSAV = L0_0
function L0_0()
  local L0_29, L1_30, L2_31, L3_32, L4_33, L5_34, L6_35, L7_36
  L0_29 = Infrastructure_ScanSrpKeyPath_MSAV
  L1_30 = "HKLM\\SOFTWARE\\Policies\\Microsoft\\Windows\\safer\\codeidentifiers\\0\\Paths"
  L0_29(L1_30)
  L0_29 = SetLuaInstrLimit
  L1_30 = crypto
  L1_30 = L1_30.shl64
  L2_31 = 1
  L7_36 = L1_30(L2_31, L3_32)
  L0_29(L1_30, L2_31, L3_32, L4_33, L5_34, L6_35, L7_36, L1_30(L2_31, L3_32))
  L0_29 = "HKCU\\SOFTWARE\\Policies\\Microsoft\\Windows\\safer\\codeidentifiers\\0\\Paths"
  L1_30 = sysio
  L1_30 = L1_30.RegExpandUserKey
  L2_31 = L0_29
  L1_30 = L1_30(L2_31)
  L2_31 = 0
  for L6_35, L7_36 in L3_32(L4_33) do
    Infrastructure_ScanSrpKeyPath_MSAV(L7_36)
    L2_31 = L2_31 + 1
    if L2_31 == 8 then
      break
    end
  end
  return
end
Infrastructure_CheckProductSRPEntriesAndRemove = L0_0
function L0_0()
  local L0_37, L1_38, L2_39, L3_40, L4_41, L5_42, L6_43, L7_44
  L0_37 = sysio
  L0_37 = L0_37.RegExpandUserKey
  L0_37 = L0_37(L1_38)
  if L0_37 then
    for L4_41, L5_42 in L1_38(L2_39) do
      L6_43 = sysio
      L6_43 = L6_43.RegOpenKey
      L7_44 = L5_42
      L6_43 = L6_43(L7_44)
      if L6_43 ~= nil then
        L7_44 = sysio
        L7_44 = L7_44.GetRegValueAsString
        L7_44 = L7_44(L6_43, "ProxyServer")
        if L7_44 ~= nil and string.find(string.lower(L7_44), "127.0.0.1", 1, true) ~= nil then
          sysio.DeleteRegValue(L6_43, "ProxyServer")
          L7_44 = sysio.GetRegValueAsString(L6_43, "ProxyEnable")
          if L7_44 ~= nil then
            sysio.SetRegValueAsDword(L6_43, "ProxyEnable", 0)
          end
          L7_44 = sysio.GetRegValueAsString(L6_43, "ProxyOverride")
          if L7_44 ~= nil then
            sysio.SetRegValueAsString(L6_43, "ProxyOverride", "")
          end
        end
      end
    end
  end
end
Infrastructure_RestoreIEProxyToAutoDetect = L0_0
function L0_0()
  local L0_45
  L0_45 = sysio
  L0_45 = L0_45.RegOpenKey
  L0_45 = L0_45("HKCU\\Software\\Policies\\Microsoft\\Internet Explorer\\Control Panel")
  if L0_45 ~= nil and sysio.GetRegValueAsDword(L0_45, "Proxy") ~= nil then
    sysio.SetRegValueAsDword(L0_45, "Proxy", 0)
  end
end
Infrastructure_EnableIEProxySettings = L0_0
function L0_0(A0_46)
  local L1_47, L2_48, L3_49, L4_50, L5_51, L6_52
  L1_47 = {}
  for L5_51, L6_52 in L2_48(L3_49) do
    L6_52 = string.lower(L6_52)
    L1_47[L6_52] = true
  end
  return L1_47
end
LowerSet = L0_0
function L0_0(A0_53)
  local L1_54
  L1_54 = LowerSet
  L1_54 = L1_54(A0_53)
  Infrastructure_IE_RemoveApprovalCLSID(L1_54, "HKCU\\SOFTWARE\\MICROSOFT\\INTERNET EXPLORER\\APPROVED EXTENSIONS")
  Infrastructure_IE_RemoveApprovalCLSID(L1_54, "HKLM\\SOFTWARE\\MICROSOFT\\INTERNET EXPLORER\\APPROVED EXTENSIONS")
  Infrastructure_IE_RemovePolicyCLSID(L1_54, "HKCU\\Software\\Microsoft\\Windows\\CurrentVersion\\Policies\\Ext\\CLSID")
  Infrastructure_IE_RemovePolicyCLSID(L1_54, "HKLM\\Software\\Microsoft\\Windows\\CurrentVersion\\Policies\\Ext\\CLSID")
  Infrastructure_IE_RemoveApprovalCLSID(L1_54, "HKCU\\SOFTWARE\\Microsoft\\Internet Explorer\\ApprovedExtensionsMigration")
  Infrastructure_IE_RemoveApprovalCLSID(L1_54, "HKLM\\SOFTWARE\\Microsoft\\Internet Explorer\\ApprovedExtensionsMigration")
  Infrastructure_IE_RemovePreApprovalCLSID(L1_54, "HKCU\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Ext\\PreApproved")
  Infrastructure_IE_RemovePreApprovalCLSID(L1_54, "HKLM\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Ext\\PreApproved")
end
Infrastructure_IE_DisableExtensions = L0_0
function L0_0(A0_55)
  local L1_56, L2_57, L3_58, L4_59, L5_60, L6_61, L7_62, L8_63, L9_64
  L1_56 = Infrastructure_IE_RemoveApprovalMatchCLSID
  L1_56(L2_57, L3_58)
  L1_56 = sysio
  L1_56 = L1_56.RegExpandUserKey
  L1_56 = L1_56(L2_57)
  if L1_56 then
    for L5_60, L6_61 in L2_57(L3_58) do
      L8_63 = A0_55
      L9_64 = L6_61
      L7_62(L8_63, L9_64)
    end
  end
  L2_57(L3_58, L4_59)
  if L2_57 then
    for L6_61, L7_62 in L3_58(L4_59) do
      L8_63 = Infrastructure_IE_RemovePolicyMatchCLSID
      L9_64 = A0_55
      L8_63(L9_64, L7_62)
    end
  end
  L3_58(L4_59, L5_60)
  if L3_58 then
    for L7_62, L8_63 in L4_59(L5_60) do
      L9_64 = Infrastructure_IE_RemoveApprovalMatchCLSID
      L9_64(A0_55, L8_63)
    end
  end
  L4_59(L5_60, L6_61)
  if L4_59 then
    for L8_63, L9_64 in L5_60(L6_61) do
      Infrastructure_IE_RemovePreApprovalMatchCLSID(A0_55, L9_64)
    end
  end
end
Infrastructure_IE_DisableExtensionsByMatch = L0_0
function L0_0()
  Infrastructure_DisableIEIgnoreApprovalKey("HKCU\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Policies\\Ext")
  Infrastructure_DisableIEIgnoreApprovalKey("HKLM\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Policies\\Ext")
end
Infrastructure_DisableIEIgnoreApproval = L0_0
function L0_0(A0_65)
  local L1_66
  L1_66 = sysio
  L1_66 = L1_66.RegOpenKey
  L1_66 = L1_66(A0_65)
  if L1_66 ~= nil and sysio.GetRegValueAsDword(L1_66, "IgnoreFrameApprovalCheck") ~= nil and sysio.GetRegValueAsDword(L1_66, "IgnoreFrameApprovalCheck") == 1 then
    sysio.SetRegValueAsDword(L1_66, "IgnoreFrameApprovalCheck", 0)
  end
end
Infrastructure_DisableIEIgnoreApprovalKey = L0_0
function L0_0(A0_67, A1_68)
  local L2_69, L3_70, L4_71, L5_72, L6_73, L7_74, L8_75
  L2_69 = sysio
  L2_69 = L2_69.RegOpenKey
  L3_70 = A1_68
  L2_69 = L2_69(L3_70)
  if L2_69 ~= nil then
    L3_70 = sysio
    L3_70 = L3_70.RegEnumValues
    L3_70 = L3_70(L4_71)
    if L3_70 then
      for L7_74, L8_75 in L4_71(L5_72) do
        if A0_67[string.lower(L8_75)] ~= nil then
          sysio.DeleteRegValue(L2_69, L8_75)
        end
      end
    end
  end
end
Infrastructure_IE_RemoveApprovalCLSID = L0_0
function L0_0(A0_76, A1_77)
  local L2_78, L3_79, L4_80, L5_81, L6_82, L7_83, L8_84
  L2_78 = sysio
  L2_78 = L2_78.RegOpenKey
  L3_79 = A1_77
  L2_78 = L2_78(L3_79)
  if L2_78 ~= nil then
    L3_79 = sysio
    L3_79 = L3_79.RegEnumValues
    L3_79 = L3_79(L4_80)
    if L3_79 then
      for L7_83, L8_84 in L4_80(L5_81) do
        if string.match(L8_84, A0_76) then
          sysio.DeleteRegValue(L2_78, L8_84)
        end
      end
    end
  end
end
Infrastructure_IE_RemoveApprovalMatchCLSID = L0_0
function L0_0(A0_85, A1_86)
  local L2_87, L3_88, L4_89, L5_90, L6_91, L7_92, L8_93
  L2_87 = sysio
  L2_87 = L2_87.RegOpenKey
  L3_88 = A1_86
  L2_87 = L2_87(L3_88)
  if L2_87 ~= nil then
    L3_88 = sysio
    L3_88 = L3_88.RegEnumKeys
    L3_88 = L3_88(L4_89)
    if L3_88 then
      for L7_92, L8_93 in L4_89(L5_90) do
        if A0_85[string.lower(L8_93)] ~= nil then
          sysio.DeleteRegKey(L2_87, L8_93)
        end
      end
    end
  end
end
Infrastructure_IE_RemovePreApprovalCLSID = L0_0
function L0_0(A0_94, A1_95)
  local L2_96, L3_97, L4_98, L5_99, L6_100, L7_101, L8_102
  L2_96 = sysio
  L2_96 = L2_96.RegOpenKey
  L3_97 = A1_95
  L2_96 = L2_96(L3_97)
  if L2_96 ~= nil then
    L3_97 = sysio
    L3_97 = L3_97.RegEnumKeys
    L3_97 = L3_97(L4_98)
    if L3_97 then
      for L7_101, L8_102 in L4_98(L5_99) do
        if string.match(L8_102, A0_94) ~= nil then
          sysio.DeleteRegKey(L2_96, L8_102)
        end
      end
    end
  end
end
Infrastructure_IE_RemovePreApprovalMatchCLSID = L0_0
function L0_0(A0_103, A1_104)
  local L2_105, L3_106, L4_107, L5_108, L6_109, L7_110, L8_111
  L2_105 = sysio
  L2_105 = L2_105.RegOpenKey
  L3_106 = A1_104
  L2_105 = L2_105(L3_106)
  if L2_105 ~= nil then
    L3_106 = sysio
    L3_106 = L3_106.RegEnumValues
    L3_106 = L3_106(L4_107)
    if L3_106 then
      for L7_110, L8_111 in L4_107(L5_108) do
        if string.match(L8_111, A0_103) then
          sysio.DeleteRegValue(L2_105, L8_111)
        end
      end
    end
  end
end
Infrastructure_IE_RemovePolicyMatchCLSID = L0_0
function L0_0(A0_112, A1_113)
  local L2_114, L3_115, L4_116, L5_117, L6_118, L7_119, L8_120
  L2_114 = sysio
  L2_114 = L2_114.RegOpenKey
  L3_115 = A1_113
  L2_114 = L2_114(L3_115)
  if L2_114 ~= nil then
    L3_115 = sysio
    L3_115 = L3_115.RegEnumValues
    L3_115 = L3_115(L4_116)
    if L3_115 then
      for L7_119, L8_120 in L4_116(L5_117) do
        if A0_112[string.lower(L8_120)] ~= nil then
          sysio.DeleteRegValue(L2_114, L8_120)
        end
      end
    end
  end
end
Infrastructure_IE_RemovePolicyCLSID = L0_0
function L0_0(A0_121, A1_122, A2_123)
  local L3_124, L4_125, L5_126
  A2_123 = A2_123 or A0_121
  L3_124 = false
  L4_125 = "HKLM\\SYSTEM\\"
  L5_126 = A1_122
  L4_125 = L4_125 .. L5_126 .. "\\services\\" .. A0_121
  L5_126 = sysio
  L5_126 = L5_126.RegOpenKey
  L5_126 = L5_126(L4_125)
  if L5_126 then
    if sysio.GetRegValueAsDword(L5_126, "Start") == 4 or sysio.GetRegValueAsString(L5_126, "DeleteFlag") then
      L3_124 = true
    end
  else
    L3_124 = true
  end
  if L3_124 then
    Remediation.DefaultSpecialRegistry("HKLM\\SYSTEM\\CurrentControlSet\\services\\" .. A2_123, L4_125)
  end
  if L3_124 and sysio.RegOpenKey(L4_125) then
    return true
  else
    return false
  end
end
Infrastructure_RepairServiceAtPath = L0_0
function L0_0()
  if not sysio.RegOpenKey("HKLM\\SOFTWARE\\Microsoft\\Microsoft Antimalware") then
    return false
  end
  return true
end
Infrastructure_CheckMSEpresence = L0_0
function L0_0()
  if not sysio.RegOpenKey("HKLM\\SOFTWARE\\Microsoft\\Windows Defender") then
    return false
  end
  return true
end
Infrastructure_CheckDefenderpresence = L0_0
function L0_0(A0_127)
  local L1_128, L2_129, L3_130, L4_131, L5_132, L6_133
  L1_128 = sysio
  L1_128 = L1_128.ExpandFilePath
  L1_128 = L1_128(L2_129)
  if not L1_128 then
    return L2_129
  end
  for L5_132, L6_133 in L2_129(L3_130) do
    if not string.find(L6_133, A0_127, 1, true) then
      return L6_133
    end
  end
  return L2_129
end
Infrastructure_GetEnvironmentPath = L0_0
function L0_0()
  local L0_134
  L0_134 = sysio
  L0_134 = L0_134.RegOpenKey
  L0_134 = L0_134("HKLM\\Software\\Microsoft\\Windows\\CurrentVersion\\policies\\system")
  if L0_134 then
    sysio.SetRegValueAsDword(L0_134, "EnableLUA", 1)
  end
end
Infrastructure_EnableUAC = L0_0
function L0_0()
  local L0_135
  L0_135 = sysio
  L0_135 = L0_135.RegOpenKey
  L0_135 = L0_135("HKLM\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\SystemRestore")
  if L0_135 then
    sysio.SetRegValueAsDword(L0_135, "DisableSR", 0)
  end
end
Infrastructure_EnableSystemRestore = L0_0
function L0_0()
  local L0_136, L1_137, L2_138, L3_139, L4_140, L5_141, L6_142, L7_143
  L0_136 = sysio
  L0_136 = L0_136.RegOpenKey
  L1_137 = "HKLM\\Software\\Microsoft\\Windows\\CurrentVersion\\Policies\\Explorer"
  L0_136 = L0_136(L1_137)
  if L0_136 then
    L1_137 = sysio
    L1_137 = L1_137.SetRegValueAsDword
    L1_137(L2_138, L3_139, L4_140)
  end
  L1_137 = sysio
  L1_137 = L1_137.RegExpandUserKey
  L1_137 = L1_137(L2_138)
  for L5_141, L6_142 in L2_138(L3_139) do
    L7_143 = sysio
    L7_143 = L7_143.RegOpenKey
    L7_143 = L7_143(L6_142)
    if L7_143 then
      sysio.SetRegValueAsDword(L7_143, "TaskbarNoNotification", 0)
    end
  end
end
Infrastructure_EnableTaskbarNotification = L0_0
function L0_0()
  local L0_144, L1_145, L2_146, L3_147, L4_148, L5_149, L6_150, L7_151
  L0_144 = sysio
  L0_144 = L0_144.RegOpenKey
  L1_145 = "HKLM\\Software\\Microsoft\\Windows\\CurrentVersion\\Policies\\Explorer"
  L0_144 = L0_144(L1_145)
  if L0_144 then
    L1_145 = sysio
    L1_145 = L1_145.SetRegValueAsDword
    L1_145(L2_146, L3_147, L4_148)
  end
  L1_145 = sysio
  L1_145 = L1_145.RegExpandUserKey
  L1_145 = L1_145(L2_146)
  for L5_149, L6_150 in L2_146(L3_147) do
    L7_151 = sysio
    L7_151 = L7_151.RegOpenKey
    L7_151 = L7_151(L6_150)
    if L7_151 then
      sysio.SetRegValueAsDword(L7_151, "HideSCAHealth", 0)
    end
  end
end
Infrastructure_EnableActionCenterMessages = L0_0
function L0_0(A0_152)
  local L1_153, L2_154, L3_155, L4_156, L5_157, L6_158, L7_159, L8_160
  L1_153 = LowerSet
  L2_154 = A0_152
  L1_153 = L1_153(L2_154)
  L2_154 = Infrastructure_CleanUninstallByDisplayNameList_RegPath
  L2_154(L3_155, L4_156)
  L2_154 = Infrastructure_CleanUninstallByDisplayNameList_RegPath
  L2_154(L3_155, L4_156)
  L2_154 = sysio
  L2_154 = L2_154.RegExpandUserKey
  L2_154 = L2_154(L3_155)
  if L2_154 then
    for L6_158, L7_159 in L3_155(L4_156) do
      L8_160 = Infrastructure_CleanUninstallByDisplayNameList_RegPath
      L8_160(L1_153, L7_159)
    end
  end
  if L3_155 then
    for L7_159, L8_160 in L4_156(L5_157) do
      Infrastructure_CleanUninstallByDisplayNameList_RegPath(L1_153, L8_160)
    end
  end
end
Infrastructure_CleanUninstallByDisplayNameList = L0_0
function L0_0(A0_161, A1_162)
  local L2_163, L3_164, L4_165, L5_166, L6_167, L7_168, L8_169
  L2_163 = sysio
  L2_163 = L2_163.RegOpenKey
  L3_164 = A1_162
  L2_163 = L2_163(L3_164)
  if L2_163 ~= nil then
    L3_164 = sysio
    L3_164 = L3_164.RegEnumKeys
    L3_164 = L3_164(L4_165)
    if L3_164 then
      for L7_168, L8_169 in L4_165(L5_166) do
        Infrastructure_CleanUninstallByDisplayNameList_Identifier(A0_161, A1_162 .. "\\" .. L8_169)
      end
    end
  end
end
Infrastructure_CleanUninstallByDisplayNameList_RegPath = L0_0
function L0_0(A0_170, A1_171)
  local L2_172, L3_173
  L2_172 = sysio
  L2_172 = L2_172.RegOpenKey
  L3_173 = A1_171
  L2_172 = L2_172(L3_173)
  if L2_172 ~= nil then
    L3_173 = sysio
    L3_173 = L3_173.GetRegValueAsString
    L3_173 = L3_173(L2_172, "DisplayName")
    if L3_173 ~= nil and A0_170[string.lower(L3_173)] ~= nil then
      sysio.DeleteRegKey(L2_172, nil)
    end
  end
end
Infrastructure_CleanUninstallByDisplayNameList_Identifier = L0_0
function L0_0(A0_174)
  local L1_175, L2_176, L3_177, L4_178, L5_179, L6_180, L7_181
  L1_175 = string
  L1_175 = L1_175.lower
  L1_175 = L1_175(L2_176)
  A0_174 = L1_175
  L1_175 = Infrastructure_CleanUninstallByDisplayName_RegPath
  L1_175(L2_176, L3_177)
  L1_175 = Infrastructure_CleanUninstallByDisplayName_RegPath
  L1_175(L2_176, L3_177)
  L1_175 = sysio
  L1_175 = L1_175.RegExpandUserKey
  L1_175 = L1_175(L2_176)
  if L1_175 then
    for L5_179, L6_180 in L2_176(L3_177) do
      L7_181 = Infrastructure_CleanUninstallByDisplayName_RegPath
      L7_181(A0_174, L6_180)
    end
  end
  if L2_176 then
    for L6_180, L7_181 in L3_177(L4_178) do
      Infrastructure_CleanUninstallByDisplayName_RegPath(A0_174, L7_181)
    end
  end
end
Infrastructure_CleanUninstallByDisplayName = L0_0
function L0_0(A0_182, A1_183)
  local L2_184, L3_185, L4_186, L5_187, L6_188, L7_189, L8_190
  L2_184 = sysio
  L2_184 = L2_184.RegOpenKey
  L3_185 = A1_183
  L2_184 = L2_184(L3_185)
  if L2_184 ~= nil then
    L3_185 = sysio
    L3_185 = L3_185.RegEnumKeys
    L3_185 = L3_185(L4_186)
    if L3_185 then
      for L7_189, L8_190 in L4_186(L5_187) do
        Infrastructure_CleanUninstallByDisplayName_Identifier(A0_182, A1_183 .. "\\" .. L8_190)
      end
    end
  end
end
Infrastructure_CleanUninstallByDisplayName_RegPath = L0_0
function L0_0(A0_191, A1_192)
  local L2_193, L3_194
  L2_193 = sysio
  L2_193 = L2_193.RegOpenKey
  L3_194 = A1_192
  L2_193 = L2_193(L3_194)
  if L2_193 ~= nil then
    L3_194 = sysio
    L3_194 = L3_194.GetRegValueAsString
    L3_194 = L3_194(L2_193, "DisplayName")
    if L3_194 ~= nil and A0_191 == string.lower(L3_194) then
      sysio.DeleteRegKey(L2_193, nil)
    end
  end
end
Infrastructure_CleanUninstallByDisplayName_Identifier = L0_0
function L0_0(A0_195)
  local L1_196, L2_197, L3_198, L4_199, L5_200, L6_201, L7_202, L8_203
  L1_196 = LowerSet
  L2_197 = A0_195
  L1_196 = L1_196(L2_197)
  L2_197 = Infrastructure_CleanSearchByDisplayNameList_RegPath
  L2_197(L3_198, L4_199)
  L2_197 = Infrastructure_CleanSearchByDisplayNameList_RegPath
  L2_197(L3_198, L4_199)
  L2_197 = sysio
  L2_197 = L2_197.RegExpandUserKey
  L2_197 = L2_197(L3_198)
  if L2_197 then
    for L6_201, L7_202 in L3_198(L4_199) do
      L8_203 = Infrastructure_CleanSearchByDisplayNameList_RegPath
      L8_203(L1_196, L7_202)
    end
  end
  if L3_198 then
    for L7_202, L8_203 in L4_199(L5_200) do
      Infrastructure_CleanSearchByDisplayNameList_RegPath(L1_196, L8_203)
    end
  end
end
Infrastructure_CleanSearchByDisplayNameList = L0_0
function L0_0(A0_204, A1_205)
  local L2_206, L3_207, L4_208, L5_209, L6_210, L7_211, L8_212
  L2_206 = sysio
  L2_206 = L2_206.RegOpenKey
  L3_207 = A1_205
  L2_206 = L2_206(L3_207)
  if L2_206 ~= nil then
    L3_207 = sysio
    L3_207 = L3_207.RegEnumKeys
    L3_207 = L3_207(L4_208)
    if L3_207 then
      for L7_211, L8_212 in L4_208(L5_209) do
        Infrastructure_CleanSearchByDisplayNameList_RegPath_SearchScope(A0_204, A1_205 .. "\\" .. L8_212)
      end
    end
  end
end
Infrastructure_CleanSearchByDisplayNameList_RegPath = L0_0
function L0_0(A0_213, A1_214)
  local L2_215, L3_216, L4_217
  L2_215 = sysio
  L2_215 = L2_215.RegOpenKey
  L3_216 = A1_214
  L2_215 = L2_215(L3_216)
  if L2_215 ~= nil then
    L3_216 = sysio
    L3_216 = L3_216.GetRegValueAsString
    L4_217 = L2_215
    L3_216 = L3_216(L4_217, "DisplayName")
    if L3_216 ~= nil then
      L4_217 = string
      L4_217 = L4_217.lower
      L4_217 = L4_217(L3_216)
      L4_217 = A0_213[L4_217]
      if L4_217 ~= nil then
        L4_217 = sysio
        L4_217 = L4_217.DeleteRegKey
        L4_217(L2_215, nil)
      end
    end
    L4_217 = sysio
    L4_217 = L4_217.GetRegValueAsString
    L4_217 = L4_217(L2_215, "")
    if L4_217 ~= nil and A0_213[string.lower(L4_217)] ~= nil then
      sysio.DeleteRegKey(L2_215, nil)
    end
  end
end
Infrastructure_CleanSearchByDisplayNameList_RegPath_SearchScope = L0_0
function L0_0(A0_218)
  local L1_219, L2_220, L3_221, L4_222, L5_223, L6_224, L7_225, L8_226
  L1_219 = string
  L1_219 = L1_219.lower
  L2_220 = A0_218
  L1_219 = L1_219(L2_220)
  L2_220 = Infrastructure_CleanSearchByDisplayName_RegPath
  L2_220(L3_221, L4_222)
  L2_220 = Infrastructure_CleanSearchByDisplayName_RegPath
  L2_220(L3_221, L4_222)
  L2_220 = sysio
  L2_220 = L2_220.RegExpandUserKey
  L2_220 = L2_220(L3_221)
  if L2_220 then
    for L6_224, L7_225 in L3_221(L4_222) do
      L8_226 = Infrastructure_CleanSearchByDisplayName_RegPath
      L8_226(L1_219, L7_225)
    end
  end
  if L3_221 then
    for L7_225, L8_226 in L4_222(L5_223) do
      Infrastructure_CleanSearchByDisplayName_RegPath(L1_219, L8_226)
    end
  end
end
Infrastructure_CleanSearchByDisplayName = L0_0
function L0_0(A0_227, A1_228)
  local L2_229, L3_230, L4_231, L5_232, L6_233, L7_234, L8_235
  L2_229 = sysio
  L2_229 = L2_229.RegOpenKey
  L3_230 = A1_228
  L2_229 = L2_229(L3_230)
  if L2_229 ~= nil then
    L3_230 = sysio
    L3_230 = L3_230.RegEnumKeys
    L3_230 = L3_230(L4_231)
    if L3_230 then
      for L7_234, L8_235 in L4_231(L5_232) do
        Infrastructure_CleanSearchByDisplayName_RegPath_SearchScope(A0_227, A1_228 .. "\\" .. L8_235)
      end
    end
  end
end
Infrastructure_CleanSearchByDisplayName_RegPath = L0_0
function L0_0(A0_236, A1_237)
  local L2_238, L3_239, L4_240
  L2_238 = sysio
  L2_238 = L2_238.RegOpenKey
  L3_239 = A1_237
  L2_238 = L2_238(L3_239)
  if L2_238 ~= nil then
    L3_239 = sysio
    L3_239 = L3_239.GetRegValueAsString
    L4_240 = L2_238
    L3_239 = L3_239(L4_240, "DisplayName")
    if L3_239 ~= nil then
      L4_240 = string
      L4_240 = L4_240.lower
      L4_240 = L4_240(L3_239)
      L3_239 = L4_240
      L4_240 = string
      L4_240 = L4_240.match
      L4_240 = L4_240(L3_239, A0_236)
      if L4_240 ~= nil then
        L4_240 = sysio
        L4_240 = L4_240.DeleteRegKey
        L4_240(L2_238, nil)
      end
    end
    L4_240 = sysio
    L4_240 = L4_240.GetRegValueAsString
    L4_240 = L4_240(L2_238, "")
    if L4_240 ~= nil then
      L4_240 = string.lower(L4_240)
      if string.match(L4_240, A0_236) ~= nil then
        sysio.DeleteRegKey(L2_238, nil)
      end
    end
  end
end
Infrastructure_CleanSearchByDisplayName_RegPath_SearchScope = L0_0
function L0_0(A0_241)
  local L1_242, L2_243, L3_244, L4_245, L5_246, L6_247, L7_248, L8_249
  L1_242 = LowerSet
  L2_243 = A0_241
  L1_242 = L1_242(L2_243)
  L2_243 = Infrastructure_CleanSearchByURLDomainNameList_RegPath
  L2_243(L3_244, L4_245)
  L2_243 = Infrastructure_CleanSearchByURLDomainNameList_RegPath
  L2_243(L3_244, L4_245)
  L2_243 = sysio
  L2_243 = L2_243.RegExpandUserKey
  L2_243 = L2_243(L3_244)
  if L2_243 then
    for L6_247, L7_248 in L3_244(L4_245) do
      L8_249 = Infrastructure_CleanSearchByURLDomainNameList_RegPath
      L8_249(L1_242, L7_248)
    end
  end
  if L3_244 then
    for L7_248, L8_249 in L4_245(L5_246) do
      Infrastructure_CleanSearchByURLDomainNameList_RegPath(L1_242, L8_249)
    end
  end
end
Infrastructure_CleanSearchByURLDomainNameList = L0_0
function L0_0(A0_250, A1_251)
  local L2_252, L3_253, L4_254, L5_255, L6_256, L7_257, L8_258
  L2_252 = sysio
  L2_252 = L2_252.RegOpenKey
  L3_253 = A1_251
  L2_252 = L2_252(L3_253)
  if L2_252 ~= nil then
    L3_253 = sysio
    L3_253 = L3_253.RegEnumKeys
    L3_253 = L3_253(L4_254)
    if L3_253 then
      for L7_257, L8_258 in L4_254(L5_255) do
        Infrastructure_CleanSearchByURLDomainNameList_RegPath_SearchScope(A0_250, A1_251 .. "\\" .. L8_258)
      end
    end
  end
end
Infrastructure_CleanSearchByURLDomainNameList_RegPath = L0_0
function L0_0(A0_259, A1_260)
  local L2_261, L3_262, L4_263, L5_264, L6_265, L7_266, L8_267, L9_268
  L2_261 = sysio
  L2_261 = L2_261.RegOpenKey
  L3_262 = A1_260
  L2_261 = L2_261(L3_262)
  if L2_261 ~= nil then
    L3_262 = sysio
    L3_262 = L3_262.GetRegValueAsString
    L4_263 = L2_261
    L5_264 = "URL"
    L3_262 = L3_262(L4_263, L5_264)
    if L3_262 ~= nil then
      L4_263 = string
      L4_263 = L4_263.lower
      L5_264 = Infrastructure_GetDomainFromURL
      L9_268 = L5_264(L6_265)
      L4_263 = L4_263(L5_264, L6_265, L7_266, L8_267, L9_268, L5_264(L6_265))
      L5_264 = string
      L5_264 = L5_264.len
      L5_264 = L5_264(L6_265)
      for L9_268 in L6_265(L7_266) do
        if L5_264 >= string.len(L9_268) and string.sub(L4_263, L5_264 - string.len(L9_268) + 1) ~= nil and string.sub(L4_263, L5_264 - string.len(L9_268) + 1) == L9_268 then
          sysio.DeleteRegKey(L2_261, nil)
        end
      end
    end
  end
end
Infrastructure_CleanSearchByURLDomainNameList_RegPath_SearchScope = L0_0
function L0_0(A0_269)
  local L1_270, L2_271, L3_272, L4_273, L5_274, L6_275, L7_276, L8_277
  L1_270 = string
  L1_270 = L1_270.lower
  L2_271 = A0_269
  L1_270 = L1_270(L2_271)
  L2_271 = Infrastructure_CleanSearchByURLDomainName_RegPath
  L2_271(L3_272, L4_273)
  L2_271 = Infrastructure_CleanSearchByURLDomainName_RegPath
  L2_271(L3_272, L4_273)
  L2_271 = sysio
  L2_271 = L2_271.RegExpandUserKey
  L2_271 = L2_271(L3_272)
  if L2_271 then
    for L6_275, L7_276 in L3_272(L4_273) do
      L8_277 = Infrastructure_CleanSearchByURLDomainName_RegPath
      L8_277(L1_270, L7_276)
    end
  end
  if L3_272 then
    for L7_276, L8_277 in L4_273(L5_274) do
      Infrastructure_CleanSearchByURLDomainName_RegPath(L1_270, L8_277)
    end
  end
end
Infrastructure_CleanSearchByURLDomainName = L0_0
function L0_0(A0_278, A1_279)
  local L2_280, L3_281, L4_282, L5_283, L6_284, L7_285, L8_286
  L2_280 = sysio
  L2_280 = L2_280.RegOpenKey
  L3_281 = A1_279
  L2_280 = L2_280(L3_281)
  if L2_280 ~= nil then
    L3_281 = sysio
    L3_281 = L3_281.RegEnumKeys
    L3_281 = L3_281(L4_282)
    if L3_281 then
      for L7_285, L8_286 in L4_282(L5_283) do
        Infrastructure_CleanSearchByURLDomainName_RegPath_SearchScope(A0_278, A1_279 .. "\\" .. L8_286)
      end
    end
  end
end
Infrastructure_CleanSearchByURLDomainName_RegPath = L0_0
function L0_0(A0_287, A1_288)
  local L2_289, L3_290, L4_291
  L2_289 = sysio
  L2_289 = L2_289.RegOpenKey
  L3_290 = A1_288
  L2_289 = L2_289(L3_290)
  if L2_289 ~= nil then
    L3_290 = sysio
    L3_290 = L3_290.GetRegValueAsString
    L4_291 = L2_289
    L3_290 = L3_290(L4_291, "URL")
    if L3_290 ~= nil then
      L4_291 = string
      L4_291 = L4_291.lower
      L4_291 = L4_291(Infrastructure_GetDomainFromURL(L3_290))
      if string.len(L4_291) >= string.len(A0_287) and string.sub(L4_291, string.len(L4_291) - string.len(A0_287) + 1) ~= nil and A0_287 == string.sub(L4_291, string.len(L4_291) - string.len(A0_287) + 1) then
        sysio.DeleteRegKey(L2_289, nil)
      end
    end
  end
end
Infrastructure_CleanSearchByURLDomainName_RegPath_SearchScope = L0_0
function L0_0(A0_292)
  local L1_293
  if A0_292 == nil then
    return
  end
  L1_293 = A0_292
  if string.find(L1_293, "//", 1, true) ~= nil and string.find(L1_293, "//", 1, true) > 2 and string.find(L1_293, "//", 1, true) < string.len(L1_293) then
    L1_293 = string.sub(L1_293, string.find(L1_293, "//", 1, true) + 1)
  end
  if string.find(L1_293, "/", 1, true) ~= nil and 1 < string.find(L1_293, "/", 1, true) then
    L1_293 = string.sub(L1_293, 1, string.find(L1_293, "/", 1, true) - 1)
  end
  return L1_293
end
Infrastructure_GetDomainFromURL = L0_0
function L0_0(A0_294)
  local L1_295, L2_296, L3_297, L4_298, L5_299, L6_300, L7_301, L8_302
  L1_295 = LowerSet
  L2_296 = A0_294
  L1_295 = L1_295(L2_296)
  L2_296 = Infrastructure_CleanToolbarByNameList_RegPath
  L2_296(L3_297, L4_298)
  L2_296 = Infrastructure_CleanToolbarByNameList_RegPath
  L2_296(L3_297, L4_298)
  L2_296 = sysio
  L2_296 = L2_296.RegExpandUserKey
  L2_296 = L2_296(L3_297)
  if L2_296 then
    for L6_300, L7_301 in L3_297(L4_298) do
      L8_302 = Infrastructure_CleanToolbarByName_RegPath
      L8_302(L1_295, L7_301)
    end
  end
  if L3_297 then
    for L7_301, L8_302 in L4_298(L5_299) do
      Infrastructure_CleanToolbarByName_RegPath(L1_295, L8_302)
    end
  end
end
Infrastructure_CleanToolbarByNameList = L0_0
function L0_0(A0_303, A1_304)
  local L2_305, L3_306, L4_307, L5_308, L6_309, L7_310, L8_311, L9_312
  L2_305 = sysio
  L2_305 = L2_305.RegOpenKey
  L3_306 = A1_304
  L2_305 = L2_305(L3_306)
  if L2_305 ~= nil then
    L3_306 = sysio
    L3_306 = L3_306.RegEnumValues
    L3_306 = L3_306(L4_307)
    if L3_306 then
      for L7_310, L8_311 in L4_307(L5_308) do
        L9_312 = sysio
        L9_312 = L9_312.GetRegValueAsString
        L9_312 = L9_312(L2_305, L8_311)
        if L9_312 ~= nil and A0_303[string.lower(L9_312)] ~= nil then
          sysio.DeleteRegValue(L2_305, L8_311)
          Infrastructure_RemoveClsid(L8_311)
          Infrastructure_IE_DisableExtensionsByMatch(L8_311)
        end
      end
    end
  end
end
Infrastructure_CleanToolbarByNameList_RegPath = L0_0
function L0_0(A0_313)
  local L1_314, L2_315, L3_316, L4_317, L5_318, L6_319, L7_320
  L1_314 = string
  L1_314 = L1_314.lower
  L1_314 = L1_314(L2_315)
  A0_313 = L1_314
  L1_314 = Infrastructure_CleanToolbarByName_RegPath
  L1_314(L2_315, L3_316)
  L1_314 = Infrastructure_CleanToolbarByName_RegPath
  L1_314(L2_315, L3_316)
  L1_314 = sysio
  L1_314 = L1_314.RegExpandUserKey
  L1_314 = L1_314(L2_315)
  if L1_314 then
    for L5_318, L6_319 in L2_315(L3_316) do
      L7_320 = Infrastructure_CleanToolbarByName_RegPath
      L7_320(A0_313, L6_319)
    end
  end
  if L2_315 then
    for L6_319, L7_320 in L3_316(L4_317) do
      Infrastructure_CleanToolbarByName_RegPath(A0_313, L7_320)
    end
  end
end
Infrastructure_CleanToolbarByName = L0_0
function L0_0(A0_321, A1_322)
  local L2_323, L3_324, L4_325, L5_326, L6_327, L7_328, L8_329, L9_330
  L2_323 = sysio
  L2_323 = L2_323.RegOpenKey
  L3_324 = A1_322
  L2_323 = L2_323(L3_324)
  if L2_323 ~= nil then
    L3_324 = sysio
    L3_324 = L3_324.RegEnumValues
    L3_324 = L3_324(L4_325)
    if L3_324 then
      for L7_328, L8_329 in L4_325(L5_326) do
        L9_330 = sysio
        L9_330 = L9_330.GetRegValueAsString
        L9_330 = L9_330(L2_323, L8_329)
        if L9_330 ~= nil then
          L9_330 = string.lower(L9_330)
          if string.find(L9_330, A0_321, 1, true) ~= nil then
            sysio.DeleteRegValue(L2_323, L8_329)
            Infrastructure_RemoveClsid(L8_329)
            Infrastructure_IE_DisableExtensionsByMatch(L8_329)
          end
        end
      end
    end
  end
end
Infrastructure_CleanToolbarByName_RegPath = L0_0
function L0_0(A0_331)
  local L1_332, L2_333, L3_334, L4_335, L5_336, L6_337, L7_338, L8_339
  L1_332 = LowerSet
  L2_333 = A0_331
  L1_332 = L1_332(L2_333)
  L2_333 = Infrastructure_CleanBHOByNameList_RegPath
  L2_333(L3_334, L4_335)
  L2_333 = Infrastructure_CleanBHOByNameList_RegPath
  L2_333(L3_334, L4_335)
  L2_333 = sysio
  L2_333 = L2_333.RegExpandUserKey
  L2_333 = L2_333(L3_334)
  if L2_333 then
    for L6_337, L7_338 in L3_334(L4_335) do
      L8_339 = Infrastructure_CleanBHOByNameList_RegPath
      L8_339(L1_332, L7_338)
    end
  end
  if L3_334 then
    for L7_338, L8_339 in L4_335(L5_336) do
      Infrastructure_CleanBHOByNameList_RegPath(L1_332, L8_339)
    end
  end
end
Infrastructure_CleanBHOByNameList = L0_0
function L0_0(A0_340, A1_341)
  local L2_342, L3_343, L4_344, L5_345, L6_346, L7_347, L8_348
  L2_342 = sysio
  L2_342 = L2_342.RegOpenKey
  L3_343 = A1_341
  L2_342 = L2_342(L3_343)
  if L2_342 ~= nil then
    L3_343 = sysio
    L3_343 = L3_343.RegEnumKeys
    L3_343 = L3_343(L4_344)
    if L3_343 then
      for L7_347, L8_348 in L4_344(L5_345) do
        Infrastructure_CleanBHOByNameList_RegPath_Clsid(A0_340, A1_341, L8_348)
      end
    end
  end
end
Infrastructure_CleanBHOByNameList_RegPath = L0_0
function L0_0(A0_349, A1_350, A2_351)
  local L3_352, L4_353
  L3_352 = sysio
  L3_352 = L3_352.RegOpenKey
  L4_353 = A1_350
  L4_353 = L4_353 .. "\\" .. A2_351
  L3_352 = L3_352(L4_353)
  if L3_352 ~= nil then
    L4_353 = sysio
    L4_353 = L4_353.GetRegValueAsString
    L4_353 = L4_353(L3_352, nil)
    if L4_353 ~= nil and A0_349[string.lower(L4_353)] ~= nil then
      sysio.DeleteRegKey(L3_352, nil)
      Infrastructure_IE_DisableExtensionsByMatch(A2_351)
      Infrastructure_RemoveClsid(A2_351)
    end
  end
end
Infrastructure_CleanBHOByNameList_RegPath_Clsid = L0_0
function L0_0(A0_354)
  local L1_355, L2_356, L3_357, L4_358, L5_359, L6_360, L7_361
  L1_355 = string
  L1_355 = L1_355.lower
  L1_355 = L1_355(L2_356)
  A0_354 = L1_355
  L1_355 = Infrastructure_CleanBHOByName_RegPath
  L1_355(L2_356, L3_357)
  L1_355 = Infrastructure_CleanBHOByName_RegPath
  L1_355(L2_356, L3_357)
  L1_355 = sysio
  L1_355 = L1_355.RegExpandUserKey
  L1_355 = L1_355(L2_356)
  if L1_355 then
    for L5_359, L6_360 in L2_356(L3_357) do
      L7_361 = Infrastructure_CleanBHOByName_RegPath
      L7_361(A0_354, L6_360)
    end
  end
  if L2_356 then
    for L6_360, L7_361 in L3_357(L4_358) do
      Infrastructure_CleanBHOByName_RegPath(A0_354, L7_361)
    end
  end
end
Infrastructure_CleanBHOByName = L0_0
function L0_0(A0_362, A1_363)
  local L2_364, L3_365, L4_366, L5_367, L6_368, L7_369, L8_370
  L2_364 = sysio
  L2_364 = L2_364.RegOpenKey
  L3_365 = A1_363
  L2_364 = L2_364(L3_365)
  if L2_364 ~= nil then
    L3_365 = sysio
    L3_365 = L3_365.RegEnumKeys
    L3_365 = L3_365(L4_366)
    if L3_365 then
      for L7_369, L8_370 in L4_366(L5_367) do
        Infrastructure_CleanBHOByName_RegPath_Clsid(A0_362, A1_363, L8_370)
      end
    end
  end
end
Infrastructure_CleanBHOByName_RegPath = L0_0
function L0_0(A0_371, A1_372, A2_373)
  local L3_374, L4_375
  L3_374 = sysio
  L3_374 = L3_374.RegOpenKey
  L4_375 = A1_372
  L4_375 = L4_375 .. "\\" .. A2_373
  L3_374 = L3_374(L4_375)
  if L3_374 ~= nil then
    L4_375 = sysio
    L4_375 = L4_375.GetRegValueAsString
    L4_375 = L4_375(L3_374, nil)
    if L4_375 ~= nil and A0_371 == string.lower(L4_375) then
      sysio.DeleteRegKey(L3_374, nil)
      Infrastructure_IE_DisableExtensionsByMatch(A2_373)
      Infrastructure_RemoveClsid(A2_373)
    end
  end
end
Infrastructure_CleanBHOByName_RegPath_Clsid = L0_0
function L0_0(A0_376)
  local L1_377, L2_378, L3_379, L4_380, L5_381, L6_382, L7_383
  L1_377 = string
  L1_377 = L1_377.len
  L1_377 = L1_377(L2_378)
  if L1_377 == 38 then
    L1_377 = Infrastructure_RemoveClsid_RegPath
    L1_377(L2_378, L3_379)
    L1_377 = Infrastructure_RemoveClsid_RegPath
    L1_377(L2_378, L3_379)
    L1_377 = sysio
    L1_377 = L1_377.RegExpandUserKey
    L1_377 = L1_377(L2_378)
    if L1_377 then
      for L5_381, L6_382 in L2_378(L3_379) do
        L7_383 = Infrastructure_RemoveClsid_RegPath
        L7_383(A0_376, L6_382)
      end
    end
    if L2_378 then
      for L6_382, L7_383 in L3_379(L4_380) do
        Infrastructure_RemoveClsid_RegPath(A0_376, L7_383)
      end
    end
  end
end
Infrastructure_RemoveClsid = L0_0
function L0_0(A0_384, A1_385)
  Infrastructure_DeleteRegKey_Recursive(A1_385 .. "\\" .. A0_384)
end
Infrastructure_RemoveClsid_RegPath = L0_0
function L0_0(A0_386)
  local L1_387, L2_388, L3_389, L4_390, L5_391, L6_392, L7_393
  L1_387 = sysio
  L1_387 = L1_387.RegOpenKey
  L2_388 = A0_386
  L1_387 = L1_387(L2_388)
  if L1_387 then
    L2_388 = sysio
    L2_388 = L2_388.RegEnumKeys
    L2_388 = L2_388(L3_389)
    if L2_388 then
      for L6_392, L7_393 in L3_389(L4_390) do
        Infrastructure_DeleteRegKey_Recursive(A0_386 .. "\\" .. L7_393)
      end
    end
    L3_389(L4_390, L5_391)
  end
end
Infrastructure_DeleteRegKey_Recursive = L0_0
function L0_0()
  local L0_394
  L0_394 = sysio
  L0_394 = L0_394.RegOpenKey
  L0_394 = L0_394("HKLM\\Software\\Microsoft\\Windows\\CurrentVersion\\policies\\system")
  if L0_394 then
    sysio.SetRegValueAsDword(L0_394, "ConsentPromptBehaviorAdmin", 5)
  end
end
Infrastructure_ConsentPromptBehaviorAdmin = L0_0
function L0_0()
  local L0_395
  L0_395 = sysio
  L0_395 = L0_395.RegOpenKey
  L0_395 = L0_395("HKLM\\Software\\Microsoft\\Windows\\CurrentVersion\\policies\\system")
  if L0_395 then
    sysio.SetRegValueAsDword(L0_395, "ConsentPromptBehaviorUser", 3)
  end
end
Infrastructure_ConsentPromptBehaviorUser = L0_0
function L0_0()
  local L0_396
  L0_396 = sysio
  L0_396 = L0_396.RegOpenKey
  L0_396 = L0_396("HKLM\\Software\\Microsoft\\Windows\\CurrentVersion\\policies\\system")
  if L0_396 then
    sysio.SetRegValueAsDword(L0_396, "EnableInstallerDetection", 1)
  end
end
Infrastructure_EnableInstallerDetection = L0_0
function L0_0()
  local L0_397
  L0_397 = sysio
  L0_397 = L0_397.RegOpenKey
  L0_397 = L0_397("HKLM\\Software\\Microsoft\\Windows\\CurrentVersion\\policies\\system")
  if L0_397 then
    sysio.SetRegValueAsDword(L0_397, "EnableSecureUIAPaths", 1)
  end
end
Infrastructure_EnableSecureUIAPaths = L0_0
function L0_0()
  local L0_398
  L0_398 = sysio
  L0_398 = L0_398.RegOpenKey
  L0_398 = L0_398("HKLM\\Software\\Microsoft\\Windows\\CurrentVersion\\policies\\system")
  if L0_398 then
    sysio.SetRegValueAsDword(L0_398, "EnableVirtualization", 1)
  end
end
Infrastructure_EnableVirtualization = L0_0
function L0_0()
  local L0_399
  L0_399 = sysio
  L0_399 = L0_399.RegOpenKey
  L0_399 = L0_399("HKLM\\Software\\Microsoft\\Windows\\CurrentVersion\\policies\\system")
  if L0_399 then
    sysio.SetRegValueAsDword(L0_399, "PromptOnSecureDesktop", 1)
  end
end
Infrastructure_PromptOnSecureDesktop = L0_0
function L0_0()
  local L0_400
  L0_400 = sysio
  L0_400 = L0_400.RegOpenKey
  L0_400 = L0_400("HKLM\\Software\\Microsoft\\Windows\\CurrentVersion\\policies\\system")
  if L0_400 then
    sysio.SetRegValueAsDword(L0_400, "ValidateAdminCodeSignatures", 0)
  end
end
Infrastructure_ValidateAdminCodeSignatures = L0_0
function L0_0()
  local L0_401
  L0_401 = sysio
  L0_401 = L0_401.RegOpenKey
  L0_401 = L0_401("HKLM\\Software\\Microsoft\\Windows\\CurrentVersion\\policies\\system")
  if L0_401 then
    sysio.SetRegValueAsDword(L0_401, "FilterAdministratorToken", 0)
  end
end
Infrastructure_FilterAdministratorToken = L0_0
function L0_0()
  local L0_402, L1_403, L2_404, L3_405, L4_406, L5_407, L6_408
  L0_402 = sysio
  L0_402 = L0_402.RegExpandUserKey
  L0_402 = L0_402(L1_403)
  for L4_406, L5_407 in L1_403(L2_404) do
    L6_408 = sysio
    L6_408 = L6_408.RegOpenKey
    L6_408 = L6_408(L5_407)
    if L6_408 then
      sysio.DeleteRegValue(L6_408, "NoDriveTypeAutoRun")
    end
  end
  L2_404(L3_405)
end
Infrastructure_NoDriveTypeAutoRun = L0_0
function L0_0()
  local L0_409, L1_410, L2_411, L3_412, L4_413, L5_414, L6_415
  L0_409 = sysio
  L0_409 = L0_409.RegExpandUserKey
  L0_409 = L0_409(L1_410)
  for L4_413, L5_414 in L1_410(L2_411) do
    L6_415 = sysio
    L6_415 = L6_415.RegOpenKey
    L6_415 = L6_415(L5_414)
    if L6_415 then
      sysio.DeleteRegValue(L6_415, "DisableRegistryTools")
    end
  end
  L2_411(L3_412)
end
Infrastructure_EnableRegistryTools = L0_0
function L0_0()
  local L0_416
  L0_416 = sysio
  L0_416 = L0_416.RegOpenKey
  L0_416 = L0_416("HKLM\\Software\\Microsoft\\Windows\\CurrentVersion\\policies\\system")
  if L0_416 then
    sysio.DeleteRegValue(L0_416, "EnableLinkedConnections")
  end
end
Infrastructure_RemoveLinkedConnectionsRegKey = L0_0
function L0_0()
  local L0_417, L1_418, L2_419, L3_420, L4_421, L5_422, L6_423, L7_424
  L0_417 = sysio
  L0_417 = L0_417.RegOpenKey
  L1_418 = "HKLM\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Image File Execution Options\\taskmgr.exe"
  L0_417 = L0_417(L1_418)
  if L0_417 then
    L1_418 = sysio
    L1_418 = L1_418.DeleteRegValue
    L1_418(L2_419, L3_420)
  end
  L1_418 = sysio
  L1_418 = L1_418.RegExpandUserKey
  L1_418 = L1_418(L2_419)
  for L5_422, L6_423 in L2_419(L3_420) do
    L7_424 = sysio
    L7_424 = L7_424.RegOpenKey
    L7_424 = L7_424(L6_423)
    if L7_424 then
      sysio.DeleteRegValue(L7_424, "DisableTaskMgr")
    end
  end
  L2_419(L3_420)
end
Infrastructure_EnableTaskManager = L0_0
function L0_0(A0_425)
  local L1_426
  L1_426 = string
  L1_426 = L1_426.len
  L1_426 = L1_426(A0_425)
  if L1_426 == 38 then
    L1_426 = sysio
    L1_426 = L1_426.RegOpenKey
    L1_426 = L1_426("HKCR\\CLSID\\" .. A0_425 .. "\\InprocServer32")
    if L1_426 then
      return (sysio.GetRegValueAsString(L1_426, ""))
    end
  end
end
Infrastructure_GetFilePathFromGUID = L0_0
function L0_0(A0_427, A1_428)
  local L2_429
  if A0_427 ~= nil and A1_428 ~= nil then
    L2_429 = sysio
    L2_429 = L2_429.RegOpenKey
    L2_429 = L2_429("HKLM\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\" .. A0_427)
    if L2_429 then
      return (sysio.GetRegValueAsString(L2_429, A1_428))
    end
  end
end
Infrastructure_GetUninstallStrFromKey = L0_0
function L0_0(A0_430)
  local L1_431, L2_432, L3_433, L4_434, L5_435, L6_436, L7_437
  L1_431 = sysio
  L1_431 = L1_431.RegOpenKey
  L2_432 = "HKLM\\Software\\Microsoft\\Windows\\CurrentVersion\\Policies\\Ext\\CLSID"
  L1_431 = L1_431(L2_432)
  if L1_431 ~= nil then
    L2_432 = sysio
    L2_432 = L2_432.RegEnumValues
    L2_432 = L2_432(L3_433)
    if L2_432 then
      for L6_436, L7_437 in L3_433(L4_434) do
        if string.match(L7_437, A0_430) then
          return L7_437
        end
      end
    end
  end
end
Infrastructure_IE_GetExtPolicyGUIDfromMatch = L0_0
function L0_0(A0_438)
  local L1_439, L2_440, L3_441, L4_442, L5_443, L6_444
  if A0_438 == nil then
    return
  end
  L1_439 = string
  L1_439 = L1_439.gsub
  L3_441 = A0_438
  L2_440 = A0_438.lower
  L2_440 = L2_440(L3_441)
  L3_441 = "->.*"
  L4_442 = ""
  L1_439 = L1_439(L2_440, L3_441, L4_442)
  L2_440 = string
  L2_440 = L2_440.match
  L3_441 = L1_439
  L4_442 = "(.*\\)(.*)"
  L3_441 = L2_440(L3_441, L4_442)
  L4_442, L5_443, L6_444 = nil, nil, nil
  if L2_440 then
    L2_440 = L2_440:gsub("^\\\\%?\\", "")
    L4_442 = string.match(L2_440, "([^\\]+)\\$")
  end
  if L3_441 then
    L5_443, L6_444 = string.match(L3_441, "(.*)%.(.*)$")
    if L5_443 == nil then
      L5_443 = L3_441
    else
      L5_443 = L5_443 .. "." .. L6_444
    end
  end
  return L2_440, L4_442, L5_443, L6_444
end
Infrastructure_SplitThreatPath = L0_0
function L0_0()
  local L0_445, L1_446, L2_447, L3_448, L4_449, L5_450, L6_451, L7_452, L8_453, L9_454, L10_455
  L0_445 = sysio
  L0_445 = L0_445.GetLogicalDrivesMask
  L0_445 = L0_445()
  L1_446 = {}
  L2_447 = {}
  L3_448 = {}
  L4_449 = {}
  L5_450 = 65
  for L9_454 = 2, 32 do
    L10_455 = crypto
    L10_455 = L10_455.bitand
    L10_455 = L10_455(crypto.shr32(L0_445, L9_454), 1)
    if L10_455 == 1 then
      L10_455 = string
      L10_455 = L10_455.format
      L10_455 = L10_455("%c:\\", L5_450 + L9_454)
      if sysio.GetLogicalDriveType(L9_454) == 2 then
        table.insert(L2_447, L10_455)
      elseif sysio.GetLogicalDriveType(L9_454) == 3 then
        table.insert(L3_448, L10_455)
      elseif sysio.GetLogicalDriveType(L9_454) == 4 then
        table.insert(L4_449, L10_455)
      end
      table.insert(L1_446, L10_455)
    end
  end
  L9_454 = L4_449
  return L6_451, L7_452, L8_453, L9_454
end
Infrastructure_GetAvailableDrives = L0_0
function L0_0()
  local L0_456, L1_457, L2_458, L3_459, L4_460, L5_461, L6_462, L7_463
  L0_456 = sysio
  L0_456 = L0_456.RegOpenKey
  L1_457 = "HKLM\\SYSTEM\\CurrentControlSet\\services\\Tcpip\\Parameters"
  L0_456 = L0_456(L1_457)
  if L0_456 then
    L1_457 = sysio
    L1_457 = L1_457.GetRegValueAsString
    L2_458 = L0_456
    L1_457 = L1_457(L2_458, L3_459)
    if L1_457 then
      L2_458 = sysio
      L2_458 = L2_458.SetRegValueAsString
      L2_458(L3_459, L4_460, L5_461)
    end
    L2_458 = sysio
    L2_458 = L2_458.GetRegValueAsString
    L2_458 = L2_458(L3_459, L4_460)
    if L2_458 then
      L6_462 = ""
      L3_459(L4_460, L5_461, L6_462)
    end
  end
  L1_457 = sysio
  L1_457 = L1_457.RegOpenKey
  L2_458 = "HKLM\\SYSTEM\\CurrentControlSet\\services\\Tcpip\\Parameters\\Interfaces"
  L1_457 = L1_457(L2_458)
  if L1_457 then
    L2_458 = sysio
    L2_458 = L2_458.RegEnumKeys
    L2_458 = L2_458(L3_459)
    if L2_458 then
      for L6_462, L7_463 in L3_459(L4_460) do
        Infrastructure_ClearDNSTcpipInterface("HKLM\\SYSTEM\\CurrentControlSet\\services\\Tcpip\\Parameters\\Interfaces\\" .. L7_463)
      end
    end
  end
end
Infrastructure_ClearALLDNS = L0_0
function L0_0(A0_464)
  local L1_465, L2_466
  L1_465 = sysio
  L1_465 = L1_465.RegOpenKey
  L2_466 = A0_464
  L1_465 = L1_465(L2_466)
  if L1_465 then
    L2_466 = sysio
    L2_466 = L2_466.GetRegValueAsString
    L2_466 = L2_466(L1_465, "NameServer")
    if L2_466 then
      sysio.SetRegValueAsString(L1_465, "NameServer", "")
    end
    L2_466 = sysio.GetRegValueAsString(L1_465, "DhcpNameServer")
    if L2_466 then
      sysio.SetRegValueAsString(L1_465, "DhcpNameServer", "")
    end
  end
end
Infrastructure_ClearDNSTcpipInterface = L0_0
function L0_0(A0_467)
  local L1_468, L2_469
  if A0_467 then
    L1_468 = string
    L1_468 = L1_468.match
    L2_469 = A0_467
    L1_468 = L1_468(L2_469, ":\\.*\\")
    if L1_468 then
      L2_469 = 210
      if MpCommon.NidSearch(L2_469, crypto.CRC32Buffer(-1, string.lower(L1_468), 0, string.len(L1_468))) == false and MpCommon.NidSearch(L2_469, crypto.CRC32Buffer(-1, string.lower(L1_468), 0, string.len(L1_468))) ~= "#CleanFolder" then
        return A0_467
      end
    end
  end
  L1_468 = nil
  return L1_468
end
Infrastructure_NotSystemFolder = L0_0
function L0_0(A0_470)
  local L1_471, L2_472
  if A0_470 then
    L1_471 = string
    L1_471 = L1_471.gsub
    L2_472 = string
    L2_472 = L2_472.lower
    L2_472 = L2_472(A0_470)
    L1_471 = L1_471(L2_472, "^%a:\\users\\[^\\]+", "")
    if L1_471 and L1_471 ~= "\\" then
      L2_472 = 210
      if MpCommon.NidSearch(L2_472, crypto.CRC32Buffer(-1, string.lower(L1_471), 0, string.len(L1_471))) == false and MpCommon.NidSearch(L2_472, crypto.CRC32Buffer(-1, string.lower(L1_471), 0, string.len(L1_471))) ~= "#CleanFolder" then
        return A0_470
      end
    end
  end
  L1_471 = nil
  return L1_471
end
Infrastructure_NotUserSystemFolder = L0_0
function L0_0(A0_473)
  if A0_473 then
    A0_473 = string.lower(A0_473)
    if string.find(A0_473, ":\\program files", 1, true) or string.find(A0_473, ":\\programdata", 1, true) or string.find(A0_473, ":\\users\\[^\\]+\\appdata\\", 1, false) then
      return true
    end
  end
  return false
end
Infrastructure_ValidUwSFolderForRemediation = L0_0
function L0_0()
  local L0_474, L1_475, L2_476, L3_477, L4_478, L5_479
  L0_474 = MpDetection
  L0_474 = L0_474.GetCurrentThreat
  L0_474 = L0_474()
  if L0_474 == nil or L0_474 == "" then
    return
  end
  L1_475 = nil
  for L5_479, _FORV_6_ in L2_476(L3_477) do
    if _FORV_6_.Schema == "file" or _FORV_6_.Schema == "process" then
      L1_475, L5_479, L5_479, L5_479 = Infrastructure_SplitThreatPath(_FORV_6_.Path)
      if L1_475 and sysio.IsFolderExists(L1_475) then
        MpDetection.ScanResource("folder://" .. L1_475)
      end
    end
  end
end
Infrastructure_CurrentThreatResourceScanFolder = L0_0
function L0_0(A0_480, A1_481, A2_482)
  local L3_483, L4_484, L5_485, L6_486, L7_487, L8_488, L9_489, L10_490, L11_491, L12_492, L13_493, L14_494, L15_495
  if A0_480 == nil or A1_481 == nil or A2_482 ~= true and A2_482 ~= false then
    L3_483 = false
    return L3_483
  end
  L3_483 = Infrastructure_SplitThreatPath
  L4_484 = A1_481
  L5_485 = L3_483(L4_484)
  if L3_483 then
    L7_487 = L3_483
    L6_486 = L3_483.gsub
    L8_488 = "^\\\\%?\\"
    L9_489 = ""
    L6_486 = L6_486(L7_487, L8_488, L9_489)
    if L6_486 then
      L7_487 = Infrastructure_NotSystemFolder
      L8_488 = L6_486
      L7_487 = L7_487(L8_488)
      L8_488 = Infrastructure_NotUserSystemFolder
      L9_489 = L6_486
      L8_488 = L8_488(L9_489)
      if L7_487 and L8_488 then
        if A2_482 == true then
          L9_489 = Infrastructure_ValidUwSFolderForRemediation
          L9_489 = L9_489(L10_490)
          if L9_489 == false then
            L9_489 = false
            return L9_489
          end
        end
        L9_489 = sysio
        L9_489 = L9_489.FindFiles
        L9_489 = L9_489(L10_490, L11_491, L12_492)
        for L13_493, L14_494 in L10_490(L11_491) do
          L15_495 = MpDetection
          L15_495 = L15_495.ReportResource
          L15_495("file", L14_494, A0_480, false)
        end
        L14_494 = false
        L10_490(L11_491, L12_492, L13_493, L14_494)
        for L14_494, L15_495 in L11_491(L12_492) do
          MpDetection.ReportResource("folder", L15_495, A0_480, false)
        end
      end
    end
  end
end
Infrastructure_DetectionReportFolder = L0_0
function L0_0(A0_496)
  local L1_497, L2_498, L3_499, L4_500, L5_501, L6_502, L7_503, L8_504, L9_505, L10_506, L11_507, L12_508, L13_509, L14_510, L15_511, L16_512, L17_513
  if A0_496 then
    L1_497 = {L2_498, L3_499}
    L2_498 = "HKLM\\Software\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\"
    L3_499 = "HKLM\\Software\\Wow6432Node\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\"
    L2_498 = sysio
    L2_498 = L2_498.RegExpandUserKey
    L3_499 = "HKCU\\Software\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\"
    L2_498 = L2_498(L3_499)
    L3_499 = sysio
    L3_499 = L3_499.RegExpandUserKey
    L3_499 = L3_499(L4_500)
    for L7_503, L8_504 in L4_500(L5_501) do
      L9_505 = table
      L9_505 = L9_505.insert
      L10_506 = L1_497
      L9_505(L10_506, L11_507)
    end
    for L7_503, L8_504 in L4_500(L5_501) do
      L9_505 = table
      L9_505 = L9_505.insert
      L10_506 = L1_497
      L9_505(L10_506, L11_507)
    end
    for L7_503, L8_504 in L4_500(L5_501) do
      L9_505 = sysio
      L9_505 = L9_505.RegOpenKey
      L10_506 = L8_504
      L9_505 = L9_505(L10_506)
      if L9_505 then
        L10_506 = sysio
        L10_506 = L10_506.RegEnumKeys
        L10_506 = L10_506(L11_507)
        if L10_506 then
          for L14_510, L15_511 in L11_507(L12_508) do
            L16_512 = sysio
            L16_512 = L16_512.RegOpenKey
            L17_513 = L8_504
            L17_513 = L17_513 .. L15_511
            L16_512 = L16_512(L17_513)
            if L16_512 then
              L17_513 = sysio
              L17_513 = L17_513.GetRegValueAsString
              L17_513 = L17_513(L16_512, "InstallLocation")
              if L17_513 and string.lower(L17_513) == string.lower(A0_496) then
                sysio.DeleteRegKey(L16_512, nil)
                return true
              end
            end
          end
        end
      end
    end
  end
end
Infrastructure_CleanRegistryUninstallLocation = L0_0
function L0_0(A0_514, A1_515)
  local L2_516, L3_517, L4_518, L5_519, L6_520, L7_521, L8_522, L9_523, L10_524, L11_525, L12_526, L13_527, L14_528, L15_529, L16_530, L17_531, L18_532, L19_533, L20_534, L21_535, L22_536
  if A0_514 == nil or A1_515 == nil then
    L2_516 = false
    return L2_516
  end
  L2_516 = Infrastructure_SplitThreatPath
  L3_517 = A1_515
  L4_518 = L2_516(L3_517)
  if L4_518 == nil then
    L5_519 = false
    return L5_519
  end
  if L2_516 then
    L5_519 = {L6_520, L7_521}
    L6_520 = "HKLM\\Software\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\"
    L7_521 = "HKLM\\Software\\Wow6432Node\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\"
    L6_520 = sysio
    L6_520 = L6_520.RegExpandUserKey
    L7_521 = "HKCU\\Software\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\"
    L6_520 = L6_520(L7_521)
    L7_521 = sysio
    L7_521 = L7_521.RegExpandUserKey
    L7_521 = L7_521(L8_522)
    for L11_525, L12_526 in L8_522(L9_523) do
      L13_527 = table
      L13_527 = L13_527.insert
      L14_528 = L5_519
      L13_527(L14_528, L15_529)
    end
    for L11_525, L12_526 in L8_522(L9_523) do
      L13_527 = table
      L13_527 = L13_527.insert
      L14_528 = L5_519
      L13_527(L14_528, L15_529)
    end
    for L11_525, L12_526 in L8_522(L9_523) do
      L13_527 = sysio
      L13_527 = L13_527.RegOpenKey
      L14_528 = L12_526
      L13_527 = L13_527(L14_528)
      if L13_527 then
        L14_528 = sysio
        L14_528 = L14_528.RegEnumKeys
        L14_528 = L14_528(L15_529)
        if L14_528 then
          for L18_532, L19_533 in L15_529(L16_530) do
            L20_534 = sysio
            L20_534 = L20_534.RegOpenKey
            L21_535 = L12_526
            L22_536 = L19_533
            L21_535 = L21_535 .. L22_536
            L20_534 = L20_534(L21_535)
            if L20_534 then
              L21_535 = sysio
              L21_535 = L21_535.GetRegValueAsString
              L22_536 = L20_534
              L21_535 = L21_535(L22_536, "UninstallString")
              if L21_535 then
                L22_536 = Infrastructure_SplitThreatPath
                L22_536 = L22_536(L21_535:gsub("\"", ""))
                if L22_536 and string.lower(L22_536) == string.lower(L2_516) then
                  MpDetection.ReportResource("regkey", L12_526 .. L19_533, A0_514, false)
                  return true
                end
              end
            end
          end
        end
      end
    end
  end
end
Infrastructure_DetectionReportUninstallEntriesFromFolder = L0_0
function L0_0(A0_537, A1_538)
  local L2_539
  L2_539 = sysio
  L2_539 = L2_539.RegOpenKey
  L2_539 = L2_539(A0_537)
  if L2_539 then
    return sysio.GetRegValueAsString(L2_539, A1_538)
  end
  return nil
end
Infrastructure_GetRegValueAsString = L0_0
function L0_0(A0_540, A1_541)
  if A0_540 == nil or A1_541 == nil then
    return
  end
  if sysio.RegOpenKey(A1_541) then
    MpDetection.ReportResource("regkey", A1_541, A0_540, false)
  end
end
Infrastructure_ReportRegistryKey = L0_0
function L0_0(A0_542, A1_543, A2_544)
  local L3_545, L4_546, L5_547, L6_548, L7_549, L8_550, L9_551
  if A0_542 == nil or A1_543 == nil or A2_544 == nil then
    return
  end
  L3_545 = sysio
  L3_545 = L3_545.RegOpenKey
  L4_546 = A1_543
  L3_545 = L3_545(L4_546)
  if L3_545 then
    L4_546 = sysio
    L4_546 = L4_546.RegEnumValues
    L4_546 = L4_546(L5_547)
    for L8_550, L9_551 in L5_547(L6_548) do
      if string.lower(L9_551) == string.lower(A2_544) then
        MpDetection.ReportResource("regkeyvalue", A1_543 .. "\\\\" .. A2_544, A0_542, false)
      end
    end
  end
end
Infrastructure_ReportRegistryValue = L0_0
function L0_0(A0_552, A1_553, A2_554)
  local L3_555, L4_556, L5_557, L6_558, L7_559, L8_560, L9_561, L10_562, L11_563, L12_564, L13_565, L14_566, L15_567
  if A0_552 == nil or A1_553 == nil or A2_554 == nil then
    L3_555 = false
    return L3_555
  end
  L3_555 = type
  L4_556 = A2_554
  L3_555 = L3_555(L4_556)
  if L3_555 ~= "table" then
    L3_555 = false
    return L3_555
  end
  L3_555 = sysio
  L3_555 = L3_555.RegOpenKey
  L4_556 = A1_553
  L3_555 = L3_555(L4_556)
  if L3_555 then
    L4_556 = sysio
    L4_556 = L4_556.RegEnumValues
    L4_556 = L4_556(L5_557)
    if L4_556 then
      for L8_560, L9_561 in L5_557(L6_558) do
        L10_562 = string
        L10_562 = L10_562.lower
        L10_562 = L10_562(L11_563)
        for L14_566, L15_567 in L11_563(L12_564) do
          if L10_562 == string.lower(L15_567) then
            MpDetection.ReportResource("regkeyvalue", A1_553 .. "\\\\" .. L9_561, A0_552, false)
            return true
          end
        end
      end
    end
  end
end
Infrastructure_ReportFirstRegistryValue = L0_0
function L0_0(A0_568, A1_569, A2_570, A3_571)
  local L4_572, L5_573, L6_574, L7_575, L8_576, L9_577, L10_578, L11_579, L12_580, L13_581, L14_582, L15_583, L16_584, L17_585
  if A0_568 == nil or A1_569 == nil or A2_570 == nil or A3_571 == nil then
    L4_572 = false
    return L4_572
  end
  L4_572 = type
  L5_573 = A2_570
  L4_572 = L4_572(L5_573)
  if L4_572 == "table" then
    L4_572 = type
    L5_573 = A3_571
    L4_572 = L4_572(L5_573)
  elseif L4_572 ~= "table" then
    L4_572 = false
    return L4_572
  end
  L4_572 = sysio
  L4_572 = L4_572.RegOpenKey
  L5_573 = A1_569
  L4_572 = L4_572(L5_573)
  if L4_572 then
    L5_573 = sysio
    L5_573 = L5_573.RegEnumValues
    L5_573 = L5_573(L6_574)
    if L5_573 then
      for L9_577, L10_578 in L6_574(L7_575) do
        L11_579 = string
        L11_579 = L11_579.lower
        L11_579 = L11_579(L12_580)
        for L15_583, L16_584 in L12_580(L13_581) do
          L17_585 = string
          L17_585 = L17_585.lower
          L17_585 = L17_585(L16_584)
          if L11_579 == L17_585 then
            L17_585 = sysio
            L17_585 = L17_585.GetRegValueAsDword
            L17_585 = L17_585(L4_572, L16_584)
            if type(L17_585) == "number" then
              for _FORV_21_, _FORV_22_ in pairs(A3_571) do
                if L17_585 == _FORV_22_ then
                  MpDetection.ReportResource("regkeyvalue", A1_569 .. "\\\\" .. L10_578, A0_568, false)
                  return true
                end
              end
            end
          end
        end
      end
    end
  end
end
Infrastructure_ReportFirstRegistryValueIfValueArrMatch = L0_0
function L0_0(A0_586, A1_587, A2_588)
  local L3_589, L4_590, L5_591, L6_592, L7_593, L8_594, L9_595, L10_596, L11_597, L12_598, L13_599, L14_600, L15_601, L16_602
  if A0_586 == nil or A1_587 == nil or A2_588 == nil then
    L3_589 = false
    return L3_589
  end
  L3_589 = type
  L4_590 = A2_588
  L3_589 = L3_589(L4_590)
  if L3_589 ~= "table" then
    L3_589 = false
    return L3_589
  end
  L3_589 = sysio
  L3_589 = L3_589.RegOpenKey
  L4_590 = A1_587
  L3_589 = L3_589(L4_590)
  if L3_589 then
    L4_590 = sysio
    L4_590 = L4_590.RegEnumValues
    L4_590 = L4_590(L5_591)
    if L4_590 then
      for L8_594, L9_595 in L5_591(L6_592) do
        L10_596 = string
        L10_596 = L10_596.lower
        L10_596 = L10_596(L11_597)
        for L14_600, L15_601 in L11_597(L12_598) do
          L16_602 = type
          L16_602 = L16_602(L14_600)
          if L16_602 == "string" then
            L16_602 = type
            L16_602 = L16_602(L15_601)
            if L16_602 == "number" then
              L16_602 = string
              L16_602 = L16_602.lower
              L16_602 = L16_602(L14_600)
              if L10_596 == L16_602 then
                L16_602 = sysio
                L16_602 = L16_602.GetRegValueAsDword
                L16_602 = L16_602(L3_589, L14_600)
                if type(L16_602) == type(L15_601) and L16_602 ~= L15_601 then
                  MpDetection.ReportResource("regkeyvalue", A1_587 .. "\\\\" .. L9_595, A0_586, false)
                  return true
                end
              end
            end
          end
        end
      end
    end
  end
end
Infrastructure_ReportFirstRegistryValueCheckDefaultDW = L0_0
function L0_0(A0_603, A1_604)
  local L2_605, L3_606, L4_607, L5_608, L6_609, L7_610, L8_611
  if A0_603 == nil or A1_604 == nil then
    L2_605 = false
    return L2_605
  end
  L2_605 = sysio
  L2_605 = L2_605.RegOpenKey
  L3_606 = A1_604
  L2_605 = L2_605(L3_606)
  if L2_605 then
    L3_606 = sysio
    L3_606 = L3_606.RegEnumValues
    L3_606 = L3_606(L4_607)
    if L3_606 then
      for L7_610, L8_611 in L4_607(L5_608) do
        MpDetection.ReportResource("regkeyvalue", A1_604 .. "\\\\" .. L8_611, A0_603, false)
        return true
      end
    end
  end
end
Infrastructure_ReportAnyRegistryValue = L0_0
function L0_0(A0_612, A1_613, A2_614, A3_615)
  local L4_616, L5_617
  L4_616 = sysio
  L4_616 = L4_616.RegOpenKey
  L5_617 = A1_613
  L4_616 = L4_616(L5_617)
  if L4_616 then
    L5_617 = sysio
    L5_617 = L5_617.GetRegValueAsString
    L5_617 = L5_617(L4_616, A2_614)
    if L5_617 ~= nil and string.lower(L5_617) == string.lower(A3_615) then
      Infrastructure_ReportRegistryKey(A0_612, A1_613)
      return true
    end
  end
  L5_617 = false
  return L5_617
end
Infrastructure_ReportRegistryKeyByValueData = L0_0
function L0_0(A0_618, A1_619)
  local L2_620, L3_621, L4_622, L5_623, L6_624, L7_625
  if A0_618 == nil or A1_619 == nil then
    return
  end
  L2_620 = Infrastructure_ReportRegistryKey
  L2_620(L3_621, L4_622)
  L2_620 = Infrastructure_ReportRegistryKey
  L2_620(L3_621, L4_622)
  L2_620 = sysio
  L2_620 = L2_620.RegExpandUserKey
  L2_620 = L2_620(L3_621)
  if L2_620 then
    for L6_624, L7_625 in L3_621(L4_622) do
      Infrastructure_ReportRegistryKey(A0_618, L7_625)
    end
  end
end
Infrastructure_ReportSoftwareRegistryByKey = L0_0
function L0_0(A0_626, A1_627)
  Infrastructure_ReportRegistryKey(A0_626, "HKLM\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\" .. A1_627)
  Infrastructure_ReportRegistryKey(A0_626, "HKLM\\SOFTWARE\\Wow6432Node\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\" .. A1_627)
end
Infrastructure_ReportUninstallRegistryByKey = L0_0
function L0_0(A0_628, A1_629, A2_630)
  local L3_631
  L3_631 = Infrastructure_GetRegValueAsString
  L3_631 = L3_631(A1_629 .. "\\CLSID\\" .. A2_630 .. "\\TypeLib", "")
  if L3_631 ~= nil then
    if string.len(L3_631) == 38 and string.match(L3_631, "{%x%x%x%x%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%x%x%x%x%x%x%x%x}") then
      Infrastructure_ReportRegistryKey(A0_628, A1_629 .. "\\TypeLib\\" .. L3_631)
    end
    Infrastructure_ReportRegistryKey(A0_628, A1_629 .. "\\CLSID\\" .. A2_630)
  end
end
Infrastructure_Report_Clsid_And_TypeLib = L0_0
function L0_0(A0_632, A1_633)
  if A1_633 ~= nil and string.len(A1_633) == 38 and string.match(A1_633, "{%x%x%x%x%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%x%x%x%x%x%x%x%x}") then
    Infrastructure_Report_Clsid_And_TypeLib(A0_632, "HKLM\\SOFTWARE\\Classes", A1_633)
    Infrastructure_Report_Clsid_And_TypeLib(A0_632, "HKLM\\SOFTWARE\\Wow6432Node\\Classes", A1_633)
    Infrastructure_ReportRegistryKey(A0_632, "HKCR\\CLSID\\" .. A1_633)
  end
end
Infrastructure_ReportCLSID = L0_0
function L0_0(A0_634, A1_635)
  local L2_636, L3_637, L4_638, L5_639, L6_640, L7_641, L8_642, L9_643, L10_644
  if A1_635 == nil then
    return
  end
  L2_636 = Infrastructure_ReportRegistryValue
  L2_636(L3_637, L4_638, L5_639)
  L2_636 = sysio
  L2_636 = L2_636.RegExpandUserKey
  L2_636 = L2_636(L3_637)
  if L2_636 then
    for L6_640, L7_641 in L3_637(L4_638) do
      L9_643 = A0_634
      L10_644 = L7_641
      L8_642(L9_643, L10_644, A1_635)
    end
  end
  L3_637(L4_638, L5_639, L6_640)
  if L3_637 then
    for L7_641, L8_642 in L4_638(L5_639) do
      L9_643 = Infrastructure_ReportRegistryValue
      L10_644 = A0_634
      L9_643(L10_644, L8_642, A1_635)
    end
  end
  L4_638(L5_639, L6_640)
  if L4_638 then
    for L8_642, L9_643 in L5_639(L6_640) do
      L10_644 = Infrastructure_ReportRegistryKey
      L10_644(A0_634, L9_643)
    end
  end
  L5_639(L6_640, L7_641)
  if L5_639 then
    for L9_643, L10_644 in L6_640(L7_641) do
      Infrastructure_ReportRegistryKey(A0_634, L10_644)
    end
  end
end
Infrastructure_ReportIEExtensionsByClsid = L0_0
function L0_0(A0_645, A1_646, A2_647)
  local L3_648, L4_649, L5_650, L6_651, L7_652, L8_653, L9_654
  L3_648 = sysio
  L3_648 = L3_648.RegOpenKey
  L4_649 = A2_647
  L3_648 = L3_648(L4_649)
  if L3_648 then
    L4_649 = sysio
    L4_649 = L4_649.RegEnumKeys
    L4_649 = L4_649(L5_650)
    if L4_649 then
      for L8_653, L9_654 in L5_650(L6_651) do
        if Infrastructure_ReportRegistryKeyByValueData(A0_645, A2_647 .. "\\" .. L9_654, "", A1_646) then
          Infrastructure_ReportCLSID(A0_645, L9_654)
          Infrastructure_ReportIEExtensionsByClsid(A0_645, L9_654)
        end
      end
    end
  end
end
Infrastructure_ReportBHOByName_RegPath = L0_0
function L0_0(A0_655, A1_656)
  local L2_657, L3_658, L4_659, L5_660, L6_661, L7_662, L8_663
  L2_657 = Infrastructure_ReportBHOByName_RegPath
  L2_657(L3_658, L4_659, L5_660)
  L2_657 = Infrastructure_ReportBHOByName_RegPath
  L2_657(L3_658, L4_659, L5_660)
  L2_657 = sysio
  L2_657 = L2_657.RegExpandUserKey
  L2_657 = L2_657(L3_658)
  if L2_657 then
    for L6_661, L7_662 in L3_658(L4_659) do
      L8_663 = Infrastructure_ReportBHOByName_RegPath
      L8_663(A0_655, A1_656, L7_662)
    end
  end
  if L3_658 then
    for L7_662, L8_663 in L4_659(L5_660) do
      Infrastructure_ReportBHOByName_RegPath(A0_655, A1_656, L8_663)
    end
  end
end
Infrastructure_ReportBHOByName = L0_0
function L0_0(A0_664, A1_665)
  local L2_666, L3_667, L4_668, L5_669, L6_670, L7_671, L8_672
  if A1_665 ~= nil and A0_664 ~= nil then
    L2_666 = string
    L2_666 = L2_666.len
    L2_666 = L2_666(L3_667)
    if L2_666 == 38 then
      L2_666 = string
      L2_666 = L2_666.match
      L2_666 = L2_666(L3_667, L4_668)
      if L2_666 then
        L2_666 = Infrastructure_ReportRegistryKey
        L2_666(L3_667, L4_668)
        L2_666 = Infrastructure_ReportRegistryKey
        L2_666(L3_667, L4_668)
        L2_666 = sysio
        L2_666 = L2_666.RegExpandUserKey
        L2_666 = L2_666(L3_667)
        if L2_666 then
          for L6_670, L7_671 in L3_667(L4_668) do
            L8_672 = Infrastructure_ReportRegistryKey
            L8_672(A0_664, L7_671)
          end
        end
        if L3_667 then
          for L7_671, L8_672 in L4_668(L5_669) do
            Infrastructure_ReportRegistryKey(A0_664, L8_672)
          end
        end
      end
    end
  end
end
Infrastructure_DetectionReportBHOByCLSID = L0_0
function L0_0(A0_673, A1_674)
  local L2_675, L3_676, L4_677, L5_678, L6_679, L7_680, L8_681
  if A1_674 ~= nil and A0_673 ~= nil then
    L2_675 = Infrastructure_ReportRegistryKey
    L2_675(L3_676, L4_677)
    L2_675 = Infrastructure_ReportRegistryKey
    L2_675(L3_676, L4_677)
    L2_675 = sysio
    L2_675 = L2_675.RegExpandUserKey
    L2_675 = L2_675(L3_676)
    if L2_675 then
      for L6_679, L7_680 in L3_676(L4_677) do
        L8_681 = Infrastructure_ReportRegistryKey
        L8_681(A0_673, L7_680)
      end
    end
    if L3_676 then
      for L7_680, L8_681 in L4_677(L5_678) do
        Infrastructure_ReportRegistryKey(A0_673, L8_681)
      end
    end
  end
end
Infrastructure_DetectionReportUninstallRegKey = L0_0
function L0_0()
  local L0_682, L1_683, L2_684, L3_685
  L0_682 = "%SystemRoot%\\Tasks"
  L1_683 = "%SystemRoot%\\System32\\Tasks"
  L2_684 = MpDetection
  L2_684 = L2_684.ScanResource
  L3_685 = "specialfolder://norecursive:taskscheduler:"
  L3_685 = L3_685 .. L0_682
  L2_684(L3_685)
  L2_684 = MpDetection
  L2_684 = L2_684.ScanResource
  L3_685 = "specialfolder://recursive:taskscheduler:"
  L3_685 = L3_685 .. L1_683
  L2_684(L3_685)
  L2_684 = sysio
  L2_684 = L2_684.RegOpenKey
  L3_685 = "HKLM\\SOFTWARE\\Microsoft\\SchedulingAgent"
  L2_684 = L2_684(L3_685)
  if not L2_684 then
    L3_685 = false
    return L3_685
  end
  L3_685 = sysio
  L3_685 = L3_685.GetRegValueAsString
  L3_685 = L3_685(L2_684, "TasksFolder")
  if L3_685 and L3_685 ~= L0_682 and L3_685 ~= L1_683 then
    if Info.OSMajorVersion < 6 then
      MpDetection.ScanResource("specialfolder://norecursive:taskscheduler:" .. L3_685)
    else
      MpDetection.ScanResource("specialfolder://recursive:taskscheduler:" .. L3_685)
    end
  end
end
Infrastructure_ScanTaskschedulerResources = L0_0
function L0_0(A0_686)
  local L1_687, L2_688, L3_689, L4_690, L5_691, L6_692, L7_693, L8_694, L9_695, L10_696
  L1_687 = {}
  if A0_686 then
    L2_688 = sysio
    L2_688 = L2_688.RegExpandUserKey
    L3_689 = "HKCU\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Explorer\\Shell Folders"
    L2_688 = L2_688(L3_689)
    L3_689 = {}
    if L2_688 then
      for L7_693, L8_694 in L4_690(L5_691) do
        L9_695 = sysio
        L9_695 = L9_695.RegOpenKey
        L10_696 = L8_694
        L9_695 = L9_695(L10_696)
        if L9_695 then
          L10_696 = sysio
          L10_696 = L10_696.GetRegValueAsString
          L10_696 = L10_696(L9_695, A0_686)
          if L10_696 and not L3_689[L10_696] then
            table.insert(L1_687, L10_696)
            L3_689[L10_696] = true
          end
        end
      end
    end
  end
  return L1_687
end
Infrastructure_HKCUExpandSpecialPath = L0_0
function L0_0()
  local L0_697, L1_698, L2_699, L3_700, L4_701, L5_702
  L0_697 = Info
  L0_697 = L0_697.OSMajorVersion
  if L0_697 ~= nil then
    L0_697 = Info
    L0_697 = L0_697.OSMinorVersion
  elseif L0_697 == nil then
    L0_697 = false
    return L0_697
  end
  L0_697 = MpCommon
  L0_697 = L0_697.ExpandEnvironmentVariables
  L1_698 = "%windir%"
  L0_697 = L0_697(L1_698)
  L1_698 = L0_697
  L2_699 = "\\System32\\drivers\\etc\\hosts"
  L1_698 = L1_698 .. L2_699
  L2_699 = "# Copyright (c) 1993-2006 Microsoft Corp."
  L3_700 = "\r\n"
  L4_701 = "#"
  L5_702 = "\r\n"
  L2_699 = L2_699 .. L3_700 .. L4_701 .. L5_702 .. "# This is a sample HOSTS file used by Microsoft TCP/IP for Windows." .. "\r\n" .. "#" .. "\r\n" .. "# This file contains the mappings of IP addresses to host names. Each" .. "\r\n" .. "# entry should be kept on an individual line. The IP address should" .. "\r\n" .. "# be placed in the first column followed by the corresponding host name." .. "\r\n" .. "# The IP address and the host name should be separated by at least one" .. "\r\n" .. "# space." .. "\r\n" .. "#" .. "\r\n" .. "# Additionally, comments (such as these) may be inserted on individual" .. "\r\n" .. "# lines or following the machine name denoted by a '#' symbol." .. "\r\n" .. "#" .. "\r\n" .. "# For example:" .. "\r\n" .. "#" .. "\r\n" .. "#      102.54.94.97     rhino.acme.com          # source server" .. "\r\n" .. "#       38.25.63.10     x.acme.com              # x client host" .. "\r\n" .. "# localhost name resolution is handle within DNS itself." .. "\r\n" .. "#       127.0.0.1       localhost" .. "\r\n" .. "#       ::1             localhost" .. "\r\n"
  L3_700 = "# Copyright (c) 1993-2006 Microsoft Corp."
  L4_701 = "\r\n"
  L5_702 = "#"
  L3_700 = L3_700 .. L4_701 .. L5_702 .. "\r\n" .. "# This is a sample HOSTS file used by Microsoft TCP/IP for Windows." .. "\r\n" .. "#" .. "\r\n" .. "# This file contains the mappings of IP addresses to host names. Each" .. "\r\n" .. "# entry should be kept on an individual line. The IP address should" .. "\r\n" .. "# be placed in the first column followed by the corresponding host name." .. "\r\n" .. "# The IP address and the host name should be separated by at least one" .. "\r\n" .. "# space." .. "\r\n" .. "#" .. "\r\n" .. "# Additionally, comments (such as these) may be inserted on individual" .. "\r\n" .. "# lines or following the machine name denoted by a '#' symbol." .. "\r\n" .. "#" .. "\r\n" .. "# For example:" .. "\r\n" .. "#" .. "\r\n" .. "#      102.54.94.97     rhino.acme.com          # source server" .. "\r\n" .. "#       38.25.63.10     x.acme.com              # x client host" .. "\r\n" .. "" .. "\r\n" .. "# localhost name resolution is handle within DNS itself." .. "\r\n" .. "#       127.0.0.1       localhost" .. "\r\n" .. "#       ::1             localhost" .. "\r\n"
  L4_701 = "# Copyright (c) 1993-2006 Microsoft Corp."
  L5_702 = "\r\n"
  L4_701 = L4_701 .. L5_702 .. "#" .. "\r\n" .. "# This is a sample HOSTS file used by Microsoft TCP/IP for Windows." .. "\r\n" .. "#" .. "\r\n" .. "# This file contains the mappings of IP addresses to host names. Each" .. "\r\n" .. "# entry should be kept on an individual line. The IP address should" .. "\r\n" .. "# be placed in the first column followed by the corresponding host name." .. "\r\n" .. "# The IP address and the host name should be separated by at least one" .. "\r\n" .. "# space." .. "\r\n" .. "#" .. "\r\n" .. "# Additionally, comments (such as these) may be inserted on individual" .. "\r\n" .. "# lines or following the machine name denoted by a '#' symbol." .. "\r\n" .. "#" .. "\r\n" .. "# For example:" .. "\r\n" .. "#" .. "\r\n" .. "#      102.54.94.97     rhino.acme.com          # source server" .. "\r\n" .. "#       38.25.63.10     x.acme.com              # x client host" .. "\r\n" .. "" .. "\r\n" .. "127.0.0.1       localhost" .. "\r\n" .. "::1             localhost" .. "\r\n"
  L5_702 = "# Copyright (c) 1993-1999 Microsoft Corp."
  L5_702 = L5_702 .. "\r\n" .. "#" .. "\r\n" .. "# This is a sample HOSTS file used by Microsoft TCP/IP for Windows." .. "\r\n" .. "#" .. "\r\n" .. "# This file contains the mappings of IP addresses to host names. Each" .. "\r\n" .. "# entry should be kept on an individual line. The IP address should" .. "\r\n" .. "# be placed in the first column followed by the corresponding host name." .. "\r\n" .. "# The IP address and the host name should be separated by at least one" .. "\r\n" .. "# space." .. "\r\n" .. "#" .. "\r\n" .. "# Additionally, comments (such as these) may be inserted on individual" .. "\r\n" .. "# lines or following the machine name denoted by a '#' symbol." .. "\r\n" .. "#" .. "\r\n" .. "# For example:" .. "\r\n" .. "#" .. "\r\n" .. "#      102.54.94.97     rhino.acme.com          # source server" .. "\r\n" .. "#       38.25.63.10     x.acme.com              # x client host" .. "\r\n" .. "" .. "\r\n" .. "127.0.0.1       localhost" .. "\r\n"
  if sysio.IsFileExists(L1_698) == false then
    return false
  end
  if sysio.GetFileSize(L1_698) == nil then
    return false
  end
  if Info.OSMajorVersion < 6 then
    while sysio.GetFileSize(L1_698) > string.len(L5_702) do
      L5_702 = L5_702 .. "\r\n"
    end
    if sysio.WriteFile(L1_698, 0, L5_702) ~= string.len(L5_702) then
      return false
    else
      return true
    end
  end
  if Info.OSMajorVersion == 6 and Info.OSMinorVersion == 0 then
    while sysio.GetFileSize(L1_698) > string.len(L4_701) do
      L4_701 = L4_701 .. "\r\n"
    end
    if sysio.WriteFile(L1_698, 0, L4_701) ~= string.len(L4_701) then
      return false
    else
      return true
    end
  end
  if Info.OSMajorVersion == 6 and Info.OSMinorVersion == 1 then
    while sysio.GetFileSize(L1_698) > string.len(L3_700) do
      L3_700 = L3_700 .. "\r\n"
    end
    if sysio.WriteFile(L1_698, 0, L3_700) ~= string.len(L3_700) then
      return false
    else
      return true
    end
  end
  if Info.OSMajorVersion == 6 and Info.OSMinorVersion == 2 or Info.OSMajorVersion > 6 then
    while sysio.GetFileSize(L1_698) > string.len(L2_699) do
      L2_699 = L2_699 .. "\r\n"
    end
    if sysio.WriteFile(L1_698, 0, L2_699) ~= string.len(L2_699) then
      return false
    else
      return true
    end
  end
  return false
end
Infrastructure_FixHostsFile = L0_0
function L0_0(A0_703, A1_704)
  local L2_705, L3_706, L4_707, L5_708, L6_709, L7_710, L8_711, L9_712, L10_713, L11_714, L12_715, L13_716, L14_717, L15_718, L16_719
  if A0_703 == nil or A1_704 == nil then
    L2_705 = false
    return L2_705
  end
  L2_705 = {L3_706, L4_707}
  for L6_709, L7_710 in L3_706(L4_707) do
    L8_711 = sysio
    L8_711 = L8_711.RegOpenKey
    L9_712 = L7_710
    L8_711 = L8_711(L9_712)
    if L8_711 then
      L9_712 = sysio
      L9_712 = L9_712.RegEnumKeys
      L9_712 = L9_712(L10_713)
      if L9_712 then
        for L13_716, L14_717 in L10_713(L11_714) do
          if L14_717 == A1_704 then
            L15_718 = MpDetection
            L15_718 = L15_718.ReportResource
            L16_719 = "regkey"
            L15_718(L16_719, L7_710 .. L14_717, A0_703, false)
            L15_718 = sysio
            L15_718 = L15_718.RegOpenKey
            L16_719 = L7_710
            L16_719 = L16_719 .. L14_717
            L15_718 = L15_718(L16_719)
            if L15_718 then
              L16_719 = sysio
              L16_719 = L16_719.GetRegValueAsString
              L16_719 = L16_719(L15_718, "AppId")
              if L16_719 then
                MpDetection.ReportResource("regkey", L7_710 .. L16_719, A0_703, false)
              end
            end
          end
        end
      end
    end
  end
end
Infrastructure_ReportRegistryAppId = L0_0
function L0_0(A0_720, A1_721, A2_722, A3_723)
  local L4_724, L5_725
  if A0_720 == nil or A2_722 == A1_721 or A3_723 ~= true and A3_723 ~= false then
    return
  end
  L4_724 = sysio
  L4_724 = L4_724.RegOpenKey
  L5_725 = A0_720
  L4_724 = L4_724(L5_725)
  if L4_724 then
    L5_725 = sysio
    L5_725 = L5_725.GetRegValueAsString
    L5_725 = L5_725(L4_724, A2_722)
    if L5_725 ~= nil then
      sysio.SetRegValueAsString(L4_724, A1_721, L5_725)
      if A3_723 == true then
        sysio.DeleteRegValue(L4_724, A2_722)
      end
    end
  end
end
Infrastructure_RestoreRegValueDataFromAnotherRegValueAsString = L0_0
function L0_0(A0_726, A1_727)
  if A0_726 == nil or A1_727 == nil then
    return
  end
  Infrastructure_ReportRegistryValue(A0_726, "HKLM\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Image File Execution Options\\" .. A1_727, "Debugger")
  Infrastructure_ReportRegistryValue(A0_726, "HKLM\\SOFTWARE\\Wow6432Node\\Microsoft\\Windows NT\\CurrentVersion\\Image File Execution Options\\" .. A1_727, "Debugger")
end
Infrastructure_ReportImageFileDebugger = L0_0
function L0_0()
  Infrastructure_CleanBrowserShellOpenCommandParameter_SearchString("HKLM\\SOFTWARE\\Clients\\StartMenuInternet\\IEXPLORE.EXE\\shell\\open\\command", "\\Internet Explorer\\iexplore.exe")
  Infrastructure_CleanBrowserShellOpenCommandParameter_SearchString("HKLM\\SOFTWARE\\Wow6432Node\\Clients\\StartMenuInternet\\IEXPLORE.EXE\\shell\\open\\command", "\\Internet Explorer\\iexplore.exe")
end
Infrastructure_CleanBrowserShellOpenCommandParameter = L0_0
function L0_0(A0_728, A1_729)
  local L2_730, L3_731, L4_732, L5_733
  if A0_728 == nil or A1_729 == nil then
    return
  end
  L2_730 = sysio
  L2_730 = L2_730.RegOpenKey
  L3_731 = A0_728
  L2_730 = L2_730(L3_731)
  if L2_730 ~= nil then
    L3_731 = sysio
    L3_731 = L3_731.GetRegValueAsString
    L4_732 = L2_730
    L5_733 = ""
    L3_731 = L3_731(L4_732, L5_733)
    if L3_731 ~= nil then
      L4_732 = string
      L4_732 = L4_732.find
      L5_733 = string
      L5_733 = L5_733.lower
      L5_733 = L5_733(L3_731)
      L5_733 = L4_732(L5_733, string.lower(A1_729), 1, true)
      if L4_732 ~= nil and L5_733 ~= nil and L5_733 < string.len(L3_731) then
        sysio.SetRegValueAsString(L2_730, "", string.sub(L3_731, 1, L5_733))
      end
    end
  end
end
Infrastructure_CleanBrowserShellOpenCommandParameter_SearchString = L0_0
function L0_0(A0_734)
  if A0_734 == nil then
    return
  end
  Infrastructure_CleanImageFileDebugger_Regkey("HKLM\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Image File Execution Options\\" .. A0_734)
  Infrastructure_CleanImageFileDebugger_Regkey("HKLM\\SOFTWARE\\Wow6432Node\\Microsoft\\Windows NT\\CurrentVersion\\Image File Execution Options\\" .. A0_734)
end
Infrastructure_CleanImageFileDebugger = L0_0
function L0_0(A0_735)
  local L1_736
  if A0_735 == nil then
    return
  end
  L1_736 = sysio
  L1_736 = L1_736.RegOpenKey
  L1_736 = L1_736(A0_735)
  if L1_736 then
    sysio.DeleteRegValue(L1_736, "Debugger")
  end
end
Infrastructure_CleanImageFileDebugger_Regkey = L0_0
function L0_0(A0_737, A1_738)
  local L2_739, L3_740, L4_741, L5_742, L6_743, L7_744, L8_745
  if A1_738 == nil then
    return
  end
  L2_739 = sysio
  L2_739 = L2_739.RegOpenKey
  L3_740 = A1_738
  L2_739 = L2_739(L3_740)
  if L2_739 then
    L3_740 = sysio
    L3_740 = L3_740.RegEnumValues
    L3_740 = L3_740(L4_741)
    for L7_744, L8_745 in L4_741(L5_742) do
      MpDetection.ReportResource("regkeyvalue", A1_738 .. "\\\\" .. L8_745, A0_737, false)
    end
  end
end
Infrastructure_ReportAll_RegistryValueFromRegistryKey = L0_0
function L0_0(A0_746)
  Infrastructure_ReportAll_RegistryValueFromRegistryKey(A0_746, "HKLM\\SOFTWARE\\Policies\\Microsoft\\Windows Defender\\Exclusions\\Paths")
  Infrastructure_ReportAll_RegistryValueFromRegistryKey(A0_746, "HKLM\\SOFTWARE\\Policies\\Microsoft\\Microsoft Antimalware\\Exclusions\\Paths")
end
Infrastructure_ReportProductExcludedPathsInGroupPolicy = L0_0
function L0_0(A0_747)
  local L1_748, L2_749, L3_750, L4_751, L5_752, L6_753, L7_754, L8_755, L9_756, L10_757
  if A0_747 == nil or A0_747 == "" then
    return
  end
  function L1_748(A0_758)
    local L1_759, L2_760, L3_761, L4_762, L5_763, L6_764, L7_765, L8_766, L9_767, L10_768, L11_769, L12_770
    L1_759 = {}
    for L5_763, L6_764 in L2_760(L3_761) do
      L7_765 = sysio
      L7_765 = L7_765.ExpandFilePath
      L7_765 = L7_765(L8_766, L9_767)
      if L7_765 ~= nil then
        for L11_769, L12_770 in L8_766(L9_767) do
          L12_770 = string.gsub(L12_770, "^\\\\%?\\", "")
          table.insert(L1_759, L12_770:lower())
        end
      end
    end
    return L1_759
  end
  L2_749 = "HKLM\\SOFTWARE\\Microsoft\\Windows Defender\\Exclusions\\"
  L3_750 = L2_749
  L4_751 = "Extensions"
  L3_750 = L3_750 .. L4_751
  if L3_750 then
    L4_751 = {L5_752, L6_753}
    for L8_755, L9_756 in L5_752(L6_753) do
      L10_757 = Infrastructure_ReportRegistryValue
      L10_757(A0_747, L3_750, L9_756)
    end
  end
  L4_751 = L2_749
  L4_751 = L4_751 .. L5_752
  if L4_751 then
    L9_756 = "%systemroot%"
    L10_757 = "%homedrive%"
    for L9_756, L10_757 in L6_753(L7_754) do
      Infrastructure_ReportRegistryValue(A0_747, L4_751, L10_757)
    end
  end
end
Infrastructure_ReportProductBulkExclusion = L0_0
function L0_0(A0_771)
  local L1_772, L2_773, L3_774, L4_775, L5_776, L6_777, L7_778
  if A0_771 == nil then
    return
  end
  L1_772 = sysio
  L1_772 = L1_772.RegOpenKey
  L2_773 = A0_771
  L1_772 = L1_772(L2_773)
  if L1_772 then
    L2_773 = sysio
    L2_773 = L2_773.RegEnumValues
    L2_773 = L2_773(L3_774)
    for L6_777, L7_778 in L3_774(L4_775) do
      sysio.DeleteRegValue(L1_772, L7_778)
    end
  end
end
Infrastructure_DeleteAll_RegistryValueFromRegistryKey = L0_0
function L0_0()
  Infrastructure_DeleteAll_RegistryValueFromRegistryKey("HKLM\\SOFTWARE\\Policies\\Microsoft\\Windows Defender\\Exclusions\\Paths")
  Infrastructure_DeleteAll_RegistryValueFromRegistryKey("HKLM\\SOFTWARE\\Policies\\Microsoft\\Microsoft Antimalware\\Exclusions\\Paths")
end
Infrastructure_DeleteProductExcludedPathsInGroupPolicy = L0_0
function L0_0()
  local L0_779
  L0_779 = sysio
  L0_779 = L0_779.RegOpenKey
  L0_779 = L0_779("HKLM\\SYSTEM\\CurrentControlSet\\Control\\Lsa\\MSV1_0")
  if L0_779 then
    sysio.SetRegValueAsDword(L0_779, "restrictsendingntlmtraffic", 1)
  end
end
Infrastructure_RestrictNTLMTraffic = L0_0
function L0_0(A0_780, A1_781)
  local L2_782, L3_783, L4_784, L5_785
  L2_782 = string
  L2_782 = L2_782.len
  L3_783 = A0_780
  L2_782 = L2_782(L3_783)
  if L2_782 == 38 then
    L2_782 = string
    L2_782 = L2_782.match
    L3_783 = A0_780
    L4_784 = "{%x%x%x%x%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%x%x%x%x%x%x%x%x}"
    L2_782 = L2_782(L3_783, L4_784)
    if L2_782 then
      L2_782 = "HKLM\\Software\\Microsoft\\Windows NT\\CurrentVersion\\Schedule\\Taskcache\\Tasks\\"
      L3_783 = A0_780
      L2_782 = L2_782 .. L3_783
      L3_783 = sysio
      L3_783 = L3_783.RegOpenKey
      L4_784 = L2_782
      L3_783 = L3_783(L4_784)
      if L3_783 then
        L4_784 = sysio
        L4_784 = L4_784.GetRegValueAsString
        L5_785 = L3_783
        L4_784 = L4_784(L5_785, "Path")
        if L4_784 ~= nil then
          L5_785 = string
          L5_785 = L5_785.sub
          L5_785 = L5_785(L4_784, 1, 1)
          if L5_785 == "\\" then
            L5_785 = string
            L5_785 = L5_785.sub
            L5_785 = L5_785(L4_784, 2)
            L4_784 = L5_785
            L5_785 = MpCommon
            L5_785 = L5_785.ExpandEnvironmentVariables
            L5_785 = L5_785("%windir%")
            if sysio.IsFileExists(L5_785 .. "\\Tasks\\" .. L4_784 .. ".job") then
              MpDetection.ReportResource("taskscheduler", L5_785 .. "\\Tasks\\" .. L4_784 .. ".job", A1_781, false)
            end
            if sysio.IsFileExists(L5_785 .. "\\System32\\Tasks\\" .. L4_784) then
              MpDetection.ReportResource("taskscheduler", L5_785 .. "\\System32\\Tasks\\" .. L4_784, A1_781, false)
            end
          end
        end
      end
    end
  end
end
Infrastructure_ReportScheduleTaskByTaskId = L0_0
function L0_0(A0_786, A1_787)
  local L2_788, L3_789, L4_790, L5_791, L6_792, L7_793, L8_794, L9_795, L10_796, L11_797, L12_798
  if A0_786 == nil then
    return
  end
  L2_788 = sysio
  L2_788 = L2_788.RegEnumValues
  L2_788 = L2_788(L3_789)
  if L2_788 == nil then
    return
  end
  for L6_792, L7_793 in L3_789(L4_790) do
    if L7_793 ~= nil then
      L7_793 = L8_794
      for L11_797, L12_798 in L8_794(L9_795) do
        L12_798 = string.lower(L12_798)
        if L7_793 == L12_798 then
          sysio.DeleteRegValue(A0_786, L7_793)
        end
      end
    end
  end
end
Infrastructure_DeleteRegistryEntriesOnValueMatch = L0_0
function L0_0(A0_799, A1_800)
  local L2_801
  if A0_799 == nil or A1_800 == nil then
    return
  end
  L2_801 = sysio
  L2_801 = L2_801.RegOpenKey
  L2_801 = L2_801(A0_799)
  if L2_801 then
    if type(A1_800) == "string" then
      A1_800 = {A1_800}
    end
    if type(A1_800) ~= "table" then
      return
    end
    Infrastructure_DeleteRegistryEntriesOnValueMatch(L2_801, A1_800)
  end
end
Infrastructure_DelRegKeyValuesIfExist = L0_0
function L0_0()
  local L0_802, L1_803, L2_804
  L0_802 = {L1_803, L2_804}
  L1_803 = "disableantivirus"
  L2_804 = "disableantispyware"
  L1_803 = "HKLM\\SOFTWARE\\Policies\\Microsoft\\Windows Defender"
  L2_804 = sysio
  L2_804 = L2_804.RegOpenKey
  L2_804 = L2_804(L1_803)
  Infrastructure_DeleteRegistryEntriesOnValueMatch(L2_804, L0_802)
end
Infrastructure_RemoveDefenderDAVASPolicyKey = L0_0
function L0_0()
  local L0_805, L1_806, L2_807
  L0_805 = {L1_806, L2_807}
  L1_806 = "disableantivirus"
  L2_807 = "disableantispyware"
  L1_806 = "HKLM\\SOFTWARE\\Microsoft\\Windows Defender"
  L2_807 = sysio
  L2_807 = L2_807.RegOpenKey
  L2_807 = L2_807(L1_806)
  Infrastructure_DeleteRegistryEntriesOnValueMatch(L2_807, L0_805)
end
Infrastructure_RemoveDefenderDAVASPrefKey = L0_0
function L0_0()
  local L0_808, L1_809
  L0_808 = 0
  L1_809 = sysio
  L1_809 = L1_809.RegOpenKey
  L1_809 = L1_809("HKLM\\SOFTWARE\\Microsoft\\Windows Defender\\Features")
  if L1_809 then
    L0_808 = sysio.GetRegValueAsDword(L1_809, "SenseEnabled")
  end
  return L0_808 == 1
end
Infrastructure_IsE5 = L0_0
function L0_0()
  local L0_810, L1_811
  L0_810 = 0
  L1_811 = sysio
  L1_811 = L1_811.RegOpenKey
  L1_811 = L1_811("HKLM\\SOFTWARE\\Microsoft\\Windows Defender")
  if L1_811 then
    L0_810 = sysio.GetRegValueAsDword(L1_811, "ManagedDefenderProductType")
  end
  return L0_810 ~= nil and L0_810 ~= 0
end
Infrastructure_IsE3 = L0_0
function L0_0(A0_812)
  local L1_813, L2_814
  if A0_812 == nil then
    L1_813 = false
    return L1_813
  end
  L1_813 = nil
  L2_814 = sysio
  L2_814 = L2_814.RegOpenKey
  L2_814 = L2_814("HKLM\\SOFTWARE\\Policies\\Microsoft\\Windows Defender")
  if L2_814 then
    L1_813 = sysio.GetRegValueAsString(L2_814, "PartnerGuid")
    if L1_813 then
      if #L1_813 > 36 then
        L1_813 = string.gsub(L1_813, "^%s*(.-)%s*$", "%1")
      end
      L1_813 = string.lower(L1_813)
    end
  end
  if #A0_812 > 36 then
    A0_812 = string.gsub(A0_812, "^%s*(.-)%s*$", "%1")
  end
  A0_812 = string.lower(A0_812)
  return L1_813 ~= nil and L1_813 == A0_812
end
Infrastructure_HasPartnerGuid = L0_0
function L0_0(A0_815)
  local L1_816, L2_817, L3_818, L4_819, L5_820
  if A0_815 ~= nil then
  elseif L1_816 ~= "table" then
    return L1_816
  end
  for L4_819, L5_820 in L1_816(L2_817) do
    if Infrastructure_HasPartnerGuid(L5_820) then
      return true
    end
  end
  return L1_816
end
Infrastructure_HasAnyPartnerGuid = L0_0
