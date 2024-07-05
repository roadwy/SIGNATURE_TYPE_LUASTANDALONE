local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
function L0_0(A0_7)
  local L1_8, L2_9, L3_10, L4_11, L5_12, L6_13, L7_14, L8_15
  L1_8 = MpCommon
  L1_8 = L1_8.ExpandEnvironmentVariables
  L2_9 = "%windir%"
  L1_8 = L1_8(L2_9)
  L2_9 = sysio
  L2_9 = L2_9.IsFileExists
  L3_10 = L1_8
  L4_11 = "\\Tasks\\"
  L5_12 = A0_7
  L6_13 = ".job"
  L3_10 = L3_10 .. L4_11 .. L5_12 .. L6_13
  L2_9 = L2_9(L3_10)
  if L2_9 then
    L2_9 = MpDetection
    L2_9 = L2_9.ReportResource
    L3_10 = "file"
    L4_11 = L1_8
    L5_12 = "\\Tasks\\"
    L6_13 = A0_7
    L7_14 = ".job"
    L4_11 = L4_11 .. L5_12 .. L6_13 .. L7_14
    L5_12 = 805306487
    L6_13 = false
    L2_9(L3_10, L4_11, L5_12, L6_13)
  end
  L2_9 = L1_8
  L3_10 = "\\System32"
  L2_9 = L2_9 .. L3_10
  L3_10 = sysio
  L3_10 = L3_10.IsFileExists
  L4_11 = L2_9
  L5_12 = "\\Tasks\\"
  L6_13 = A0_7
  L4_11 = L4_11 .. L5_12 .. L6_13
  L3_10 = L3_10(L4_11)
  if L3_10 then
    L3_10 = MpDetection
    L3_10 = L3_10.ReportResource
    L4_11 = "file"
    L5_12 = L2_9
    L6_13 = "\\Tasks\\"
    L7_14 = A0_7
    L5_12 = L5_12 .. L6_13 .. L7_14
    L6_13 = 805306487
    L7_14 = false
    L3_10(L4_11, L5_12, L6_13, L7_14)
  end
  L3_10 = "HKLM\\Software\\Microsoft\\Windows NT\\CurrentVersion\\Schedule\\Taskcache\\Tree\\"
  L4_11 = A0_7
  L3_10 = L3_10 .. L4_11
  L4_11 = sysio
  L4_11 = L4_11.RegOpenKey
  L5_12 = L3_10
  L4_11 = L4_11(L5_12)
  if L4_11 then
    L5_12 = sysio
    L5_12 = L5_12.GetRegValueAsString
    L6_13 = L4_11
    L7_14 = "Id"
    L5_12 = L5_12(L6_13, L7_14)
    L6_13 = string
    L6_13 = L6_13.len
    L7_14 = L5_12
    L6_13 = L6_13(L7_14)
    if L6_13 == 38 then
      L6_13 = string
      L6_13 = L6_13.match
      L7_14 = L5_12
      L8_15 = "{%x%x%x%x%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%x%x%x%x%x%x%x%x}"
      L6_13 = L6_13(L7_14, L8_15)
      if L6_13 then
        L6_13 = "HKLM\\Software\\Microsoft\\Windows NT\\CurrentVersion\\Schedule\\Taskcache\\Tasks\\"
        L7_14 = L5_12
        L6_13 = L6_13 .. L7_14
        L7_14 = sysio
        L7_14 = L7_14.RegOpenKey
        L8_15 = L6_13
        L7_14 = L7_14(L8_15)
        if L7_14 then
          L8_15 = sysio
          L8_15 = L8_15.GetRegValueAsString
          L8_15 = L8_15(L7_14, "Path")
          if string.sub(L8_15, 1, 1) == "\\" then
            L8_15 = string.sub(L8_15, 2)
          end
          if L8_15 == A0_7 then
            MpDetection.ReportResource("regkey", L6_13, 805306487, false)
            MpDetection.ReportResource("regkey", L3_10, 805306487, false)
          end
        end
      end
    end
  end
end
function L1_1(A0_16, A1_17)
  local L2_18, L3_19, L4_20, L5_21, L6_22, L7_23, L8_24, L9_25, L10_26, L11_27, L12_28, L13_29, L14_30, L15_31
  L2_18 = sysio
  L2_18 = L2_18.RegOpenKey
  L3_19 = A0_16
  L2_18 = L2_18(L3_19)
  if L2_18 then
    L3_19 = sysio
    L3_19 = L3_19.GetRegValueAsString
    L4_20 = L2_18
    L5_21 = "TaskName"
    L3_19 = L3_19(L4_20, L5_21)
    L4_20 = sysio
    L4_20 = L4_20.GetRegValueAsString
    L5_21 = L2_18
    L6_22 = "dll-file-name"
    L4_20 = L4_20(L5_21, L6_22)
    if L3_19 ~= nil and L4_20 ~= nil then
      L5_21 = sysio
      L5_21 = L5_21.GetRegValueAsString
      L6_22 = L2_18
      L7_23 = "InstallDir"
      L5_21 = L5_21(L6_22, L7_23)
      L6_22 = string
      L6_22 = L6_22.find
      L7_23 = string
      L7_23 = L7_23.lower
      L8_24 = L5_21
      L7_23 = L7_23(L8_24)
      L8_24 = "\\appdata\\local\\"
      L9_25 = 1
      L10_26 = true
      L6_22 = L6_22(L7_23, L8_24, L9_25, L10_26)
      if L6_22 then
        L6_22 = sysio
        L6_22 = L6_22.GetRegValueAsString
        L7_23 = L2_18
        L8_24 = "Version"
        L6_22 = L6_22(L7_23, L8_24)
        L7_23 = sysio
        L7_23 = L7_23.GetRegValueAsString
        L8_24 = L2_18
        L9_25 = "Instgrp"
        L7_23 = L7_23(L8_24, L9_25)
        L8_24 = string
        L8_24 = L8_24.sub
        L9_25 = L7_23
        L10_26 = 1
        L8_24 = L8_24(L9_25, L10_26, L11_27)
        if L8_24 == "PF" and L6_22 == L7_23 then
          L9_25 = string
          L9_25 = L9_25.sub
          L10_26 = A1_17
          L9_25 = L9_25(L10_26, L11_27, L12_28)
          A1_17 = L9_25
          L9_25 = sysio
          L9_25 = L9_25.GetRegValueAsString
          L10_26 = L2_18
          L9_25 = L9_25(L10_26, L11_27)
          if A1_17 == L9_25 then
            L10_26 = sysio
            L10_26 = L10_26.IsFolderExists
            L10_26 = L10_26(L11_27)
            if L10_26 then
              L10_26 = MpDetection
              L10_26 = L10_26.ReportResource
              L14_30 = false
              L10_26(L11_27, L12_28, L13_29, L14_30)
              L10_26 = sysio
              L10_26 = L10_26.FindFiles
              L10_26 = L10_26(L11_27, L12_28, L13_29)
              for L14_30, L15_31 in L11_27(L12_28) do
                MpDetection.ReportResource("file", L15_31, 805306487, false)
              end
              L14_30 = 805306487
              L15_31 = false
              L11_27(L12_28, L13_29, L14_30, L15_31)
              L11_27(L12_28)
              return L11_27
            end
          end
        end
      end
    end
  end
  L3_19 = false
  return L3_19
end
function L2_2(A0_32)
  local L1_33, L2_34, L3_35, L4_36, L5_37, L6_38, L7_39, L8_40, L9_41
  L1_33 = sysio
  L1_33 = L1_33.GetFileSize
  L2_34 = A0_32
  L1_33 = L1_33(L2_34)
  if L1_33 > 50 then
    L2_34 = false
    return L2_34
  end
  L2_34 = string
  L2_34 = L2_34.lower
  L3_35 = sysio
  L3_35 = L3_35.ReadFile
  L4_36 = A0_32
  L9_41 = L3_35(L4_36, L5_37, L6_38)
  L2_34 = L2_34(L3_35, L4_36, L5_37, L6_38, L7_39, L8_40, L9_41, L3_35(L4_36, L5_37, L6_38))
  if L2_34 == "software\\" then
    L2_34 = sysio
    L2_34 = L2_34.ReadFile
    L3_35 = A0_32
    L4_36 = 0
    L2_34 = L2_34(L3_35, L4_36, L5_37)
    L3_35 = string
    L3_35 = L3_35.sub
    L4_36 = L2_34
    L3_35 = L3_35(L4_36, L5_37)
    L4_36 = string
    L4_36 = L4_36.len
    L4_36 = L4_36(L5_37)
    if L4_36 == 34 then
      L4_36 = string
      L4_36 = L4_36.match
      L4_36 = L4_36(L5_37, L6_38)
      if L4_36 then
        L4_36 = sysio
        L4_36 = L4_36.RegExpandUserKey
        L4_36 = L4_36(L5_37)
        if L4_36 then
          for L8_40, L9_41 in L5_37(L6_38) do
            if _UPVALUE0_(L9_41, L3_35) then
              return true
            end
          end
        end
      end
    end
  end
  L2_34 = false
  return L2_34
end
function L3_3(A0_42)
  local L1_43, L2_44, L3_45, L4_46, L5_47, L6_48, L7_49, L8_50, L9_51, L10_52, L11_53, L12_54, L13_55, L14_56, L15_57, L16_58
  for L4_46, L5_47 in L1_43(L2_44) do
    L6_48 = L5_47.Schema
    if L6_48 == "file" then
      L6_48 = Infrastructure_SplitThreatPath
      L7_49 = L5_47.Path
      L9_51 = L6_48(L7_49)
      L10_52 = string
      L10_52 = L10_52.sub
      L11_53 = L6_48
      L10_52 = L10_52(L11_53, L12_54, L13_55)
      if L10_52 == "\\\\?\\" then
        L10_52 = string
        L10_52 = L10_52.sub
        L11_53 = L6_48
        L10_52 = L10_52(L11_53, L12_54)
        L6_48 = L10_52
      end
      L10_52 = string
      L10_52 = L10_52.sub
      L11_53 = L6_48
      L10_52 = L10_52(L11_53, L12_54)
      if L10_52 == "\\" then
        L10_52 = string
        L10_52 = L10_52.sub
        L11_53 = L6_48
        L10_52 = L10_52(L11_53, L12_54, L13_55)
        L6_48 = L10_52
      end
      L10_52 = string
      L10_52 = L10_52.find
      L11_53 = string
      L11_53 = L11_53.lower
      L11_53 = L11_53(L12_54)
      L10_52 = L10_52(L11_53, L12_54, L13_55, L14_56)
      if L10_52 and (L9_51 == "exe" or L9_51 == "dll") then
        L10_52 = L6_48
        L11_53 = "\\rkey.dat"
        L10_52 = L10_52 .. L11_53
        L11_53 = sysio
        L11_53 = L11_53.IsFileExists
        L11_53 = L11_53(L12_54)
        if L11_53 then
          L11_53 = _UPVALUE0_
          return L11_53(L12_54)
        end
        L11_53 = sysio
        L11_53 = L11_53.FindFiles
        L11_53 = L11_53(L12_54, L13_55, L14_56)
        for L15_57, L16_58 in L12_54(L13_55) do
          return _UPVALUE0_(L16_58)
        end
      end
    end
  end
  return L1_43
end
function L4_4()
  local L0_59, L1_60, L2_61, L3_62, L4_63, L5_64, L6_65, L7_66, L8_67, L9_68, L10_69, L11_70, L12_71
  L0_59 = sysio
  L0_59 = L0_59.RegExpandUserKey
  L0_59 = L0_59(L1_60)
  if L0_59 then
    for L4_63, L5_64 in L1_60(L2_61) do
      L6_65 = sysio
      L6_65 = L6_65.RegOpenKey
      L7_66 = L5_64
      L6_65 = L6_65(L7_66)
      if L6_65 then
        L7_66 = sysio
        L7_66 = L7_66.RegEnumKeys
        L7_66 = L7_66(L8_67)
        if L7_66 then
          for L11_70, L12_71 in L8_67(L9_68) do
            if string.len(L12_71) == 34 and string.match(L12_71, "{%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x}") and _UPVALUE0_(L5_64 .. "\\" .. L12_71, L12_71) then
              return true
            end
          end
        end
      end
    end
  end
  return L1_60
end
function L5_5(A0_72)
  local L1_73, L2_74, L3_75, L4_76, L5_77, L6_78, L7_79, L8_80, L9_81, L10_82, L11_83, L12_84, L13_85, L14_86, L15_87, L16_88, L17_89, L18_90, L19_91, L20_92, L21_93, L22_94
  for L4_76, L5_77 in L1_73(L2_74) do
    L6_78 = L5_77.Schema
    if L6_78 == "file" then
      L6_78 = crypto
      L6_78 = L6_78.bitand
      L7_79 = L5_77.Type
      L8_80 = MpCommon
      L8_80 = L8_80.MPRESOURCE_TYPE_CONCRETE
      L6_78 = L6_78(L7_79, L8_80)
      L7_79 = MpCommon
      L7_79 = L7_79.MPRESOURCE_TYPE_CONCRETE
      if L6_78 == L7_79 then
        L6_78 = Infrastructure_SplitThreatPath
        L7_79 = L5_77.Path
        L9_81 = L6_78(L7_79)
        L10_82 = string
        L10_82 = L10_82.len
        L11_83 = L7_79
        L10_82 = L10_82(L11_83)
        if L10_82 == 38 then
          L10_82 = string
          L10_82 = L10_82.match
          L11_83 = L7_79
          L10_82 = L10_82(L11_83, L12_84)
          if L10_82 then
            L10_82 = string
            L10_82 = L10_82.lower
            L11_83 = L6_78
            L10_82 = L10_82(L11_83)
            L6_78 = L10_82
            L10_82 = string
            L10_82 = L10_82.sub
            L11_83 = L6_78
            L10_82 = L10_82(L11_83, L12_84, L13_85)
            if L10_82 == "\\\\?\\" then
              L10_82 = string
              L10_82 = L10_82.sub
              L11_83 = L6_78
              L10_82 = L10_82(L11_83, L12_84)
              L6_78 = L10_82
            end
            L10_82 = string
            L10_82 = L10_82.sub
            L11_83 = L6_78
            L10_82 = L10_82(L11_83, L12_84)
            if L10_82 == "\\" then
              L10_82 = string
              L10_82 = L10_82.sub
              L11_83 = L6_78
              L10_82 = L10_82(L11_83, L12_84, L13_85)
              L6_78 = L10_82
            end
            L10_82 = string
            L10_82 = L10_82.find
            L11_83 = L6_78
            L10_82 = L10_82(L11_83, L12_84, L13_85, L14_86)
            if not L10_82 then
              L10_82 = string
              L10_82 = L10_82.find
              L11_83 = L6_78
              L10_82 = L10_82(L11_83, L12_84, L13_85, L14_86)
            elseif L10_82 and L9_81 == "exe" then
              L10_82 = 0
              L11_83 = {
                L12_84,
                L13_85,
                L14_86,
                L15_87
              }
              L15_87 = "config.dat"
              for L15_87, L16_88 in L12_84(L13_85) do
                L17_89 = sysio
                L17_89 = L17_89.IsFileExists
                L17_89 = L17_89(L18_90)
                if L17_89 then
                  L10_82 = L10_82 + 1
                  if L10_82 == 2 then
                    L17_89 = sysio
                    L17_89 = L17_89.FindFiles
                    L17_89 = L17_89(L18_90, L19_91, L20_92)
                    for L21_93, L22_94 in L18_90(L19_91) do
                      MpDetection.ReportResource("file", L22_94, 805306487, false)
                    end
                    L21_93 = 805306487
                    L22_94 = false
                    L18_90(L19_91, L20_92, L21_93, L22_94)
                    L18_90(L19_91)
                    return L18_90
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  return L1_73
end
L6_6 = MpDetection
L6_6 = L6_6.GetCurrentThreat
L6_6 = L6_6()
if string.find(L6_6.Name, "BrowserModifier:Win32/Prifou", 1, true) then
  if not L3_3(L6_6) then
    L4_4()
  end
  L5_5(L6_6)
end
