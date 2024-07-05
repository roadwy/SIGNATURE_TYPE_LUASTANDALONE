local L0_0
L0_0 = {
  "svchost%.exe",
  "consent%.exe",
  "rundll32%.exe",
  "spoolsv%.exe",
  "explorer%.exe",
  "rgjdu%.exe",
  "afwqs%.exe"
}
function RamnitDeleteEntries(A0_1, A1_2)
  local L2_3, L3_4, L4_5, L5_6, L6_7, L7_8, L8_9, L9_10, L10_11, L11_12, L12_13
  if A0_1 then
    L2_3 = sysio
    L2_3 = L2_3.RegEnumValues
    L2_3 = L2_3(L3_4)
    for L6_7, L7_8 in L3_4(L4_5) do
      for L11_12, L12_13 in L8_9(L9_10) do
        if string.match(L7_8, L12_13) then
          sysio.DeleteRegValue(A0_1, L7_8)
        end
      end
    end
  end
end
function RamnitFixTamperingRegEntries(A0_14)
  local L1_15, L2_16
  L1_15 = sysio
  L1_15 = L1_15.RegOpenKey
  L2_16 = A0_14
  L2_16 = L2_16 .. "Processes"
  L1_15 = L1_15(L2_16)
  L2_16 = sysio
  L2_16 = L2_16.RegOpenKey
  L2_16 = L2_16(A0_14 .. "Extensions")
  RamnitDeleteEntries(L1_15, _UPVALUE0_)
  RamnitDeleteEntries(L2_16, _UPVALUE1_)
end
function RepairServiceAtPath(A0_17, A1_18, A2_19)
  local L3_20, L4_21, L5_22
  A2_19 = A2_19 or A0_17
  L3_20 = false
  L4_21 = "HKLM\\SYSTEM\\"
  L5_22 = A1_18
  L4_21 = L4_21 .. L5_22 .. "\\services\\" .. A0_17
  L5_22 = sysio
  L5_22 = L5_22.RegOpenKey
  L5_22 = L5_22(L4_21)
  if L5_22 then
    if sysio.GetRegValueAsDword(L5_22, "Start") == 4 or sysio.GetRegValueAsString(L5_22, "DeleteFlag") then
      L3_20 = true
    end
  else
    L3_20 = true
  end
  if L3_20 then
    Remediation.DefaultSpecialRegistry("HKLM\\SYSTEM\\CurrentControlSet\\services\\" .. A2_19, L4_21)
  end
  if L3_20 and sysio.RegOpenKey(L4_21) then
    return true
  else
    return false
  end
end
function RepairServicesAndComponents()
  local L0_23, L1_24, L2_25, L3_26, L4_27, L5_28, L6_29, L7_30, L8_31, L9_32, L10_33
  L0_23 = false
  L1_24 = Infrastructure_CheckMSEpresence
  L1_24 = L1_24()
  L2_25 = true
  L3_26 = Info
  L3_26 = L3_26.OSType
  if L3_26 then
    L3_26 = Info
    L3_26 = L3_26.OSType
    if L3_26 == "Server" then
      L2_25 = false
    end
  end
  L3_26 = sysio
  L3_26 = L3_26.RegOpenKey
  L4_27 = "HKLM\\SYSTEM"
  L3_26 = L3_26(L4_27)
  if L3_26 then
    L4_27 = sysio
    L4_27 = L4_27.RegEnumKeys
    L4_27 = L4_27(L5_28)
    if L4_27 then
      for L8_31, L9_32 in L5_28(L6_29) do
        L10_33 = string
        L10_33 = L10_33.match
        L10_33 = L10_33(L9_32, "ControlSet%d%d%d")
        if L10_33 then
          L10_33 = RepairServiceAtPath
          L10_33 = L10_33("MpsSvc", L9_32)
          L0_23 = L10_33 or L0_23
          L10_33 = RepairServiceAtPath
          L10_33 = L10_33("wuauserv", L9_32)
          L0_23 = L10_33 or L0_23
          L10_33 = RepairServiceAtPath
          L10_33 = L10_33("BITS", L9_32)
          L0_23 = L10_33 or L0_23
          if L2_25 then
            L10_33 = RepairServiceAtPath
            L10_33 = L10_33("wscsvc", L9_32)
            L0_23 = L10_33 or L0_23
            L10_33 = RepairServiceAtPath
            L10_33 = L10_33("WinDefend", L9_32)
            L0_23 = L10_33 or L0_23
          end
          if L1_24 then
            L10_33 = RepairServiceAtPath
            L10_33 = L10_33("MsMpSvc", L9_32, "MsMpSvc_Camp")
            L0_23 = L10_33 or L0_23
          end
          L10_33 = sysio
          L10_33 = L10_33.RegOpenSubkey
          L10_33 = L10_33(L3_26, L9_32 .. "\\services\\SharedAccess\\Parameters\\FirewallPolicy\\StandardProfile")
          if L10_33 then
            sysio.SetRegValueAsDword(L10_33, "EnableFirewall", 1)
          end
        end
      end
    end
  end
  L4_27 = Remediation
  L4_27 = L4_27.DefaultSpecialRegistry
  L4_27(L5_28)
  L4_27 = Infrastructure_EnableUAC
  L4_27()
  if L0_23 then
    L4_27 = Remediation
    L4_27 = L4_27.SetRebootRequired
    L4_27()
  end
end
if Remediation.Threat.Active then
  if Infrastructure_CheckMSEpresence() then
    RamnitFixTamperingRegEntries("HKLM\\SOFTWARE\\Microsoft\\Microsoft Antimalware\\Exclusions\\")
  elseif Infrastructure_CheckDefenderpresence() then
    RamnitFixTamperingRegEntries("HKLM\\SOFTWARE\\Microsoft\\Windows Defender\\Exclusions\\")
  end
  RepairServicesAndComponents()
end
