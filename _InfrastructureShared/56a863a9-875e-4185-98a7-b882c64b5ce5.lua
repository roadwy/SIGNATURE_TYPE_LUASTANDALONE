local L1_0
function L1_0()
  local L0_1, L1_2
  L0_1 = {}
  L0_1.Name = "Block abuse of in-the-wild exploited vulnerable signed drivers"
  L0_1.Description = "Windows Defender Exploit Guard detected an application writing an exploited vulnerable signed driver to the disk"
  L0_1.NotificationDedupingInterval = 3600
  L1_2 = HIPS
  L1_2 = L1_2.DEDUPE_SCOPE_UI
  L0_1.NotificationDedupingScope = L1_2
  return L0_1
end
GetRuleInfo = L1_0
