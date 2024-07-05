local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
function L0_0(A0_7, A1_8)
  local L2_9, L3_10, L4_11, L5_12
  L2_9 = sysio
  L2_9 = L2_9.RegOpenKey
  L3_10 = A0_7
  L2_9 = L2_9(L3_10)
  if L2_9 then
    L3_10 = sysio
    L3_10 = L3_10.RegQueryInfoKey
    L4_11 = L2_9
    L3_10 = L3_10(L4_11)
    L4_11 = L3_10.cValues
    if L4_11 ~= 6 then
      return
    else
      L5_12 = string
      L5_12 = L5_12.lower
      L5_12 = L5_12(sysio.GetRegValueAsString(L2_9, A1_8))
      if L5_12 and string.match(L5_12, "%+=string%.fromcharcode%(.*eval%(.*") then
        sysio.DeleteRegKey(L2_9, nil)
      end
    end
  end
end
RemovePayloadFromRegistry = L0_0
function L0_0(A0_13, A1_14)
  local L2_15, L3_16, L4_17, L5_18, L6_19, L7_20, L8_21, L9_22, L10_23, L11_24, L12_25, L13_26
  if A0_13 then
    L2_15 = sysio
    L2_15 = L2_15.IsFileExists
    L3_16 = A0_13
    L2_15 = L2_15(L3_16)
    if L2_15 then
      L2_15 = sysio
      L2_15 = L2_15.GetFileSize
      L3_16 = A0_13
      L2_15 = L2_15(L3_16)
      if L2_15 > 1500 then
        return
      end
      L3_16 = string
      L3_16 = L3_16.lower
      L4_17 = sysio
      L4_17 = L4_17.ReadFileRaw
      L5_18 = A0_13
      L6_19 = 0
      L7_20 = L2_15
      L13_26 = L4_17(L5_18, L6_19, L7_20)
      L3_16 = L3_16(L4_17, L5_18, L6_19, L7_20, L8_21, L9_22, L10_23, L11_24, L12_25, L13_26, L4_17(L5_18, L6_19, L7_20))
      L4_17 = string
      L4_17 = L4_17.gsub
      L5_18 = L3_16
      L6_19 = "%z"
      L7_20 = ""
      L4_17 = L4_17(L5_18, L6_19, L7_20)
      if not L4_17 then
        L5_18 = nil
        return L5_18
      end
      if A1_14 then
        L5_18 = "\"([^\"]+\\appdata\\roaming\\%w+\\%w+%."
        L6_19 = A1_14
        L7_20 = ")\""
        L5_18 = L5_18 .. L6_19 .. L7_20
        L6_19 = string
        L6_19 = L6_19.match
        L7_20 = L4_17
        L8_21 = L5_18
        L6_19 = L6_19(L7_20, L8_21)
        if L6_19 then
          L7_20 = sysio
          L7_20 = L7_20.IsFileExists
          L8_21 = L6_19
          L7_20 = L7_20(L8_21)
          if L7_20 then
            L7_20 = sysio
            L7_20 = L7_20.DeleteFile
            L8_21 = L6_19
            L7_20(L8_21)
            L7_20 = sysio
            L7_20 = L7_20.DeleteFile
            L8_21 = A0_13
            L7_20(L8_21)
          end
        end
      else
        L5_18 = sysio
        L5_18 = L5_18.DeleteFile
        L6_19 = A0_13
        L5_18(L6_19)
        L5_18 = "(c:\\[^\"]+\\appdata\\local\\%w+)\\(%w+%.%w+\"?)"
        L6_19 = string
        L6_19 = L6_19.match
        L7_20 = L4_17
        L8_21 = L5_18
        L7_20 = L6_19(L7_20, L8_21)
        if L6_19 then
          L8_21 = sysio
          L8_21 = L8_21.IsFolderExists
          L8_21 = L8_21(L9_22)
          if L8_21 then
            L8_21 = sysio
            L8_21 = L8_21.FindFiles
            L8_21 = L8_21(L9_22, L10_23, L11_24)
            for L12_25, L13_26 in L9_22(L10_23) do
              sysio.DeleteFile(L13_26)
            end
          end
        end
      end
    end
  end
end
RemoveKovterLnk = L0_0
function L0_0(A0_27)
  local L1_28, L2_29, L3_30, L4_31, L5_32, L6_33, L7_34, L8_35, L9_36, L10_37, L11_38
  L1_28 = sysio
  L1_28 = L1_28.RegOpenKey
  L2_29 = A0_27
  L1_28 = L1_28(L2_29)
  L2_29 = false
  if L1_28 then
    L3_30 = sysio
    L3_30 = L3_30.RegEnumValues
    L3_30 = L3_30(L4_31)
    for L7_34, L8_35 in L4_31(L5_32) do
      L9_36 = string
      L9_36 = L9_36.lower
      L10_37 = sysio
      L10_37 = L10_37.GetRegValueAsString
      L11_38 = L1_28
      L11_38 = L10_37(L11_38, L8_35)
      L9_36 = L9_36(L10_37, L11_38, L10_37(L11_38, L8_35))
      if not L9_36 then
        L10_37 = false
        return L10_37
      end
      L10_37 = string
      L10_37 = L10_37.match
      L11_38 = L9_36
      L10_37 = L10_37(L11_38, "mshta \"?javascript:.*;\"?$")
      if not L10_37 then
        L10_37 = string
        L10_37 = L10_37.match
        L11_38 = L9_36
        L10_37 = L10_37(L11_38, "mshta%.exe\"? \"?javascript:.*;\"?$")
      else
        if L10_37 then
          L10_37 = sysio
          L10_37 = L10_37.DeleteRegValue
          L11_38 = L1_28
          L10_37(L11_38, L8_35)
          L2_29 = true
          L10_37 = string
          L10_37 = L10_37.sub
          L11_38 = string
          L11_38 = L11_38.lower
          L11_38 = L11_38(A0_27)
          L10_37 = L10_37(L11_38, 1, string.len("hkcu"))
          if L10_37 == "hkcu" then
            L10_37 = string
            L10_37 = L10_37.match
            L11_38 = L9_36
            L11_38 = L10_37(L11_38, "regread%(%\"(hkcu\\\\software\\\\%w%w%w+)\\\\(%w%w%w+).*")
            if L10_37 and L11_38 then
              L10_37 = string.gsub(L10_37, "\\\\", "\\")
              RemovePayloadFromRegistry(L10_37, L11_38)
            end
          else
            L10_37 = string
            L10_37 = L10_37.match
            L11_38 = L9_36
            L11_38 = L10_37(L11_38, "regread%(%\"(hklm\\\\software\\\\wow6432node\\\\%w%w%w+)\\\\(%w%w%w+).*")
            if L10_37 and L11_38 then
              L10_37 = string.gsub(L10_37, "\\\\", "\\")
              RemovePayloadFromRegistry(L10_37, L11_38)
            end
          end
      end
      else
        L10_37 = string
        L10_37 = L10_37.match
        L11_38 = L9_36
        L10_37 = L10_37(L11_38, "\\appdata\\local\\%w+\\%w+%.%w%w%w%w+\"?$")
        if L10_37 then
          L11_38 = L9_36
          L10_37 = L9_36.gsub
          L10_37 = L10_37(L11_38, "\"", "")
          L9_36 = L10_37
          L10_37 = sysio
          L10_37 = L10_37.DeleteRegValue
          L11_38 = L1_28
          L10_37(L11_38, L8_35)
          L2_29 = true
          L10_37 = sysio
          L10_37 = L10_37.DeleteFile
          L11_38 = L9_36
          L10_37(L11_38)
        else
          L10_37 = string
          L10_37 = L10_37.match
          L11_38 = L9_36
          L10_37 = L10_37(L11_38, "\\appdata\\local\\%w+\\%w+%.lnk\"?$")
          if not L10_37 then
            L10_37 = string
            L10_37 = L10_37.match
            L11_38 = L9_36
            L10_37 = L10_37(L11_38, "\\appdata\\local\\%w+\\%w+%.bat\"?$")
          elseif L10_37 then
            L11_38 = L9_36
            L10_37 = L9_36.gsub
            L10_37 = L10_37(L11_38, "\"", "")
            L9_36 = L10_37
            L10_37 = sysio
            L10_37 = L10_37.DeleteRegValue
            L11_38 = L1_28
            L10_37(L11_38, L8_35)
            L2_29 = true
            L10_37 = RemoveKovterLnk
            L11_38 = L9_36
            L10_37(L11_38)
          end
        end
      end
    end
  end
  return L2_29
end
RemoveKovterASEPS_JS = L0_0
function L0_0(A0_39)
  local L1_40, L2_41, L3_42, L4_43, L5_44, L6_45, L7_46, L8_47, L9_48, L10_49, L11_50, L12_51, L13_52, L14_53
  L2_41 = sysio
  L2_41 = L2_41.RegExpandUserKey
  L2_41 = L2_41(L3_42)
  for L6_45, L7_46 in L3_42(L4_43) do
    L8_47 = sysio
    L8_47 = L8_47.RegOpenKey
    L9_48 = L7_46
    L8_47 = L8_47(L9_48)
    if L8_47 then
      L9_48 = sysio
      L9_48 = L9_48.GetRegValueAsString
      L9_48 = L9_48(L10_49, L11_50)
      L1_40 = L9_48
      if L1_40 then
        L9_48 = sysio
        L9_48 = L9_48.IsFolderExists
        L9_48 = L9_48(L10_49)
        if L9_48 then
          L9_48 = sysio
          L9_48 = L9_48.FindFiles
          L9_48 = L9_48(L10_49, L11_50, L12_51)
          for L13_52, L14_53 in L10_49(L11_50) do
            RemoveKovterLnk(L14_53, A0_39)
          end
          break
        end
      end
    end
  end
end
RemoveStartupLnk = L0_0
function L0_0(A0_54, A1_55)
  local L2_56, L3_57, L4_58, L5_59, L6_60, L7_61, L8_62, L9_63, L10_64, L11_65, L12_66, L13_67, L14_68, L15_69, L16_70, L17_71, L18_72
  L2_56 = sysio
  L2_56 = L2_56.RegOpenKey
  L3_57 = A0_54
  L2_56 = L2_56(L3_57)
  if L2_56 then
    L3_57 = sysio
    L3_57 = L3_57.RegEnumKeys
    L3_57 = L3_57(L4_58)
    for L7_61, L8_62 in L4_58(L5_59) do
      L9_63 = string
      L9_63 = L9_63.match
      L10_64 = L8_62
      L11_65 = "^%.%w%w%w%w+$"
      L9_63 = L9_63(L10_64, L11_65)
      if L9_63 then
        L9_63 = sysio
        L9_63 = L9_63.RegOpenKey
        L10_64 = A0_54
        L11_65 = "\\"
        L12_66 = L8_62
        L10_64 = L10_64 .. L11_65 .. L12_66
        L9_63 = L9_63(L10_64)
        L10_64 = string
        L10_64 = L10_64.lower
        L11_65 = sysio
        L11_65 = L11_65.GetRegValueAsString
        L12_66 = L9_63
        L18_72 = L11_65(L12_66, L13_67)
        L10_64 = L10_64(L11_65, L12_66, L13_67, L14_68, L15_69, L16_70, L17_71, L18_72, L11_65(L12_66, L13_67))
        if L10_64 == A1_55 then
          L11_65 = "hkcu\\software\\classes\\"
          L12_66 = L8_62
          L11_65 = L11_65 .. L12_66
          L12_66 = sysio
          L12_66 = L12_66.RegExpandUserKey
          L12_66 = L12_66(L13_67)
          for L16_70, L17_71 in L13_67(L14_68) do
            L18_72 = sysio
            L18_72 = L18_72.RegOpenKey
            L18_72 = L18_72(L17_71)
            if L18_72 then
              sysio.DeleteRegKey(L18_72, nil)
            end
          end
          L16_70 = -1
          return L13_67
        end
      end
    end
  end
  L3_57 = nil
  return L3_57
end
findKovterFileExtension = L0_0
function L0_0(A0_73)
  local L1_74, L2_75, L3_76, L4_77, L5_78, L6_79, L7_80, L8_81, L9_82, L10_83, L11_84
  L1_74 = sysio
  L1_74 = L1_74.RegOpenKey
  L2_75 = A0_73
  L1_74 = L1_74(L2_75)
  if L1_74 then
    L2_75 = sysio
    L2_75 = L2_75.RegEnumKeys
    L2_75 = L2_75(L3_76)
    for L6_79, L7_80 in L3_76(L4_77) do
      L8_81 = "HKCU\\Software\\Classes\\"
      L9_82 = L7_80
      L10_83 = "\\shell\\open\\command"
      L8_81 = L8_81 .. L9_82 .. L10_83
      L9_82 = sysio
      L9_82 = L9_82.RegOpenKey
      L10_83 = L8_81
      L9_82 = L9_82(L10_83)
      if L9_82 then
        L10_83 = RemoveKovterASEPS_JS
        L11_84 = L8_81
        L10_83 = L10_83(L11_84)
        if L10_83 then
          L11_84 = sysio
          L11_84 = L11_84.DeleteRegKey
          L11_84(L1_74, L7_80)
          L11_84 = findKovterFileExtension
          L11_84 = L11_84(A0_73, L7_80)
          if L11_84 then
            RemoveStartupLnk(L11_84)
          end
        end
      end
    end
  end
end
RemoveASEPS_Classes = L0_0
function L0_0(A0_85)
  local L1_86, L2_87, L3_88, L4_89, L5_90, L6_91, L7_92, L8_93
  L1_86 = sysio
  L1_86 = L1_86.RegOpenKey
  L2_87 = A0_85
  L1_86 = L1_86(L2_87)
  if L1_86 then
    L2_87 = sysio
    L2_87 = L2_87.RegEnumValues
    L2_87 = L2_87(L3_88)
    for L6_91, L7_92 in L3_88(L4_89) do
      if L7_92 then
        L8_93 = string
        L8_93 = L8_93.match
        L8_93 = L8_93(L7_92, "^{%w%w%w%w%w%w%w%w%-%w%w%w%w%-%w%w%w%w%-%w%w%w%w%-%w%w%w%w%w%w%w%w%w%w%w%w}$")
        if L8_93 then
          L8_93 = string
          L8_93 = L8_93.lower
          L8_93 = L8_93(sysio.GetRegValueAsString(L1_86, L7_92))
          if L8_93 and string.match(L8_93, "\\microsoft\\{%w+%-%w+%-%w+%-%w+%-%w+}\\{%w+%-%w+%-%w+%-%w+%-%w+}%.exe\"$") then
            L8_93 = string.gsub(L8_93, "\"", "")
            sysio.DeleteRegValue(L1_86, L7_92)
            Remediation.BtrDeleteFile(L8_93)
          end
        end
      end
    end
  end
end
RemoveKovterASEPS = L0_0
L0_0 = string
L0_0 = L0_0.match
L0_0 = L0_0(L1_1, L2_2)
if not L0_0 then
  L0_0 = string
  L0_0 = L0_0.match
  L0_0 = L0_0(L1_1, L2_2)
elseif L0_0 then
  L0_0 = sysio
  L0_0 = L0_0.RegExpandUserKey
  L0_0 = L0_0(L1_1)
  for L4_4, L5_5 in L1_1(L2_2) do
    L6_6 = RemoveKovterASEPS_JS
    L6_6(L5_5)
  end
  L1_1(L2_2)
  L1_1(L2_2)
  L1_1(L2_2)
  L1_1(L2_2)
  for L5_5, L6_6 in L2_2(L3_3) do
    RemoveASEPS_Classes(L6_6)
  end
  L2_2(L3_3)
  L2_2(L3_3)
end
