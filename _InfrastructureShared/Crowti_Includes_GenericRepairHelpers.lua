local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16
function L0_0(A0_17, A1_18)
  local L2_19, L3_20, L4_21, L5_22, L6_23, L7_24, L8_25, L9_26, L10_27
  L3_20 = sysio
  L3_20 = L3_20.RegExpandUserKey
  L3_20 = L3_20(L4_21)
  for L7_24, L8_25 in L4_21(L5_22) do
    L9_26 = sysio
    L9_26 = L9_26.RegOpenKey
    L10_27 = L8_25
    L9_26 = L9_26(L10_27)
    if L9_26 then
      L10_27 = sysio
      L10_27 = L10_27.GetRegValueAsString
      L10_27 = L10_27(L9_26, "Startup")
      L2_19 = L10_27
      L10_27 = sysio
      L10_27 = L10_27.IsFolderExists
      L10_27 = L10_27(L2_19)
      if L10_27 then
        L10_27 = L2_19
        L10_27 = L10_27 .. "\\" .. A0_17
        if sysio.IsFileExists(L10_27) and A1_18 == sysio.GetFileSize(L10_27) then
          Remediation.BtrDeleteFile(L10_27)
        end
      end
    end
  end
end
RemoveStartupFileCmpFileNameAndSize = L0_0
function L0_0(A0_28, A1_29, A2_30)
  local L3_31, L4_32, L5_33, L6_34, L7_35, L8_36, L9_37, L10_38
  L3_31 = sysio
  L3_31 = L3_31.RegOpenKey
  L4_32 = A0_28
  L3_31 = L3_31(L4_32)
  L4_32 = nil
  if L3_31 then
    L5_33 = sysio
    L5_33 = L5_33.RegEnumValues
    L5_33 = L5_33(L6_34)
    for L9_37, L10_38 in L6_34(L7_35) do
      if L10_38 then
        L4_32 = sysio.GetRegValueAsString(L3_31, L10_38)
        if L4_32 then
          L4_32 = string.lower(L4_32)
          if sysio.IsFileExists(L4_32) and string.find(L4_32, A1_29, 1, true) and A2_30 == sysio.GetFileSize(L4_32) then
            sysio.DeleteRegValue(L3_31, L10_38)
            return true
          end
        end
      end
    end
  end
  L5_33 = false
  return L5_33
end
CompareRegValueFileSizeAndRemove = L0_0
function L0_0(A0_39, A1_40, A2_41)
  local L3_42, L4_43, L5_44, L6_45, L7_46, L8_47
  if A1_40 and A2_41 > 256 then
    L3_42(L4_43, L5_44, L6_45)
    for L6_45, L7_46 in L3_42(L4_43) do
      L8_47 = CompareRegValueFileSizeAndRemove
      L8_47(L7_46, A1_40, A2_41)
    end
    for L7_46, L8_47 in L4_43(L5_44) do
      CompareRegValueFileSizeAndRemove(L8_47, A1_40, A2_41)
    end
    L4_43(L5_44, L6_45)
  end
end
RemoveCrowtiASEPs = L0_0
L0_0 = Remediation
L0_0 = L0_0.Threat
L0_0 = L0_0.Active
if L0_0 then
  L0_0, L1_1, L2_2, L3_3, L4_4 = nil, nil, nil, nil, nil
  L5_5 = sysio
  L5_5 = L5_5.RegExpandUserKey
  L5_5 = L5_5(L6_6)
  for L9_9, L10_10 in L6_6(L7_7) do
    L0_0 = L11_11
    if L0_0 then
      L1_1 = L11_11
      for L14_14, L15_15 in L11_11(L12_12) do
        if L15_15 then
          L16_16 = sysio
          L16_16 = L16_16.GetRegValueAsString
          L16_16 = L16_16(L0_0, L15_15)
          L4_4 = L16_16
          if L4_4 then
            L16_16 = string
            L16_16 = L16_16.match
            L16_16 = L16_16(L4_4, "^%a:\\([0-9a-z]+)\\([0-9a-z]+)%.exe")
            if L16_16 ~= nil and L16_16(L4_4, "^%a:\\([0-9a-z]+)\\([0-9a-z]+)%.exe") ~= nil and L16_16 == L16_16(L4_4, "^%a:\\([0-9a-z]+)\\([0-9a-z]+)%.exe") and string.len(L16_16) >= 7 and string.len(L16_16) <= 8 then
              L2_2 = L16_16 .. ".exe"
              sysio.DeleteRegValue(L0_0, L15_15)
              if sysio.IsFileExists(L4_4) then
                L3_3 = sysio.GetFileSize(L4_4)
                Remediation.BtrDeleteFile(L4_4)
                RemoveCrowtiASEPs(L5_5, L2_2, L3_3)
                MpCommon.ReportLowfi(L4_4, 2546441377)
              end
            end
          end
        end
      end
    end
  end
end
function L0_0()
  local L0_48, L1_49, L2_50, L3_51, L4_52, L5_53, L6_54, L7_55, L8_56, L9_57
  L0_48 = false
  L1_49 = true
  L2_50 = Info
  L2_50 = L2_50.OSType
  if L2_50 then
    L2_50 = Info
    L2_50 = L2_50.OSType
    if L2_50 == "Server" then
      L1_49 = false
    end
  end
  L2_50 = sysio
  L2_50 = L2_50.RegOpenKey
  L3_51 = "HKLM\\SYSTEM"
  L2_50 = L2_50(L3_51)
  if L2_50 then
    L3_51 = sysio
    L3_51 = L3_51.RegEnumKeys
    L3_51 = L3_51(L4_52)
    if L3_51 then
      for L7_55, L8_56 in L4_52(L5_53) do
        L9_57 = string
        L9_57 = L9_57.match
        L9_57 = L9_57(L8_56, "ControlSet%d%d%d")
        if L9_57 then
          L9_57 = Infrastructure_RepairServiceAtPath
          L9_57 = L9_57("wuauserv", L8_56)
          L0_48 = L9_57 or L0_48
          L9_57 = Infrastructure_RepairServiceAtPath
          L9_57 = L9_57("BITS", L8_56)
          L0_48 = L9_57 or L0_48
          L9_57 = Infrastructure_RepairServiceAtPath
          L9_57 = L9_57("WerSvc", L8_56)
          L0_48 = L9_57 or L0_48
          if L1_49 then
            L9_57 = Infrastructure_RepairServiceAtPath
            L9_57 = L9_57("wscsvc", L8_56)
            L0_48 = L9_57 or L0_48
            L9_57 = Infrastructure_RepairServiceAtPath
            L9_57 = L9_57("WinDefend", L8_56)
            L0_48 = L9_57 or L0_48
          end
          L9_57 = sysio
          L9_57 = L9_57.RegOpenSubkey
          L9_57 = L9_57(L2_50, L8_56 .. "\\services\\SharedAccess\\Parameters\\FirewallPolicy\\StandardProfile")
          if L9_57 then
            sysio.SetRegValueAsDword(L9_57, "EnableFirewall", 1)
          end
        end
      end
    end
  end
  L3_51 = Remediation
  L3_51 = L3_51.DefaultSpecialRegistry
  L3_51(L4_52)
  L3_51 = Infrastructure_EnableUAC
  L3_51()
  L3_51 = Infrastructure_EnableSystemRestore
  L3_51()
  if L0_48 then
    L3_51 = Remediation
    L3_51 = L3_51.SetRebootRequired
    L3_51()
  end
end
RepairServicesAndComponents = L0_0
L0_0 = Remediation
L0_0 = L0_0.Threat
L0_0 = L0_0.Active
if not L0_0 then
  L0_0 = string
  L0_0 = L0_0.match
  L1_1 = Remediation
  L1_1 = L1_1.Threat
  L1_1 = L1_1.Name
  L2_2 = "Ransom:Win32/Crowti"
  L0_0 = L0_0(L1_1, L2_2)
elseif L0_0 then
  L0_0 = RepairServicesAndComponents
  L0_0()
end
