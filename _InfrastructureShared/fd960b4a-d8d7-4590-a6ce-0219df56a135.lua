local L1_0
function L1_0()
  local L0_1, L1_2
  L0_1 = {}
  L0_1.Name = "Double Extension rule for consumer"
  L0_1.Description = "Block malicious double extension"
  L1_2 = HIPS
  L1_2 = L1_2.RULETYPE_CONSUMER
  L0_1.Type = L1_2
  return L0_1
end
GetRuleInfo = L1_0
