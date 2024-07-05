local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19
function L0_0(A0_20, A1_21)
  local L2_22, L3_23, L4_24, L5_25, L6_26, L7_27
  L2_22 = string
  L2_22 = L2_22.sub
  L3_23 = A1_21
  L4_24 = 1
  L5_25 = -5
  L2_22 = L2_22(L3_23, L4_24, L5_25)
  L3_23 = "HKLM\\SYSTEM\\CurrentControlSet\\services\\"
  L4_24 = L2_22
  L3_23 = L3_23 .. L4_24
  L4_24 = sysio
  L4_24 = L4_24.RegOpenKey
  L5_25 = L3_23
  L4_24 = L4_24(L5_25)
  if L4_24 then
    L5_25 = sysio
    L5_25 = L5_25.GetRegValueAsString
    L6_26 = L4_24
    L7_27 = "Description"
    L5_25 = L5_25(L6_26, L7_27)
    L6_26 = sysio
    L6_26 = L6_26.GetRegValueAsString
    L7_27 = L4_24
    L6_26 = L6_26(L7_27, "DisplayName")
    if L6_26 == L2_22 and L5_25 == L2_22 then
      L7_27 = sysio
      L7_27 = L7_27.GetRegValueAsString
      L7_27 = L7_27(L4_24, "ImagePath")
      if L7_27 ~= nil and string.sub(A0_20 .. A1_21, -53) == string.lower(L7_27) then
        MpDetection.ReportResource("regkey", L3_23, 805306488, false)
        return true
      end
    end
  end
  L5_25 = false
  return L5_25
end
function L1_1(A0_28)
  local L1_29, L2_30, L3_31, L4_32, L5_33, L6_34, L7_35, L8_36, L9_37, L10_38, L11_39, L12_40, L13_41, L14_42
  L1_29 = "HKLM\\SYSTEM\\CurrentControlSet\\services"
  L2_30 = sysio
  L2_30 = L2_30.RegOpenKey
  L3_31 = L1_29
  L2_30 = L2_30(L3_31)
  if L2_30 then
    L3_31 = sysio
    L3_31 = L3_31.RegEnumKeys
    L3_31 = L3_31(L4_32)
    if L3_31 then
      for L7_35, L8_36 in L4_32(L5_33) do
        L9_37 = string
        L9_37 = L9_37.len
        L10_38 = L8_36
        L9_37 = L9_37(L10_38)
        if L9_37 == 32 then
          L9_37 = string
          L9_37 = L9_37.match
          L10_38 = L8_36
          L11_39 = "%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x"
          L9_37 = L9_37(L10_38, L11_39)
          if L9_37 then
            L9_37 = L1_29
            L10_38 = "\\"
            L11_39 = L8_36
            L9_37 = L9_37 .. L10_38 .. L11_39
            L10_38 = sysio
            L10_38 = L10_38.RegOpenKey
            L11_39 = L9_37
            L10_38 = L10_38(L11_39)
            if L10_38 then
              L11_39 = sysio
              L11_39 = L11_39.GetRegValueAsString
              L12_40 = L10_38
              L13_41 = "DisplayName"
              L11_39 = L11_39(L12_40, L13_41)
              if L11_39 == L8_36 then
                L12_40 = sysio
                L12_40 = L12_40.GetRegValueAsString
                L13_41 = L10_38
                L14_42 = "ImagePath"
                L12_40 = L12_40(L13_41, L14_42)
                if L12_40 ~= nil then
                  L13_41 = string
                  L13_41 = L13_41.len
                  L14_42 = L12_40
                  L13_41 = L13_41(L14_42)
                  if L13_41 > 80 then
                    L13_41 = string
                    L13_41 = L13_41.lower
                    L14_42 = L12_40
                    L13_41 = L13_41(L14_42)
                    L12_40 = L13_41
                    L13_41 = string
                    L13_41 = L13_41.sub
                    L14_42 = L12_40
                    L13_41 = L13_41(L14_42, 1, 1)
                    if L13_41 == "\"" then
                      L13_41 = string
                      L13_41 = L13_41.sub
                      L14_42 = L12_40
                      L13_41 = L13_41(L14_42, 2, -2)
                      L12_40 = L13_41
                    end
                    L13_41 = string
                    L13_41 = L13_41.sub
                    L14_42 = L12_40
                    L13_41 = L13_41(L14_42, 1, -37)
                    L14_42 = string
                    L14_42 = L14_42.sub
                    L14_42 = L14_42(L12_40, -36)
                    if L13_41 == string.lower(A0_28) and string.match(L14_42, "%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%.exe") then
                      MpDetection.ReportResource("regkey", L9_37, 805306488, false)
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
  end
  L3_31 = false
  return L3_31
end
function L2_2(A0_43)
  local L1_44, L2_45, L3_46, L4_47, L5_48, L6_49, L7_50, L8_51
  L1_44 = string
  L1_44 = L1_44.len
  L2_45 = A0_43
  L1_44 = L1_44(L2_45)
  L2_45 = sysio
  L2_45 = L2_45.IsFolderExists
  L2_45 = L2_45(L3_46)
  if L2_45 then
    L2_45 = sysio
    L2_45 = L2_45.FindFiles
    L2_45 = L2_45(L3_46, L4_47, L5_48)
    for L6_49, L7_50 in L3_46(L4_47) do
      L8_51 = sysio
      L8_51 = L8_51.IsFileExists
      L8_51 = L8_51(L7_50)
      if L8_51 then
        L8_51 = MpDetection
        L8_51 = L8_51.ReportResource
        L8_51("file", L7_50, 805306488, false)
        L8_51 = Infrastructure_SplitThreatPath
        L8_51 = L8_51(L7_50)
        if L1_44 < string.len(L8_51) and sysio.IsFolderExists(L8_51) then
          MpDetection.ReportResource("folder", L8_51, 805306488, false)
        end
      end
    end
    L6_49 = 805306488
    L7_50 = false
    L3_46(L4_47, L5_48, L6_49, L7_50)
    return L3_46
  end
  L2_45 = false
  return L2_45
end
function L3_3(A0_52, A1_53)
  local L2_54, L3_55, L4_56, L5_57, L6_58, L7_59, L8_60, L9_61, L10_62, L11_63, L12_64, L13_65, L14_66, L15_67, L16_68, L17_69, L18_70
  L2_54 = "HKLM\\SOFTWARE"
  L3_55 = "HKLM\\SOFTWARE\\Wow6432Node"
  L4_56 = sysio
  L4_56 = L4_56.RegOpenKey
  L5_57 = L2_54
  L4_56 = L4_56(L5_57)
  if L4_56 then
    L5_57 = sysio
    L5_57 = L5_57.RegEnumKeys
    L5_57 = L5_57(L6_58)
    if L5_57 then
      for L9_61, L10_62 in L6_58(L7_59) do
        L11_63 = string
        L11_63 = L11_63.lower
        L12_64 = string
        L12_64 = L12_64.sub
        L13_65 = L10_62
        L14_66 = 1
        L15_67 = 1
        L18_70 = L12_64(L13_65, L14_66, L15_67)
        L11_63 = L11_63(L12_64, L13_65, L14_66, L15_67, L16_68, L17_69, L18_70, L12_64(L13_65, L14_66, L15_67))
        if L11_63 == "s" or L11_63 == "w" then
          L12_64 = L2_54
          L13_65 = "\\"
          L14_66 = L10_62
          L12_64 = L12_64 .. L13_65 .. L14_66
          L13_65 = sysio
          L13_65 = L13_65.RegOpenKey
          L14_66 = L12_64
          L13_65 = L13_65(L14_66)
          if L13_65 then
            L14_66 = sysio
            L14_66 = L14_66.GetRegValueAsString
            L15_67 = L13_65
            L16_68 = "uid"
            L14_66 = L14_66(L15_67, L16_68)
            L15_67 = sysio
            L15_67 = L15_67.GetRegValueAsString
            L16_68 = L13_65
            L17_69 = "aid"
            L15_67 = L15_67(L16_68, L17_69)
            if A0_52 == L14_66 and A1_53 == L15_67 then
              L16_68 = MpDetection
              L16_68 = L16_68.ReportResource
              L17_69 = "regkey"
              L18_70 = L12_64
              L16_68(L17_69, L18_70, 805306488, false)
              L16_68 = L3_55
              L17_69 = "\\"
              L18_70 = L10_62
              L16_68 = L16_68 .. L17_69 .. L18_70
              L17_69 = sysio
              L17_69 = L17_69.RegOpenKey
              L18_70 = L16_68
              L17_69 = L17_69(L18_70)
              if L17_69 then
                L17_69 = MpDetection
                L17_69 = L17_69.ReportResource
                L18_70 = "regkey"
                L17_69(L18_70, L16_68, 805306488, false)
              end
              L17_69 = MpCommon
              L17_69 = L17_69.ExpandEnvironmentVariables
              L18_70 = "%ALLUSERSPROFILE%"
              L17_69 = L17_69(L18_70)
              L18_70 = L17_69
              L18_70 = L18_70 .. "\\Microsoft\\Windows\\Start Menu\\Programs\\" .. L10_62 .. "\\"
              _UPVALUE0_(L18_70)
              L18_70 = L17_69 .. "\\Start Menu\\Programs\\" .. L10_62 .. "\\"
              _UPVALUE0_(L18_70)
              return true
            end
          end
        end
      end
    end
  end
  L5_57 = false
  return L5_57
end
function L4_4(A0_71)
  local L1_72, L2_73, L3_74, L4_75, L5_76, L6_77, L7_78, L8_79, L9_80, L10_81, L11_82, L12_83, L13_84
  L1_72 = sysio
  L1_72 = L1_72.RegOpenKey
  L2_73 = A0_71
  L1_72 = L1_72(L2_73)
  if L1_72 then
    L2_73 = sysio
    L2_73 = L2_73.RegEnumKeys
    L2_73 = L2_73(L3_74)
    if L2_73 then
      for L6_77, L7_78 in L3_74(L4_75) do
        L8_79 = string
        L8_79 = L8_79.len
        L9_80 = L7_78
        L8_79 = L8_79(L9_80)
        if L8_79 == 32 then
          L8_79 = string
          L8_79 = L8_79.match
          L9_80 = L7_78
          L10_81 = "%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x"
          L8_79 = L8_79(L9_80, L10_81)
          if L8_79 then
            L8_79 = A0_71
            L9_80 = "\\"
            L10_81 = L7_78
            L8_79 = L8_79 .. L9_80 .. L10_81
            L9_80 = sysio
            L9_80 = L9_80.RegOpenKey
            L10_81 = L8_79
            L9_80 = L9_80(L10_81)
            if L9_80 then
              L10_81 = sysio
              L10_81 = L10_81.GetRegValueAsString
              L11_82 = L9_80
              L12_83 = "UninstallString"
              L10_81 = L10_81(L11_82, L12_83)
              L11_82 = sysio
              L11_82 = L11_82.GetRegValueAsString
              L12_83 = L9_80
              L13_84 = "DisplayName"
              L11_82 = L11_82(L12_83, L13_84)
              if (L11_82 == "Social2Search" or L11_82 == "Wajam") and L10_81 ~= nil then
                L12_83 = string
                L12_83 = L12_83.len
                L13_84 = L10_81
                L12_83 = L12_83(L13_84)
                if L12_83 == 47 then
                  L12_83 = string
                  L12_83 = L12_83.match
                  L13_84 = string
                  L13_84 = L13_84.lower
                  L13_84 = L13_84(L10_81)
                  L12_83 = L12_83(L13_84, ":\\windows\\%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%.exe")
                  if L12_83 then
                    L12_83 = sysio
                    L12_83 = L12_83.IsFileExists
                    L13_84 = L10_81
                    L12_83 = L12_83(L13_84)
                    if L12_83 then
                      L12_83 = MpDetection
                      L12_83 = L12_83.ReportResource
                      L13_84 = "file"
                      L12_83(L13_84, L10_81, 805306488, false)
                    end
                    L12_83 = sysio
                    L12_83 = L12_83.GetRegValueAsString
                    L13_84 = L9_80
                    L12_83 = L12_83(L13_84, "InstallLocation")
                    if L12_83 ~= nil then
                      L13_84 = string
                      L13_84 = L13_84.len
                      L13_84 = L13_84(L12_83)
                      if L13_84 > 48 then
                        L13_84 = string
                        L13_84 = L13_84.lower
                        L13_84 = L13_84(L12_83)
                        if string.sub(L13_84, 2, 16) == ":\\program files" and string.match(string.sub(L13_84, -32, -1), "%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x") then
                          _UPVALUE0_(L12_83)
                        end
                      end
                    end
                    L13_84 = MpDetection
                    L13_84 = L13_84.ReportResource
                    L13_84("regkey", L8_79, 805306488, false)
                    L13_84 = true
                    return L13_84
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  L2_73 = false
  return L2_73
end
function L5_5(A0_85)
  local L1_86, L2_87, L3_88, L4_89, L5_90, L6_91, L7_92, L8_93
  L1_86 = MpCommon
  L1_86 = L1_86.ExpandEnvironmentVariables
  L2_87 = "%windir%"
  L1_86 = L1_86(L2_87)
  L2_87 = sysio
  L2_87 = L2_87.IsFileExists
  L3_88 = L1_86
  L4_89 = "\\Tasks\\"
  L5_90 = A0_85
  L6_91 = ".job"
  L3_88 = L3_88 .. L4_89 .. L5_90 .. L6_91
  L2_87 = L2_87(L3_88)
  if L2_87 then
    L2_87 = MpDetection
    L2_87 = L2_87.ReportResource
    L3_88 = "file"
    L4_89 = L1_86
    L5_90 = "\\Tasks\\"
    L6_91 = A0_85
    L7_92 = ".job"
    L4_89 = L4_89 .. L5_90 .. L6_91 .. L7_92
    L5_90 = 805306488
    L6_91 = false
    L2_87(L3_88, L4_89, L5_90, L6_91)
  end
  L2_87 = L1_86
  L3_88 = "\\System32"
  L2_87 = L2_87 .. L3_88
  L3_88 = sysio
  L3_88 = L3_88.IsFileExists
  L4_89 = L2_87
  L5_90 = "\\Tasks\\"
  L6_91 = A0_85
  L4_89 = L4_89 .. L5_90 .. L6_91
  L3_88 = L3_88(L4_89)
  if L3_88 then
    L3_88 = MpDetection
    L3_88 = L3_88.ReportResource
    L4_89 = "file"
    L5_90 = L2_87
    L6_91 = "\\Tasks\\"
    L7_92 = A0_85
    L5_90 = L5_90 .. L6_91 .. L7_92
    L6_91 = 805306488
    L7_92 = false
    L3_88(L4_89, L5_90, L6_91, L7_92)
  end
  L3_88 = "HKLM\\Software\\Microsoft\\Windows NT\\CurrentVersion\\Schedule\\Taskcache\\Tree\\"
  L4_89 = A0_85
  L3_88 = L3_88 .. L4_89
  L4_89 = sysio
  L4_89 = L4_89.RegOpenKey
  L5_90 = L3_88
  L4_89 = L4_89(L5_90)
  if L4_89 then
    L5_90 = sysio
    L5_90 = L5_90.GetRegValueAsString
    L6_91 = L4_89
    L7_92 = "Id"
    L5_90 = L5_90(L6_91, L7_92)
    L6_91 = string
    L6_91 = L6_91.len
    L7_92 = L5_90
    L6_91 = L6_91(L7_92)
    if L6_91 == 38 then
      L6_91 = string
      L6_91 = L6_91.match
      L7_92 = L5_90
      L8_93 = "{%x%x%x%x%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%x%x%x%x%x%x%x%x}"
      L6_91 = L6_91(L7_92, L8_93)
      if L6_91 then
        L6_91 = "HKLM\\Software\\Microsoft\\Windows NT\\CurrentVersion\\Schedule\\Taskcache\\Tasks\\"
        L7_92 = L5_90
        L6_91 = L6_91 .. L7_92
        L7_92 = sysio
        L7_92 = L7_92.RegOpenKey
        L8_93 = L6_91
        L7_92 = L7_92(L8_93)
        if L7_92 then
          L8_93 = sysio
          L8_93 = L8_93.GetRegValueAsString
          L8_93 = L8_93(L7_92, "Path")
          if L8_93 ~= nil and string.sub(L8_93, 1, 1) == "\\" then
            L8_93 = string.sub(L8_93, 2)
          end
          if L8_93 == A0_85 then
            MpDetection.ReportResource("regkey", L6_91, 805306488, false)
            MpDetection.ReportResource("regkey", L3_88, 805306488, false)
          end
        end
      end
    end
  end
end
function L6_6(A0_94)
  local L1_95, L2_96, L3_97, L4_98, L5_99, L6_100, L7_101, L8_102, L9_103, L10_104, L11_105, L12_106, L13_107
  L1_95 = sysio
  L1_95 = L1_95.IsFolderExists
  L1_95 = L1_95(L2_96)
  if L1_95 then
    L1_95 = sysio
    L1_95 = L1_95.FindFiles
    L1_95 = L1_95(L2_96, L3_97, L4_98)
    for L5_99, L6_100 in L2_96(L3_97) do
      L7_101 = sysio
      L7_101 = L7_101.IsFileExists
      L8_102 = L6_100
      L7_101 = L7_101(L8_102)
      if L7_101 then
        L7_101 = Infrastructure_SplitThreatPath
        L8_102 = L6_100
        L10_104 = L7_101(L8_102)
        L11_105 = string
        L11_105 = L11_105.match
        L12_106 = L9_103
        L13_107 = "%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%.ps1"
        L11_105 = L11_105(L12_106, L13_107)
        if L11_105 then
          L11_105 = string
          L11_105 = L11_105.sub
          L12_106 = L6_100
          L13_107 = 1
          L11_105 = L11_105(L12_106, L13_107, 4)
          if L11_105 == "\\\\?\\" then
            L11_105 = string
            L11_105 = L11_105.sub
            L12_106 = L6_100
            L13_107 = 5
            L11_105 = L11_105(L12_106, L13_107)
            L6_100 = L11_105
          end
          L11_105 = sysio
          L11_105 = L11_105.GetFileSize
          L12_106 = L6_100
          L11_105 = L11_105(L12_106)
          if L11_105 > 20000 and L11_105 < 80000 then
            L12_106 = sysio
            L12_106 = L12_106.ReadFile
            L13_107 = L6_100
            L12_106 = L12_106(L13_107, 0, 25)
            if L12_106 ~= nil then
              L13_107 = string
              L13_107 = L13_107.lower
              L13_107 = L13_107(L12_106)
              if L13_107 == "$lnlfd = \"01000000d08c9dd" then
                L13_107 = MpDetection
                L13_107 = L13_107.ReportResource
                L13_107("file", L6_100, 805306488, false)
                L13_107 = string
                L13_107 = L13_107.sub
                L13_107 = L13_107(L9_103, 1, -5)
                _UPVALUE0_(L13_107)
                return true
              end
            end
          end
        end
      end
    end
  end
  L1_95 = false
  return L1_95
end
function L7_7(A0_108)
  local L1_109, L2_110, L3_111, L4_112, L5_113, L6_114, L7_115
  L1_109 = sysio
  L1_109 = L1_109.RegOpenKey
  L2_110 = A0_108
  L1_109 = L1_109(L2_110)
  if L1_109 then
    L2_110 = sysio
    L2_110 = L2_110.RegEnumValues
    L2_110 = L2_110(L3_111)
    for L6_114, L7_115 in L3_111(L4_112) do
      if string.match(L7_115, "%a:\\Windows\\System32\\drivers\\%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%.sys") or string.match(L7_115, "%a:\\program files\\%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x\\") or string.match(L7_115, "%a:\\Windows\\%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%.exe") then
        MpDetection.ReportResource("regkeyvalue", A0_108 .. "\\\\" .. L7_115, 805306488, false)
      end
    end
  end
end
L8_8 = MpDetection
L8_8 = L8_8.GetCurrentThreat
L8_8 = L8_8()
L13_13 = true
if L9_9 then
  for L12_12, L13_13 in L9_9(L10_10) do
    L14_14 = L13_13.Schema
    if L14_14 == "file" then
      L14_14 = crypto
      L14_14 = L14_14.bitand
      L15_15 = L13_13.Type
      L16_16 = MpCommon
      L16_16 = L16_16.MPRESOURCE_TYPE_CONCRETE
      L14_14 = L14_14(L15_15, L16_16)
      L15_15 = MpCommon
      L15_15 = L15_15.MPRESOURCE_TYPE_CONCRETE
      if L14_14 == L15_15 then
        L14_14 = Infrastructure_SplitThreatPath
        L15_15 = L13_13.Path
        L17_17 = L14_14(L15_15)
        L18_18 = string
        L18_18 = L18_18.lower
        L19_19 = L14_14
        L18_18 = L18_18(L19_19)
        L14_14 = L18_18
        L18_18 = string
        L18_18 = L18_18.sub
        L19_19 = L14_14
        L18_18 = L18_18(L19_19, 1, 4)
        if L18_18 == "\\\\?\\" then
          L18_18 = string
          L18_18 = L18_18.sub
          L19_19 = L14_14
          L18_18 = L18_18(L19_19, 5)
          L14_14 = L18_18
        end
        L18_18 = string
        L18_18 = L18_18.sub
        L19_19 = L14_14
        L18_18 = L18_18(L19_19, -1)
        if L18_18 ~= "\\" then
          L18_18 = L14_14
          L19_19 = "\\"
          L14_14 = L18_18 .. L19_19
        end
        L18_18 = string
        L18_18 = L18_18.find
        L19_19 = L14_14
        L18_18 = L18_18(L19_19, "system32\\drivers", 1, true)
        if L18_18 then
          if L17_17 == "sys" then
            L18_18 = string
            L18_18 = L18_18.len
            L19_19 = L16_16
            L18_18 = L18_18(L19_19)
            if L18_18 == 36 then
              L18_18 = string
              L18_18 = L18_18.match
              L19_19 = L16_16
              L18_18 = L18_18(L19_19, "%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%.sys")
              if L18_18 then
                L18_18 = L0_0
                L19_19 = L14_14
                L18_18(L19_19, L16_16)
              end
            end
          end
        else
          L18_18 = string
          L18_18 = L18_18.sub
          L19_19 = L14_14
          L18_18 = L18_18(L19_19, 2, 16)
          if L18_18 == ":\\program files" then
            L18_18 = string
            L18_18 = L18_18.len
            L19_19 = L15_15
            L18_18 = L18_18(L19_19)
            if L18_18 == 32 then
              L18_18 = string
              L18_18 = L18_18.match
              L19_19 = L15_15
              L18_18 = L18_18(L19_19, "%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x")
              if L18_18 then
                L18_18 = string
                L18_18 = L18_18.sub
                L19_19 = L16_16
                L18_18 = L18_18(L19_19, 1, -5)
                if L17_17 == "exe" or L17_17 == "sys" then
                  L19_19 = string
                  L19_19 = L19_19.len
                  L19_19 = L19_19(L16_16)
                  if L19_19 == 36 then
                    L19_19 = string
                    L19_19 = L19_19.match
                    L19_19 = L19_19(L18_18, "%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x")
                    if L19_19 then
                      L19_19 = L2_2
                      L19_19 = L19_19(L14_14)
                      if L19_19 then
                        L19_19 = L1_1
                        L19_19(L14_14)
                      end
                    end
                  end
                elseif L17_17 == "dll" then
                  L19_19 = string
                  L19_19 = L19_19.sub
                  L19_19 = L19_19(L14_14, 1, -34)
                  L14_14 = L19_19
                  L19_19 = string
                  L19_19 = L19_19.len
                  L19_19 = L19_19(L14_14)
                  if L19_19 > 32 then
                    L19_19 = string
                    L19_19 = L19_19.sub
                    L19_19 = L19_19(L14_14, -33, -2)
                    if string.match(L19_19, "%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x") and L2_2(L14_14) then
                      L1_1(L14_14)
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  if L9_9 then
    for L13_13, L14_14 in L10_10(L11_11) do
      L15_15 = sysio
      L15_15 = L15_15.RegOpenKey
      L16_16 = L14_14
      L15_15 = L15_15(L16_16)
      if L15_15 then
        L16_16 = sysio
        L16_16 = L16_16.GetRegValueAsString
        L17_17 = L15_15
        L18_18 = "unique_id"
        L16_16 = L16_16(L17_17, L18_18)
        L17_17 = sysio
        L17_17 = L17_17.GetRegValueAsString
        L18_18 = L15_15
        L19_19 = "affiliate_id"
        L17_17 = L17_17(L18_18, L19_19)
        if L16_16 ~= nil and L17_17 ~= nil then
          L18_18 = L3_3
          L19_19 = L16_16
          L18_18 = L18_18(L19_19, L17_17)
          if L18_18 then
            L18_18 = MpDetection
            L18_18 = L18_18.ReportResource
            L19_19 = "regkey"
            L18_18(L19_19, L14_14, 805306488, false)
          end
        end
      end
    end
  end
  L10_10(L11_11)
  L10_10(L11_11)
  L11_11(L12_12)
  L11_11(L12_12)
end
