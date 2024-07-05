local L0_0, L1_1
function L0_0()
  local L0_2, L1_3
  L0_2 = {}
  L0_2.Name = "Block rebooting machine in Safe Mode"
  L0_2.Description = "Windows Defender Exploit Guard detected system changes to reboot machine in Safe Mode"
  L0_2.NotificationDedupingInterval = 120
  L1_3 = HIPS
  L1_3 = L1_3.DEDUPE_SCOPE_UI
  L0_2.NotificationDedupingScope = L1_3
  return L0_2
end
GetRuleInfo = L0_0
function L0_0()
  local L1_4
  L1_4 = HIPS
  L1_4 = L1_4.MONITOR_PROCESSCREATE
  return L1_4
end
GetMonitoredLocations = L0_0
function L0_0()
  local L0_5, L1_6
  L0_5 = {}
  L0_5["%systemroot%\\system32\\bcdedit.exe"] = 2
  L0_5["%systemroot%\\syswow64\\bcdedit.exe"] = 2
  L0_5["%systemroot%\\system32\\bootcfg.exe"] = 2
  L0_5["%systemroot%\\syswow64\\bootcfg.exe"] = 2
  return L0_5
end
GetPathInclusions = L0_0
function L0_0()
  local L3_7
  L3_7 = "bcdedit(\\.exe)?[\\s\\\"]+/set\\s+\\{[^\\}]+\\}\\s+safeboot"
  return {
    [L3_7] = 0,
    ["bcdedit(\\.exe)?[\\s\\\"]+-set\\s+\\{[^\\}]+\\}\\s+safeboot"] = 0,
    ["bootcfg(\\.exe)?[\\s\\\"]+/raw\\s+/a\\s+/safeboot"] = 0
  }
end
GetCommandLineInclusions = L0_0
