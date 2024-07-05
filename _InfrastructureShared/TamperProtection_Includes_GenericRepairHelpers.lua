local L0_0, L1_1
function L0_0()
  local L0_2, L1_3, L2_4
  L0_2 = "hklm\\software\\microsoft\\windows defender"
  L1_3 = "hklm\\software\\policies\\microsoft\\windows defender"
  L2_4 = {}
  L2_4.disableantivirus = 0
  L2_4.disableantispyware = 0
  if Infrastructure_ReportFirstRegistryValueCheckDefaultDW(3449, L0_2, L2_4) then
    return true
  end
  if Infrastructure_ReportFirstRegistryValueCheckDefaultDW(3449, L1_3, L2_4) then
    return true
  end
end
Infrastructure_CheckNonUxWDRootConfig = L0_0
function L0_0()
  local L0_5, L1_6, L2_7
  L0_5 = "hklm\\software\\microsoft\\windows defender\\real-time protection"
  L1_6 = "hklm\\software\\policies\\microsoft\\windows defender\\real-time protection"
  L2_7 = {}
  L2_7.DisableBehaviorMonitoring = 0
  L2_7.DisableIOAVProtection = 0
  L2_7.DisableOnAccessProtection = 0
  L2_7.DisableScanOnRealtimeEnable = 0
  L2_7.DisableScriptScanning = 0
  if Infrastructure_ReportFirstRegistryValueCheckDefaultDW(3449, L0_5, L2_7) then
    return true
  end
  if Infrastructure_ReportFirstRegistryValueCheckDefaultDW(3449, L1_6, L2_7) then
    return true
  end
end
Infrastructure_CheckNonUxRealTimeProtections = L0_0
function L0_0()
  local L0_8, L1_9, L2_10, L3_11, L4_12, L5_13, L6_14, L7_15, L8_16, L9_17, L10_18, L11_19, L12_20, L13_21
  L0_8 = "hklm\\software\\microsoft\\windows defender\\threats\\ThreatSeverityDefaultAction"
  L1_9 = "hklm\\software\\policies\\microsoft\\windows defender\\threats\\ThreatSeverityDefaultAction"
  L2_10 = "hklm\\software\\policies\\microsoft\\windows defender\\policy manager\\ThreatSeverityDefaultAction"
  L3_11 = {
    L4_12,
    L5_13,
    L6_14,
    L7_15
  }
  L4_12 = "1"
  L5_13 = "2"
  L4_12 = {L5_13, L6_14}
  L5_13 = 6
  L5_13 = {
    L6_14,
    L7_15,
    L8_16
  }
  for L9_17, L10_18 in L6_14(L7_15) do
    L12_20 = 3449
    L13_21 = L10_18
    if L11_19 then
      return L11_19
    end
  end
  L5_13 = L9_17
  for L12_20, L13_21 in L9_17(L10_18) do
    if Infrastructure_ReportFirstRegistryValueIfValueArrMatch(3449, L13_21, L8_16, L4_12) then
      return true
    end
  end
end
Infrastructure_CheckNonUxThreatActions = L0_0
function L0_0()
  local L0_22, L1_23, L2_24, L3_25, L4_26, L5_27, L6_28, L7_29, L8_30
  L0_22 = "hklm\\software\\microsoft\\windows defender\\spynet"
  L1_23 = "hklm\\software\\policies\\microsoft\\windows defender\\spynet"
  L2_24 = {}
  L2_24.DisableBlockAtFirstSeen = 0
  L3_25 = {L4_26, L5_27}
  for L7_29, L8_30 in L4_26(L5_27) do
    if Infrastructure_ReportFirstRegistryValueCheckDefaultDW(3449, L8_30, L2_24) then
      return true
    end
  end
end
Infrastructure_CheckNonUxSpynet = L0_0
function L0_0()
  local L0_31, L1_32
  L0_31 = "hklm\\software\\policies\\microsoft\\windows defender\\policy manager"
  L1_32 = {}
  L1_32.AllowBehaviorMonitoring = 1
  L1_32.AllowIOAVProtection = 1
  L1_32.AllowOnAccessProtection = 1
  L1_32.AllowScriptScanning = 1
  if Infrastructure_ReportFirstRegistryValueCheckDefaultDW(3449, L0_31, L1_32) then
    return true
  end
end
Infrastructure_CheckNonUxPolicyManager = L0_0
function L0_0()
  if Infrastructure_CheckNonUxWDRootConfig() or Infrastructure_CheckNonUxRealTimeProtections() or Infrastructure_CheckNonUxThreatActions() or Infrastructure_CheckNonUxSpynet() or Infrastructure_CheckNonUxPolicyManager() then
    return true
  end
end
Infrastructure_CheckNonUxControlledWDDefaults = L0_0
function L0_0()
  local L0_33
  L0_33 = {
    "5fe1bc3b-41bf-4197-8ffe-da2311848f06"
  }
  if versioning.IsServer() or Infrastructure_HasAnyPartnerGuid(L0_33) then
    return false
  end
  if MpCommon.GetGlobalMpAttribute("IsMSRTProduct") then
    return false
  end
  return Info.Offline or not Infrastructure_IsE3() and not Infrastructure_IsE5() and Info.OSMajorVersion == 10
end
Infrastructure_ShouldRunAntiTamperingRepair = L0_0
function L0_0()
  if Infrastructure_ShouldRunAntiTamperingRepair() then
    Infrastructure_CheckNonUxControlledWDDefaults()
  end
  return
end
Infrastructure_AntiTamperingCheckAndRepair = L0_0
function L0_0()
  local L0_34, L1_35, L2_36, L3_37, L4_38, L5_39, L6_40, L7_41, L8_42, L9_43, L10_44, L11_45, L12_46, L13_47
  L0_34 = MpCommon
  L0_34 = L0_34.GetGlobalMpAttribute
  L1_35 = "IsMSRTProduct"
  L0_34 = L0_34(L1_35)
  if L0_34 then
    L0_34 = {L1_35, L2_36}
    L1_35 = "hklm\\software\\microsoft\\windows defender"
    L1_35 = {L2_36, L3_37}
    for L5_39, L6_40 in L2_36(L3_37) do
      L7_41 = sysio
      L7_41 = L7_41.RegOpenKey
      L7_41 = L7_41(L8_42)
      if L7_41 then
        for L11_45, L12_46 in L8_42(L9_43) do
          L13_47 = sysio
          L13_47 = L13_47.GetRegValueAsDword
          L13_47 = L13_47(L7_41, L12_46)
          if L13_47 and bitand(L13_47, 1) == 1 then
            MpCommon.SetGlobalMpAttribute("DefenderTamperingCheckRegKeyScan")
            MpDetection.ScanResource(string.format("regkeyvalue://%s\\\\%s", L6_40, L12_46))
            MpCommon.DeleteGlobalMpAttribute("DefenderTamperingCheckRegKeyScan")
            return
          end
        end
      end
    end
  end
  return
end
Infrastructure_MSRTDASTelemetry = L0_0
function L0_0()
  local L0_48, L1_49, L2_50, L3_51, L4_52
  L0_48 = "hklm\\software\\policies\\microsoft\\windows defender"
  L1_49 = "hklm\\software\\policies\\microsoft\\windows defender\\policy manager"
  L2_50 = sysio
  L2_50 = L2_50.RegOpenKey
  L3_51 = L0_48
  L2_50 = L2_50(L3_51)
  if L2_50 then
    L3_51 = sysio
    L3_51 = L3_51.GetRegValueAsDword
    L4_52 = L2_50
    L3_51 = L3_51(L4_52, "DisableSpecialRunningModes")
    if L3_51 and L3_51 ~= 0 then
      L4_52 = string
      L4_52 = L4_52.format
      L4_52 = L4_52("MpCfgScanDisableSpecialRunningModes%s", L3_51)
      MpCommon.SetGlobalMpAttribute(L4_52)
      MpDetection.ScanResource(string.format("regkeyvalue://%s\\\\DisableSpecialRunningModes", L0_48))
      MpCommon.DeleteGlobalMpAttribute(L4_52)
      return
    end
  end
  L3_51 = sysio
  L3_51 = L3_51.RegOpenKey
  L4_52 = L1_49
  L3_51 = L3_51(L4_52)
  L2_50 = L3_51
  if L2_50 then
    L3_51 = sysio
    L3_51 = L3_51.GetRegValueAsDword
    L4_52 = L2_50
    L3_51 = L3_51(L4_52, "DisableSpecialRunningModes")
    if L3_51 and L3_51 ~= 0 then
      L4_52 = string
      L4_52 = L4_52.format
      L4_52 = L4_52("MpCfgScanDisableSpecialRunningModes%s", L3_51)
      MpCommon.SetGlobalMpAttribute(L4_52)
      MpDetection.ScanResource(string.format("regkeyvalue://%s\\\\DisableSpecialRunningModes", L1_49))
      MpCommon.DeleteGlobalMpAttribute(L4_52)
    end
  end
end
Infrastructure_ScanMpCfgDefaults = L0_0
function L0_0(A0_53)
  local L1_54, L2_55, L3_56, L4_57
  L1_54 = 60
  L2_55 = "MpTamperProtectionState"
  if A0_53 == nil then
    A0_53 = true
  end
  if A0_53 then
    L3_56 = MpCommon
    L3_56 = L3_56.QueryPersistContextNoPath
    L4_57 = L2_55
    L3_56 = L3_56(L4_57, "off")
    if L3_56 then
      L3_56 = false
      return L3_56
    end
    L3_56 = MpCommon
    L3_56 = L3_56.QueryPersistContextNoPath
    L4_57 = L2_55
    L3_56 = L3_56(L4_57, "on")
    if L3_56 then
      L3_56 = true
      return L3_56
    end
  end
  L3_56 = sysio
  L3_56 = L3_56.RegOpenKey
  L4_57 = "HKLM\\SOFTWARE\\Microsoft\\Windows Defender\\Features"
  L3_56 = L3_56(L4_57)
  if L3_56 then
    L4_57 = sysio
    L4_57 = L4_57.GetRegValueAsDword
    L4_57 = L4_57(L3_56, "TamperProtection")
    if L4_57 then
      if crypto.bitand(L4_57, 1) == 1 then
        MpCommon.SetPersistContextNoPath(L2_55, {"on"}, L1_54)
        return L4_57
      else
        MpCommon.SetPersistContextNoPath(L2_55, {"off"}, L1_54)
        return false
      end
    end
  end
  L4_57 = false
  return L4_57
end
isTamperProtectionOn = L0_0
function L0_0()
  local L0_58, L1_59, L2_60, L3_61, L4_62, L5_63, L6_64
  L0_58 = isTamperProtectionOn
  L0_58 = L0_58()
  if L0_58 == false then
    return
  end
  L0_58 = false
  L1_59 = false
  L2_60 = false
  L3_61 = false
  L4_62 = sysio
  L4_62 = L4_62.RegOpenKey
  L5_63 = "HKLM\\SOFTWARE\\Microsoft\\Windows Defender"
  L4_62 = L4_62(L5_63)
  if L4_62 then
    L5_63 = sysio
    L5_63 = L5_63.GetRegValueAsDword
    L6_64 = L4_62
    L5_63 = L5_63(L6_64, "ManagedDefenderProductType")
    if L5_63 and L5_63 == 6 then
      L0_58 = true
    end
  end
  L5_63 = sysio
  L5_63 = L5_63.RegOpenKey
  L6_64 = "HKLM\\SOFTWARE\\Microsoft\\Windows Defender\\Features"
  L5_63 = L5_63(L6_64)
  if L5_63 then
    L6_64 = sysio
    L6_64 = L6_64.GetRegValueAsDword
    L6_64 = L6_64(L5_63, "SenseEnabled")
    if L6_64 and L6_64 == 1 then
      L1_59 = true
    end
    L6_64 = sysio.GetRegValueAsDword(L5_63, "TPExclusions")
    if L6_64 and L6_64 == 1 then
      L3_61 = true
    end
  end
  L6_64 = sysio
  L6_64 = L6_64.RegOpenKey
  L6_64 = L6_64("HKLM\\SOFTWARE\\Policies\\Microsoft\\Windows Defender\\Policy Manager")
  if L6_64 and sysio.GetRegValueAsDword(L6_64, "DisableLocalAdminMerge") and sysio.GetRegValueAsDword(L6_64, "DisableLocalAdminMerge") == 1 then
    L2_60 = true
  end
  if L0_58 and L1_59 and L2_60 and L3_61 then
    MpCommon.SetGlobalMpAttribute("EnableTPExclusions")
    MpDetection.ScanResource("regkeyvalue://HKLM\\SOFTWARE\\Microsoft\\Windows Defender\\Features\\\\TPExclusions")
    MpCommon.DeleteGlobalMpAttribute("EnableTPExclusions")
  end
  if L0_58 and L1_59 and L2_60 then
    MpCommon.SetGlobalMpAttribute("EnableDLAM")
    MpDetection.ScanResource("regkeyvalue://HKLM\\SOFTWARE\\Policies\\Microsoft\\Windows Defender\\Policy Manager\\\\DisableLocalAdminMerge")
    MpCommon.DeleteGlobalMpAttribute("EnableDLAM")
    return true
  end
end
Infrastructure_DLAMTelemetry = L0_0
function L0_0()
  local L0_65
  L0_65 = versioning
  L0_65 = L0_65.IsSeville
  L0_65 = L0_65()
  if not L0_65 then
    return
  end
  L0_65 = sysio
  L0_65 = L0_65.RegOpenKey
  L0_65 = L0_65("HKLM\\SOFTWARE\\Microsoft\\Windows Defender\\Exclusions\\Extensions")
  if L0_65 and sysio.RegEnumValues(L0_65) then
    MpCommon.SetGlobalMpAttribute("ExclusionSet")
    MpDetection.ScanResource("regkeyvalue://HKLM\\SOFTWARE\\Microsoft\\Windows Defender\\Features\\\\SenseEnabled")
    MpCommon.DeleteGlobalMpAttribute("ExclusionSet")
    return true
  end
  L0_65 = sysio.RegOpenKey("HKLM\\SOFTWARE\\Policies\\Microsoft\\Windows Defender\\Exclusions\\Extensions")
  if L0_65 and sysio.RegEnumValues(L0_65) then
    MpCommon.SetGlobalMpAttribute("ExclusionSet")
    MpDetection.ScanResource("regkeyvalue://HKLM\\SOFTWARE\\Microsoft\\Windows Defender\\Features\\\\SenseEnabled")
    MpCommon.DeleteGlobalMpAttribute("ExclusionSet")
    return true
  end
  L0_65 = sysio.RegOpenKey("HKLM\\SOFTWARE\\Microsoft\\Windows Defender\\Exclusions\\Paths")
  if L0_65 and sysio.RegEnumValues(L0_65) then
    MpCommon.SetGlobalMpAttribute("ExclusionSet")
    MpDetection.ScanResource("regkeyvalue://HKLM\\SOFTWARE\\Microsoft\\Windows Defender\\Features\\\\SenseEnabled")
    MpCommon.DeleteGlobalMpAttribute("ExclusionSet")
    return true
  end
  L0_65 = sysio.RegOpenKey("HKLM\\SOFTWARE\\Policies\\Microsoft\\Windows Defender\\Exclusions\\Paths")
  if L0_65 and sysio.RegEnumValues(L0_65) then
    MpCommon.SetGlobalMpAttribute("ExclusionSet")
    MpDetection.ScanResource("regkeyvalue://HKLM\\SOFTWARE\\Microsoft\\Windows Defender\\Features\\\\SenseEnabled")
    MpCommon.DeleteGlobalMpAttribute("ExclusionSet")
    return true
  end
  return true
end
Infrastructure_ExclusionTelemetry = L0_0
