local L1_0
function L1_0()
  local L0_1, L1_2
  L0_1 = {}
  L0_1.Name = "Block untrusted and unsigned processes that run from USB"
  L0_1.Description = "Windows Defender Exploit Guard detected launching of an untrusted or unsigned executable from a removable USB media."
  L0_1.NotificationDedupingInterval = 120
  L1_2 = HIPS
  L1_2 = L1_2.DEDUPE_SCOPE_UI
  L0_1.NotificationDedupingScope = L1_2
  return L0_1
end
GetRuleInfo = L1_0
