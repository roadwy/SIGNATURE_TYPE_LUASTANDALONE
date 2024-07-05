local L1_0
function L1_0()
  local L0_1, L1_2
  L0_1 = {}
  L0_1.Name = "Block executable files from running unless they meet a prevalence, age, or trusted list criteria"
  L0_1.Description = "Windows Defender Exploit Guard detected the launch of a newly created untrusted executable file"
  L0_1.NotificationDedupingInterval = 120
  L1_2 = HIPS
  L1_2 = L1_2.DEDUPE_SCOPE_UI
  L0_1.NotificationDedupingScope = L1_2
  return L0_1
end
GetRuleInfo = L1_0
