local L0_0, L1_1
function L0_0()
  local L0_2, L1_3
  L0_2 = {}
  L0_2.Name = "Use advanced protection against ransomware"
  L0_2.Description = "Windows Defender Exploit Guard detected execution of file that exhibit characteristics similar to ransomware"
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
  L0_5["%systemroot%\\system32\\vssadmin.exe"] = 2
  L0_5["%systemroot%\\system32\\wbem\\wmic.exe"] = 2
  L0_5["%systemroot%\\syswow64\\wbem\\wmic.exe"] = 2
  return L0_5
end
GetPathInclusions = L0_0
function L0_0()
  local L2_7
  L2_7 = "vssadmin(\\.exe)?[\\s\\\"]+delete\\s+shadows"
  return {
    [L2_7] = 0,
    ["wmic(\\.exe)?[\\s\\\"]+shadowcopy\\s+delete"] = 0
  }
end
GetCommandLineInclusions = L0_0
