local L0_0, L1_1
function L0_0()
  local L0_2, L1_3
  L0_2 = {}
  L0_2.Name = "Block Office applications from creating executable content"
  L0_2.Description = "Windows Defender Exploit Guard detected the Office application creating executable content."
  L0_2.NotificationDedupingInterval = 120
  L1_3 = HIPS
  L1_3 = L1_3.DEDUPE_SCOPE_UI
  L0_2.NotificationDedupingScope = L1_3
  return L0_2
end
GetRuleInfo = L0_0
function L0_0()
  local L0_4, L1_5
  L0_4 = "((windowsapps\\\\[^\\\\]+\\\\)|(microsoft office\\\\(root\\\\)?))office..\\\\[^\\.]+\\.exe\\\"?[^\\\"]+\\\"([^\\\"]+)\\\"?"
  return L0_4
end
GetCommandLineRegExp = L0_0
