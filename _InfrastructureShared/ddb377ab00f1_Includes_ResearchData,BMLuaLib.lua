local L0_0
if this_sigattrlog[2].matched then
  L0_0 = mp.ContextualExpandEnvironmentVariables(this_sigattrlog[2].utf8p2)
elseif this_sigattrlog[3].matched then
  L0_0 = mp.ContextualExpandEnvironmentVariables(this_sigattrlog[3].utf8p2)
end
if L0_0 ~= nil and sysio.IsFileExists(L0_0) and mp.IsKnownFriendlyFile(L0_0, false, false) == false then
  return mp.INFECTED
end
return mp.CLEAN
