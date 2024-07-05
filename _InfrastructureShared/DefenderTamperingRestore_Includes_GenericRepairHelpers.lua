function Infrastructure_RestoreNonUxWDRootConfig()
  Infrastructure_RemoveDefenderDAVASPolicyKey()
  Infrastructure_RemoveDefenderDAVASPrefKey()
end
function Infrastructure_RestoreNonUxRealTimeProtections()
  local L0_0, L1_1, L2_2
  L0_0 = "hklm\\software\\microsoft\\windows defender\\real-time protection"
  L1_1 = "hklm\\software\\policies\\microsoft\\windows defender\\real-time protection"
  L2_2 = {
    "DisableBehaviorMonitoring",
    "DisableIOAVProtection",
    "DisableOnAccessProtection",
    "DisableScanOnRealtimeEnable",
    "DisableScriptScanning"
  }
  Infrastructure_DelRegKeyValuesIfExist(L0_0, L2_2)
  Infrastructure_DelRegKeyValuesIfExist(L1_1, L2_2)
end
function Infrastructure_RestoreNonUxThreatActions()
  local L0_3, L1_4, L2_5, L3_6, L4_7, L5_8, L6_9
  L0_3 = "hklm\\software\\microsoft\\windows defender\\threats\\ThreatSeverityDefaultAction"
  L1_4 = "hklm\\software\\policies\\microsoft\\windows defender\\threats\\ThreatSeverityDefaultAction"
  L2_5 = "hklm\\software\\policies\\microsoft\\windows defender\\policy manager\\ThreatSeverityDefaultAction"
  L3_6 = {
    L4_7,
    L5_8,
    L6_9,
    "5"
  }
  L4_7 = "1"
  L5_8 = "2"
  L6_9 = "4"
  L4_7 = Infrastructure_DelRegKeyValuesIfExist
  L5_8 = L0_3
  L6_9 = L3_6
  L4_7(L5_8, L6_9)
  L4_7 = Infrastructure_DelRegKeyValuesIfExist
  L5_8 = L1_4
  L6_9 = L3_6
  L4_7(L5_8, L6_9)
  L4_7 = Infrastructure_DelRegKeyValuesIfExist
  L5_8 = L2_5
  L6_9 = L3_6
  L4_7(L5_8, L6_9)
  L4_7 = "hklm\\software\\microsoft\\windows defender\\threats\\ThreatTypeDefaultAction"
  L5_8 = "hklm\\software\\policies\\microsoft\\windows defender\\threats\\ThreatTypeDefaultAction"
  L6_9 = {
    "0",
    "1",
    "2",
    "3"
  }
  Infrastructure_DelRegKeyValuesIfExist(L4_7, L6_9)
  Infrastructure_DelRegKeyValuesIfExist(L5_8, L6_9)
end
function Infrastructure_RestoreNonUxSpynet()
  local L0_10, L1_11, L2_12
  L0_10 = "hklm\\software\\microsoft\\windows defender\\spynet"
  L1_11 = "hklm\\software\\policies\\microsoft\\windows defender\\spynet"
  L2_12 = {
    "DisableBlockAtFirstSeen"
  }
  Infrastructure_DelRegKeyValuesIfExist(L0_10, L2_12)
  Infrastructure_DelRegKeyValuesIfExist(L1_11, L2_12)
end
function Infrastructure_RestoreNonUxPolicyManager()
  local L0_13, L1_14
  L0_13 = "hklm\\software\\policies\\microsoft\\windows defender\\policy manager"
  L1_14 = {
    "AllowBehaviorMonitoring",
    "AllowIOAVProtection",
    "AllowOnAccessProtection",
    "AllowScriptScanning"
  }
  Infrastructure_DelRegKeyValuesIfExist(L0_13, L1_14)
end
function Infrastructure_RestoreNonUxControlledWDDefaults()
  Infrastructure_RestoreNonUxWDRootConfig()
  Infrastructure_RestoreNonUxRealTimeProtections()
  Infrastructure_RestoreNonUxThreatActions()
  Infrastructure_RestoreNonUxSpynet()
  Infrastructure_RestoreNonUxPolicyManager()
end
Infrastructure_RestoreNonUxControlledWDDefaults()
