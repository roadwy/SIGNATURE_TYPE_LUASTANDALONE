local L0_0
L0_0 = GetRollingQueueKeys
L0_0 = L0_0("TamperingAlerts_LimitedSet_A")
if L0_0 ~= nil then
  set_research_data("ThreatsOnMachine", "[" .. table.concat(L0_0, "|") .. "]", false)
  return mp.LOWFI
end
return mp.CLEAN
