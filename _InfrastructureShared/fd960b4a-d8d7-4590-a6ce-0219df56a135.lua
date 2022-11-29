-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/fd960b4a-d8d7-4590-a6ce-0219df56a135 

-- params : ...
-- function num : 0
GetRuleInfo = function()
  -- function num : 0_0
  local l_1_0 = {}
  l_1_0.Name = "Double Extension rule for consumer"
  l_1_0.Description = "Block malicious double extension"
  l_1_0.Type = HIPS.RULETYPE_CONSUMER
  return l_1_0
end


