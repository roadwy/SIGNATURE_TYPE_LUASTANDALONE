local L0_0, L1_1
function L0_0()
  local L0_2
  L0_2 = {}
  L0_2.Name = "Block Office applications from injecting code into other processes"
  L0_2.Description = "Windows Defender Exploit Guard detected Office application injecting code into the process."
  L0_2.NotificationDedupingInterval = 14400
  L0_2.NotificationDedupingScope = HIPS.DEDUPE_SCOPE_ALL
  L0_2.Type = HIPS.bitor(HIPS.RULE_DISABLE_AUDIT_INHERITANCE, HIPS.RULE_DISABLE_BLOCK_INHERITANCE)
  L0_2.Flags = HIPS.NO_INVOLVEDDOC_EXCL
  return L0_2
end
GetRuleInfo = L0_0
function L0_0()
  local L0_3, L1_4, L2_5
  L0_3 = {}
  L0_3["%programfiles(x86)%\\Microsoft Office\\root\\Office16\\WINWORD.EXE"] = 2
  L0_3["%programfiles(x86)%\\Microsoft Office\\root\\Office16\\EXCEL.EXE"] = 2
  L0_3["%programfiles(x86)%\\Microsoft Office\\root\\Office16\\POWERPNT.EXE"] = 2
  L0_3["%programfiles(x86)%\\Microsoft Office\\root\\Office16\\ONENOTE.EXE"] = 2
  L0_3["%programfiles(x86)%\\Microsoft Office\\root\\Office15\\WINWORD.EXE"] = 2
  L0_3["%programfiles(x86)%\\Microsoft Office\\root\\Office15\\EXCEL.EXE"] = 2
  L0_3["%programfiles(x86)%\\Microsoft Office\\root\\Office15\\POWERPNT.EXE"] = 2
  L0_3["%programfiles(x86)%\\Microsoft Office\\root\\Office15\\ONENOTE.EXE"] = 2
  L0_3["%programfiles(x86)%\\Microsoft Office\\root\\Office14\\WINWORD.EXE"] = 2
  L0_3["%programfiles(x86)%\\Microsoft Office\\root\\Office14\\EXCEL.EXE"] = 2
  L0_3["%programfiles(x86)%\\Microsoft Office\\root\\Office14\\POWERPNT.EXE"] = 2
  L0_3["%programfiles(x86)%\\Microsoft Office\\root\\Office14\\ONENOTE.EXE"] = 2
  L0_3["%programfiles(x86)%\\Microsoft Office\\Office16\\WINWORD.EXE"] = 2
  L0_3["%programfiles(x86)%\\Microsoft Office\\Office16\\EXCEL.EXE"] = 2
  L0_3["%programfiles(x86)%\\Microsoft Office\\Office16\\POWERPNT.EXE"] = 2
  L0_3["%programfiles(x86)%\\Microsoft Office\\Office16\\ONENOTE.EXE"] = 2
  L0_3["%programfiles(x86)%\\Microsoft Office\\Office15\\WINWORD.EXE"] = 2
  L0_3["%programfiles(x86)%\\Microsoft Office\\Office15\\EXCEL.EXE"] = 2
  L0_3["%programfiles(x86)%\\Microsoft Office\\Office15\\POWERPNT.EXE"] = 2
  L0_3["%programfiles(x86)%\\Microsoft Office\\Office15\\ONENOTE.EXE"] = 2
  L0_3["%programfiles(x86)%\\Microsoft Office\\Office14\\WINWORD.EXE"] = 2
  L0_3["%programfiles(x86)%\\Microsoft Office\\Office14\\EXCEL.EXE"] = 2
  L0_3["%programfiles(x86)%\\Microsoft Office\\Office14\\POWERPNT.EXE"] = 2
  L0_3["%programfiles(x86)%\\Microsoft Office\\Office14\\ONENOTE.EXE"] = 2
  L0_3["%programfiles%\\Microsoft Office\\root\\Office16\\WINWORD.EXE"] = 2
  L0_3["%programfiles%\\Microsoft Office\\root\\Office16\\EXCEL.EXE"] = 2
  L0_3["%programfiles%\\Microsoft Office\\root\\Office16\\POWERPNT.EXE"] = 2
  L0_3["%programfiles%\\Microsoft Office\\root\\Office16\\ONENOTE.EXE"] = 2
  L0_3["%programfiles%\\Microsoft Office\\root\\Office15\\WINWORD.EXE"] = 2
  L0_3["%programfiles%\\Microsoft Office\\root\\Office15\\EXCEL.EXE"] = 2
  L0_3["%programfiles%\\Microsoft Office\\root\\Office15\\POWERPNT.EXE"] = 2
  L0_3["%programfiles%\\Microsoft Office\\root\\Office15\\ONENOTE.EXE"] = 2
  L0_3["%programfiles%\\Microsoft Office\\root\\Office14\\WINWORD.EXE"] = 2
  L0_3["%programfiles%\\Microsoft Office\\root\\Office14\\EXCEL.EXE"] = 2
  L0_3["%programfiles%\\Microsoft Office\\root\\Office14\\POWERPNT.EXE"] = 2
  L0_3["%programfiles%\\Microsoft Office\\root\\Office14\\ONENOTE.EXE"] = 2
  L0_3["%programfiles%\\Microsoft Office\\Office16\\WINWORD.EXE"] = 2
  L0_3["%programfiles%\\Microsoft Office\\Office16\\EXCEL.EXE"] = 2
  L0_3["%programfiles%\\Microsoft Office\\Office16\\POWERPNT.EXE"] = 2
  L0_3["%programfiles%\\Microsoft Office\\Office16\\ONENOTE.EXE"] = 2
  L0_3["%programfiles%\\Microsoft Office\\Office15\\WINWORD.EXE"] = 2
  L0_3["%programfiles%\\Microsoft Office\\Office15\\EXCEL.EXE"] = 2
  L0_3["%programfiles%\\Microsoft Office\\Office15\\POWERPNT.EXE"] = 2
  L0_3["%programfiles%\\Microsoft Office\\Office15\\ONENOTE.EXE"] = 2
  L0_3["%programfiles%\\Microsoft Office\\Office14\\WINWORD.EXE"] = 2
  L0_3["%programfiles%\\Microsoft Office\\Office14\\EXCEL.EXE"] = 2
  L0_3["%programfiles%\\Microsoft Office\\Office14\\POWERPNT.EXE"] = 2
  L0_3["%programfiles%\\Microsoft Office\\Office14\\ONENOTE.EXE"] = 2
  L1_4 = 2
  L2_5 = L0_3
  return L1_4, L2_5
end
GetMonitoredLocations = L0_0
function L0_0()
  local L0_6, L1_7
  L0_6 = {}
  L0_6["%windir%\\system32\\WerFault.exe"] = 2
  L0_6["%windir%\\SysWOW64\\WerFault.exe"] = 2
  L0_6["%windir%\\system32\\DWWIN.EXE"] = 2
  L0_6["%windir%\\SysWOW64\\DWWIN.EXE"] = 2
  L0_6["C:\\Windows\\system32\\DWWIN.EXE"] = 0
  L0_6["C:\\Windows\\SysWOW64\\DWWIN.EXE"] = 0
  L0_6["%programfiles(x86)%\\Microsoft Azure Information Protection\\MSIP.ExecutionHost.exe"] = 2
  L0_6["%programfiles(x86)%\\Microsoft Azure Information Protection\\MSIP.ExecutionHost32.exe"] = 2
  L0_6["%programfiles%\\Microsoft Azure Information Protection\\MSIP.ExecutionHost.exe"] = 2
  L0_6["%programfiles%\\Microsoft Azure Information Protection\\MSIP.ExecutionHost32.exe"] = 2
  L0_6["%programfiles%\\Common Files\\microsoft shared\\ClickToRun\\OfficeClickToRun.exe"] = 2
  L0_6["%programfiles%\\Microsoft OneDrive\\*\\FileCoAuth.exe"] = 2
  L0_6["%programdata%\\App-V"] = 2
  L0_6["%programfiles%\\Microsoft Office\\root\\VFS\\ProgramFilesCommonX64\\Microsoft Shared\\DW\\dw20.exe"] = 2
  L0_6["%programfiles(x86)%\\Microsoft Office\\root\\VFS\\ProgramFilesCommonX64\\Microsoft Shared\\DW\\dw20.exe"] = 2
  L0_6["%programfiles(x86)%\\Common Files\\microsoft shared\\DW\\DW20.EXE"] = 2
  L0_6["%programfiles%\\Common Files\\microsoft shared\\DW\\DW20.EXE"] = 2
  L0_6["%programfiles%\\Microsoft Office\\root\\Office16\\ADDINS\\Microsoft Power Query for Excel Integrated\\bin\\Microsoft.Mashup.Container.Loader.exe"] = 2
  L0_6["%programfiles(x86)%\\Microsoft Office\\root\\Office16\\ADDINS\\Microsoft Power Query for Excel Integrated\\bin\\Microsoft.Mashup.Container.Loader.exe"] = 2
  L0_6["%programfiles(x86)%\\Microsoft\\EdgeWebView\\Application\\*\\msedgewebview2.exe"] = 2
  L0_6["%programfiles%\\Microsoft\\EdgeWebView\\Application\\*\\msedgewebview2.exe"] = 2
  L0_6["%programfiles(x86)%\\Microsoft\\Edge\\Application\\msedge.exe"] = 2
  L0_6["%programfiles%\\Microsoft\\Edge\\Application\\msedge.exe"] = 2
  L0_6["%programfiles(x86)%\\Microsoft Office\\root\\Office16\\ONENOTEM.EXE"] = 2
  L0_6["%programfiles%\\Microsoft Office\\root\\Office16\\ONENOTEM.EXE"] = 2
  L0_6["%programfiles(x86)%\\Microsoft Office\\root\\Office16\\ONENOTE.EXE"] = 2
  L0_6["%programfiles%\\Microsoft Office\\root\\Office16\\ONENOTE.EXE"] = 2
  L0_6["%programfiles(x86)%\\Microsoft Office\\Office*\\FIRSTRUN.EXE"] = 2
  L0_6["%programfiles%\\Microsoft Office\\Office*\\FIRSTRUN.EXE"] = 2
  L0_6["%programfiles%\\Google\\Chrome\\Application\\chrome.exe"] = 2
  L0_6["%programfiles%\\Microsoft Office\\root\\vfs\\ProgramFilesCommonX??\\Microsoft Shared\\OFFICE16\\ai.exe"] = 2
  L0_6["%programfiles(x86)%\\Microsoft Office\\root\\vfs\\ProgramFilesCommonX??\\Microsoft Shared\\OFFICE16\\ai.exe"] = 2
  L0_6["%programfiles(x86)%\\Adobe\\Acrobat Reader DC\\Reader\\AcroRd??.exe"] = 2
  L0_6["%programfiles(x86)%\\Office Timeline\\Current\\Ines.UserService.Exe"] = 2
  L0_6["%programfiles(x86)%\\empower\\charts\\LiveUpdateHub.exe"] = 2
  L0_6["%programfiles(x86)%\\Dania Software\\DynamicTemplate for Office\\ApplicationFocus.exe"] = 2
  L0_6["%windir%\\splwow64.exe"] = 2
  L0_6["%windir%\\system32\\fsiso.exe"] = 2
  return L0_6
end
GetPathExclusions = L0_0
function L0_0()
  local L0_8, L1_9
  L0_8 = "((windowsapps\\\\[^\\\\]+\\\\)|(microsoft office\\\\(root\\\\)?))office..\\\\(winword|excel|powerpnt|onenote)\\.exe\\\"?[^\\\"]+\\\"([^\\\"]+)\\\"?"
  return L0_8
end
GetCommandLineRegExp = L0_0
