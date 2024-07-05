local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
function L0_0(A0_9)
  local L1_10, L2_11, L3_12
  L1_10 = string
  L1_10 = L1_10.find
  L3_12 = A0_9
  L2_11 = A0_9.reverse
  L2_11 = L2_11(L3_12)
  L3_12 = "\\"
  L1_10 = L1_10(L2_11, L3_12, 1, true)
  if L1_10 == nil then
    L2_11 = false
    L3_12 = nil
    return L2_11, L3_12
  end
  L2_11 = #A0_9
  L2_11 = L2_11 - L1_10
  L3_12 = A0_9.sub
  L3_12 = L3_12(A0_9, L2_11 + 2)
  if ({
    ms = "",
    dx = "",
    cc = ""
  })[L3_12:sub(1, 2)] and ({
    [".exe"] = "",
    [".cmd"] = "",
    [".bat"] = "",
    [".com"] = "",
    [".pif"] = "",
    [".scr"] = ""
  })[L3_12:sub(-4)] then
    return true, L3_12
  end
  return false, nil
end
isgamformat = L0_0
function L0_0(A0_13, A1_14)
  local L2_15, L3_16, L4_17, L5_18, L6_19, L7_20, L8_21, L9_22, L10_23, L11_24
  if A0_13 then
    L2_15 = sysio
    L2_15 = L2_15.RegEnumValues
    L2_15 = L2_15(L3_16)
    for L6_19, L7_20 in L3_16(L4_17) do
      if L7_20 ~= nil then
        if A1_14 == true then
          L9_22 = L7_20
          L8_21 = L7_20.find
          L10_23 = "^%d%d%d%d+$"
          L11_24 = 1
          L8_21 = L8_21(L9_22, L10_23, L11_24, false)
        else
          if not L8_21 then
            if A1_14 == false then
              L9_22 = L7_20
              L8_21 = L7_20.find
              L10_23 = "Load"
              L11_24 = 1
              L8_21 = L8_21(L9_22, L10_23, L11_24, true)
            end
        end
        elseif L8_21 then
          L8_21 = sysio
          L8_21 = L8_21.GetRegValueAsString
          L9_22 = A0_13
          L10_23 = L7_20
          L8_21 = L8_21(L9_22, L10_23)
          if L8_21 ~= nil and L8_21 ~= "" then
            L9_22 = isgamformat
            L10_23 = L8_21
            L10_23 = L9_22(L10_23)
            if L9_22 == true and L10_23 ~= nil then
              if A1_14 == true then
                L11_24 = sysio
                L11_24 = L11_24.DeleteRegValue
                L11_24(A0_13, L7_20)
              else
                L11_24 = sysio
                L11_24 = L11_24.SetRegValueAsString
                L11_24(A0_13, "Load", "")
              end
              L11_24 = MpCommon
              L11_24 = L11_24.ExpandEnvironmentVariables
              L11_24 = L11_24("%allusersprofile%")
              L11_24 = L11_24 .. "\\" .. L10_23
              if sysio.IsFileExists(L11_24) then
                MpCommon.ReportLowfi(L11_24, 2852551133)
                Remediation.BtrDeleteFile(L11_24)
              end
              L11_24 = MpCommon.ExpandEnvironmentVariables("%allusersprofile%") .. "\\Local Settings\\Temp\\" .. L10_23
              if sysio.IsFileExists(L11_24) then
                MpCommon.ReportLowfi(L11_24, 2852551133)
                Remediation.BtrDeleteFile(L11_24)
              end
              L11_24 = Infrastructure_GetEnvironmentPath("%appdata%") .. "\\" .. L10_23
              if sysio.IsFileExists(L11_24) then
                MpCommon.ReportLowfi(L11_24, 2852551133)
                Remediation.BtrDeleteFile(L11_24)
              end
              L11_24 = Infrastructure_GetEnvironmentPath("%userprofile%") .. "\\AppData\\Local\\Temp\\" .. L10_23
              if sysio.IsFileExists(L11_24) then
                MpCommon.ReportLowfi(L11_24, 2852551133)
                Remediation.BtrDeleteFile(L11_24)
              end
            end
          end
        end
      end
    end
  end
end
remgam = L0_0
function L0_0()
  local L0_25, L1_26, L2_27, L3_28, L4_29, L5_30, L6_31
  L0_25 = sysio
  L0_25 = L0_25.RegExpandUserKey
  L0_25 = L0_25(L1_26)
  if L0_25 then
    for L4_29, L5_30 in L1_26(L2_27) do
      L6_31 = sysio
      L6_31 = L6_31.RegOpenKey
      L6_31 = L6_31(L5_30)
      if L6_31 then
        sysio.DeleteRegValue(L6_31, "1")
        sysio.DeleteRegValue(L6_31, "2")
      end
    end
  end
end
remplugin_added_registry = L0_0
function L0_0(A0_32)
  local L1_33, L2_34, L3_35, L4_36, L5_37, L6_38
  if A0_32 then
    L1_33 = sysio
    L1_33 = L1_33.RegEnumValues
    L1_33 = L1_33(L2_34)
    for L5_37, L6_38 in L2_34(L3_35) do
      if L6_38 ~= nil and L6_38:find("^%d%d%d%d+$", 1, false) and sysio.GetRegValueAsString(A0_32, L6_38) ~= nil and sysio.GetRegValueAsString(A0_32, L6_38) ~= "" then
        sysio.DeleteRegValue(A0_32, L6_38)
      end
    end
  end
end
remplug = L0_0
function L0_0()
  local L0_39, L1_40, L2_41, L3_42, L4_43, L5_44, L6_45, L7_46
  L0_39 = sysio
  L0_39 = L0_39.RegOpenKey
  L1_40 = "HKLM\\Software\\Microsoft\\Windows"
  L0_39 = L0_39(L1_40)
  L1_40 = remplug
  L1_40(L2_41)
  L1_40 = sysio
  L1_40 = L1_40.RegExpandUserKey
  L1_40 = L1_40(L2_41)
  if L1_40 then
    for L5_44, L6_45 in L2_41(L3_42) do
      L7_46 = sysio
      L7_46 = L7_46.RegOpenKey
      L7_46 = L7_46(L6_45)
      remplug(L7_46)
    end
  end
end
remplugin_registry = L0_0
function L0_0(A0_47)
  local L1_48, L2_49, L3_50, L4_51, L5_52, L6_53
  L2_49 = A0_47
  L1_48 = A0_47.find
  L3_50 = "\\%w%.lnk$"
  L1_48 = L1_48(L2_49, L3_50)
  if L1_48 == nil then
    return
  end
  L1_48 = sysio
  L1_48 = L1_48.GetFileSize
  L2_49 = A0_47
  L1_48 = L1_48(L2_49)
  if L1_48 > 1024 or L1_48 < 500 then
    return
  end
  L2_49 = sysio
  L2_49 = L2_49.ReadFileRaw
  L3_50 = A0_47
  L4_51 = 0
  L5_52 = L1_48
  L2_49 = L2_49(L3_50, L4_51, L5_52)
  if L2_49 == nil then
    return
  end
  L3_50 = string
  L3_50 = L3_50.gsub
  L4_51 = L2_49
  L5_52 = "%z"
  L6_53 = ""
  L3_50 = L3_50(L4_51, L5_52, L6_53)
  if L3_50 == nil then
    return
  end
  L5_52 = L3_50
  L4_51 = L3_50.match
  L6_53 = "\\AppData\\Roaming\\(ii%w+%.exe)"
  L4_51 = L4_51(L5_52, L6_53)
  if L4_51 == nil then
    L6_53 = L3_50
    L5_52 = L3_50.match
    L5_52 = L5_52(L6_53, "\\AppData\\Roaming\\(ob%w+%.exe)")
    L4_51 = L5_52
  end
  if L4_51 ~= nil then
    L6_53 = A0_47
    L5_52 = A0_47.match
    L5_52 = L5_52(L6_53, "^(%w:\\Users\\[^\\]+)\\")
    if L5_52 ~= nil then
      L6_53 = L5_52
      L6_53 = L6_53 .. "\\AppData\\Roaming\\" .. L4_51
      if sysio.IsFileExists(L6_53) then
        MpCommon.ReportLowfi(L6_53, 2852551133)
        Remediation.BtrDeleteFile(L6_53)
      end
      if sysio.IsFileExists(A0_47) then
        MpCommon.ReportLowfi(A0_47, 2852551133)
        Remediation.BtrDeleteFile(A0_47)
      end
    end
  end
end
RemoveGamarueLnk = L0_0
function L0_0()
  local L0_54, L1_55, L2_56, L3_57, L4_58, L5_59, L6_60, L7_61, L8_62, L9_63, L10_64, L11_65, L12_66, L13_67
  L1_55 = sysio
  L1_55 = L1_55.RegExpandUserKey
  L1_55 = L1_55(L2_56)
  for L5_59, L6_60 in L2_56(L3_57) do
    L7_61 = sysio
    L7_61 = L7_61.RegOpenKey
    L8_62 = L6_60
    L7_61 = L7_61(L8_62)
    if L7_61 then
      L8_62 = sysio
      L8_62 = L8_62.GetRegValueAsString
      L8_62 = L8_62(L9_63, L10_64)
      L0_54 = L8_62
      if L0_54 ~= nil then
        L8_62 = sysio
        L8_62 = L8_62.IsFolderExists
        L8_62 = L8_62(L9_63)
        if L8_62 then
          L8_62 = sysio
          L8_62 = L8_62.FindFiles
          L8_62 = L8_62(L9_63, L10_64, L11_65)
          for L12_66, L13_67 in L9_63(L10_64) do
            RemoveGamarueLnk(L13_67)
          end
        end
      end
    end
  end
end
RemoveStartupLnk = L0_0
function L0_0(A0_68)
  local L1_69, L2_70, L3_71, L4_72, L5_73, L6_74, L7_75, L8_76, L9_77
  L1_69 = sysio
  L1_69 = L1_69.FindFiles
  L2_70 = A0_68
  L1_69 = L1_69(L2_70, L3_71, L4_72)
  L2_70 = false
  for L6_74, L7_75 in L3_71(L4_72) do
    L8_76 = string
    L8_76 = L8_76.lower
    L9_77 = L7_75
    L8_76 = L8_76(L9_77)
    L9_77 = L8_76
    L8_76 = L8_76.find
    L8_76 = L8_76(L9_77, "%(%d+gb%)%.lnk")
    if L8_76 ~= nil then
      L8_76 = sysio
      L8_76 = L8_76.IsFileExists
      L9_77 = L7_75
      L8_76 = L8_76(L9_77)
      if L8_76 then
        L2_70 = true
        L8_76 = MpCommon
        L8_76 = L8_76.ReportLowfi
        L9_77 = L7_75
        L8_76(L9_77, 2852551133)
        L8_76 = Remediation
        L8_76 = L8_76.BtrDeleteFile
        L9_77 = L7_75
        L8_76(L9_77)
      end
    end
  end
  if L2_70 then
    if L4_72 then
      for L8_76, L9_77 in L5_73(L6_74) do
        if sysio.IsFileExists(L9_77) then
          MpCommon.ReportLowfi(L9_77, 2852551133)
          Remediation.BtrDeleteFile(L9_77)
        end
      end
      L5_73(L6_74)
    end
  end
end
RemoveFilesInRemDrives = L0_0
function L0_0()
  local L0_78, L1_79, L2_80, L3_81, L4_82, L5_83, L6_84, L7_85, L8_86, L9_87
  L0_78 = Infrastructure_GetAvailableDrives
  L3_81 = L0_78()
  L4_82 = #L1_79
  if L4_82 > 0 then
    for L8_86, L9_87 in L5_83(L6_84) do
      RemoveFilesInRemDrives(L9_87)
    end
  end
end
CleanRemovableDrives = L0_0
L0_0 = Remediation
L0_0 = L0_0.Threat
L0_0 = L0_0.Active
if L0_0 then
  L0_0 = sysio
  L0_0 = L0_0.RegOpenKey
  L1_1 = "HKLM\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Policies\\Explorer\\Run"
  L0_0 = L0_0(L1_1)
  L1_1 = remgam
  L1_1(L2_2, L3_3)
  L1_1 = sysio
  L1_1 = L1_1.RegExpandUserKey
  L1_1 = L1_1(L2_2)
  for L5_5, L6_6 in L2_2(L3_3) do
    L7_7 = sysio
    L7_7 = L7_7.RegOpenKey
    L8_8 = L6_6
    L7_7 = L7_7(L8_8)
    L8_8 = remgam
    L8_8(L7_7, false)
  end
  for L6_6, L7_7 in L3_3(L4_4) do
    L8_8 = sysio
    L8_8 = L8_8.RegOpenKey
    L8_8 = L8_8(L7_7)
    remgam(L8_8, true)
  end
  L3_3()
  L3_3()
  L3_3()
  L3_3()
  L3_3()
  L3_3()
  L3_3()
  L3_3()
end
