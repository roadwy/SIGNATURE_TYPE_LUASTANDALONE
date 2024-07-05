local L0_0, L1_1
function L0_0()
  local L0_2, L1_3
  L0_2 = {}
  L0_2.Name = "Controlled folder access"
  L0_2.Description = "Windows Defender Exploit Guard detected the unauthorized modification of files in protected folder"
  return L0_2
end
GetRuleInfo = L0_0
function L0_0()
  local L0_4, L1_5
  L0_4 = {}
  L0_4["%windir%\\SysWOW64\\WerFault.exe"] = 2
  L0_4["%windir%\\system32\\WerFault.exe"] = 2
  L0_4.Registry = 0
  L0_4.MemCompression = 0
  L0_4["%windir%\\system32\\bcdedit.exe"] = 2
  L0_4["%windir%\\system32\\MBR2GPT.EXE"] = 2
  L0_4["%windir%\\system32\\CompatTelRunner.exe"] = 2
  L0_4["%windir%\\system32\\ReAgentc.exe"] = 2
  L0_4["%windir%\\SysWOW64\\wbem\\WmiPrvSE.exe"] = 2
  L0_4["%windir%\\system32\\wbem\\WmiPrvSE.exe"] = 2
  L0_4["%windir%\\system32\\chkdsk.exe"] = 2
  L0_4["%windir%\\system32\\omadmclient.exe"] = 2
  L0_4["%windir%\\system32\\SearchIndexer.exe"] = 2
  L0_4["%windir%\\system32\\taskhostw.exe"] = 2
  L0_4["%windir%\\MpTaskBarRecover.exe"] = 2
  L0_4["%windir%\\MpRecoverTaskbar.exe"] = 2
  L0_4["%windir%\\system32\\services.exe"] = 2
  L0_4["%localappdata%\\microsoft\\Teams\\Update.exe"] = 1
  L0_4["%systemdrive%\\$WINDOWS.~BT\\Sources\\SetupHost.exe"] = 2
  L0_4["%systemdrive%\\$WINDOWS.~BT\\Work\\*\\DismHost.exe"] = 2
  L0_4["%temp%\\*\\DismHost.exe"] = 1
  L0_4["%windir%\\system32\\poqexec.exe"] = 2
  L0_4["%windir%\\winsxs\\*\\TiWorker.exe"] = 2
  L0_4["%windir%\\system32\\PackagedCWALauncher.exe"] = 2
  L0_4["%windir%\\SysWOW64\\PackagedCWALauncher.exe"] = 2
  L0_4["%windir%\\system32\\oobe\\SetupPlatform\\SetupPlatform.exe"] = 2
  L0_4["%windir%\\SoftwareDistribution\\Download\\*\\WindowsUpdateBox.exe"] = 2
  L0_4["%windir%\\system32\\MoUsoCoreWorker.exe"] = 2
  L0_4["%windir%\\UUS\\amd64\\MoUsoCoreWorker.exe"] = 2
  L0_4["%windir%\\UUS\\arm64\\MoUsoCoreWorker.exe"] = 2
  L0_4["%programdata%\\Microsoft\\Windows\\UUS\\Packages\\*\\amd64\\MoUsoCoreWorker.exe"] = 2
  L0_4["%windir%\\system32\\wuaucltcore.exe"] = 2
  L0_4["%windir%\\UUS\\amd64\\wuaucltcore.exe"] = 2
  L0_4["%windir%\\UUS\\arm64\\wuaucltcore.exe"] = 2
  L0_4["%programdata%\\Microsoft\\Windows\\UUS\\Packages\\*\\amd64\\wuaucltcore.exe"] = 2
  L0_4["%programfiles%\\ATERA Networks\\AteraAgent\\Packages\\AgentPackageMonitoring\\AgentPackageMonitoring.exe"] = 2
  return L0_4
end
GetPathExclusions = L0_0
