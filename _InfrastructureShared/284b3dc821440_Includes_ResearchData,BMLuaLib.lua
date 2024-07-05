local L0_0
if this_sigattrlog[2].matched then
  L0_0 = mp.ContextualExpandEnvironmentVariables(this_sigattrlog[2].utf8p1)
elseif this_sigattrlog[3].matched then
  L0_0 = mp.ContextualExpandEnvironmentVariables(this_sigattrlog[3].utf8p1)
elseif this_sigattrlog[4].matched then
  L0_0 = mp.ContextualExpandEnvironmentVariables(this_sigattrlog[4].utf8p1)
elseif this_sigattrlog[5].matched then
  L0_0 = mp.ContextualExpandEnvironmentVariables(this_sigattrlog[5].utf8p1)
elseif this_sigattrlog[6].matched then
  L0_0 = mp.ContextualExpandEnvironmentVariables(this_sigattrlog[6].utf8p1)
elseif this_sigattrlog[7].matched then
  L0_0 = mp.ContextualExpandEnvironmentVariables(this_sigattrlog[7].utf8p1)
end
if L0_0 ~= nil and sysio.IsFileExists(L0_0) and mp.IsKnownFriendlyFile(L0_0, false, false) == false then
  bm.add_related_file(L0_0)
  add_parents()
  return mp.INFECTED
end
return mp.CLEAN
