local L0_0
if this_sigattrlog[6].matched and this_sigattrlog[6].utf8p1 ~= nil then
  L0_0 = string.lower(this_sigattrlog[6].utf8p1)
end
if L0_0 then
  L0_0 = mp.ContextualExpandEnvironmentVariables(L0_0)
  if L0_0 == nil then
    return mp.CLEAN
  end
  L0_0 = string.lower(L0_0)
  if IsKeyInRollingQueue("DllSideloadMonitor", L0_0, true) then
    return mp.INFECTED
  end
end
return mp.CLEAN
