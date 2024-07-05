local L0_0, L1_1
function L0_0()
  local L0_2, L1_3
  L0_2 = {}
  L0_2.Name = "Block Process Creations originating from PSExec & WMI commands"
  L0_2.Description = "Windows Defender Exploit Guard detected remoting application (wmiprvse and psexesvc) creating child process"
  L0_2.NotificationDedupingInterval = 120
  L1_3 = HIPS
  L1_3 = L1_3.DEDUPE_SCOPE_UI
  L0_2.NotificationDedupingScope = L1_3
  return L0_2
end
GetRuleInfo = L0_0
function L0_0()
  local L0_4, L1_5, L2_6
  L0_4 = {}
  L0_4["%windir%\\system32\\wbem\\WmiPrvSE.exe"] = 2
  L0_4["%windir%\\PSEXESVC.exe"] = 2
  L1_5 = 1
  L2_6 = L0_4
  return L1_5, L2_6
end
GetMonitoredLocations = L0_0
function L0_0()
  local L0_7, L1_8
  L0_7 = {}
  L0_7["%windir%\\system32\\wbem\\WmiPrvSE.exe"] = 2
  L0_7["%windir%\\system32\\wbem\\mofcomp.exe"] = 2
  L0_7["%windir%\\system32\\svchost.exe"] = 2
  L0_7["%windir%\\system32\\WerFault.exe"] = 2
  L0_7["%windir%\\system32\\wuauclt.exe"] = 2
  L0_7["%windir%\\system32\\gpupdate.exe"] = 2
  L0_7["%windir%\\SysWOW64\\wbem\\WmiPrvSE.exe"] = 2
  L0_7["%windir%\\SysWOW64\\wbem\\mofcomp.exe"] = 2
  L0_7["%windir%\\SysWOW64\\svchost.exe"] = 2
  L0_7["%windir%\\SysWOW64\\WerFault.exe"] = 2
  L0_7["%windir%\\SysWOW64\\wuauclt.exe"] = 2
  L0_7["%windir%\\SysWOW64\\gpupdate.exe"] = 2
  L0_7["%windir%\\system32\\spool\\drivers"] = 2
  L0_7["%windir%\\system32\\fsiso.exe"] = 2
  L0_7["%windir%\\PSEXESVC.exe"] = 2
  L0_7["%windir%\\Temp\\*\\DismHost.exe"] = 2
  L0_7["%systemdrive%\\MDE\\Tools\\MDEClientAnalyzer.exe"] = 2
  L0_7["%systemdrive%\\*\\Tools\\MDATPClientAnalyzer.exe"] = 2
  L0_7["%systemdrive%\\*\\WDATPDeploy\\MDATPClientAnalyzer\\MDATPClientAnalyzer.exe"] = 2
  L0_7["%windir%\\CCM\\Ccm32BitLauncher.exe"] = 2
  return L0_7
end
GetPathExclusions = L0_0
function L0_0()
  local L7_9
  L7_9 = ".:\\\\windows\\\\ccmcache\\\\.+"
  return {
    [L7_9] = 0,
    [".:\\\\windows\\\\ccm\\\\systemtemp\\\\.+"] = 0,
    [".:\\\\windows\\\\ccm\\\\sensorframework\\\\.+"] = 0,
    [".:\\\\windows\\\\ccm\\\\signedscripts\\\\.+"] = 0,
    ["cmd[^\\s]*\\s+/c\\s+\\\"chcp\\s+65001\\s+&\\s+.:\\\\windows\\\\system32\\\\inetsrv\\\\appcmd\\.exe\\s+list[^>]+>\\s+\\\"\\\\\\\\127\\.0\\.0\\.1\\\\.\\$\\\\temp\\\\[^\\\"]+\\\"\\s+2>&1\\\""] = 0,
    ["\\s+(.:\\\\windows\\\\temp\\\\)?nessus_[^\\.\\s]+\\.txt[\\\"\\'\\;\\s]*$"] = 0,
    [".:\\\\windows\\\\system32\\\\msiexec\\.exe\\s+.+\\{a38ee409\\-424d\\-4a0d\\-b5b6\\-5d66f20f62a5\\}\\s+.+.:\\\\windows\\\\temp\\\\nmwlogs\\\\wvdapps\\\\agentbootloaderuninstall\\.log"] = 0
  }
end
GetCommandLineExclusions = L0_0
function L0_0()
  local L2_10
  L2_10 = "cmd(\\.exe)?\\s+\\/c\\s+\\\"*(.:\\\\.+\\.cmd)\\\"*"
  return {
    [L2_10] = 0,
    ["cmd(\\.exe)?\\\"?\\s+\\/c\\s+\\\"?(.:\\\\.+\\.exe)\\\"?"] = 0
  }
end
GetCommandLineRegExpList = L0_0
