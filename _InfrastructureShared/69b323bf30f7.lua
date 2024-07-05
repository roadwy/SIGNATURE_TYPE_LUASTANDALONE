local L0_0
if this_sigattrlog[1].matched and this_sigattrlog[1].utf8p1 ~= nil then
  L0_0 = mp.ContextualExpandEnvironmentVariables(string.lower(this_sigattrlog[1].utf8p1))
elseif this_sigattrlog[2].matched and this_sigattrlog[2].utf8p1 ~= nil then
  L0_0 = mp.ContextualExpandEnvironmentVariables(string.lower(this_sigattrlog[2].utf8p1))
elseif this_sigattrlog[3].matched and this_sigattrlog[3].utf8p1 ~= nil then
  L0_0 = mp.ContextualExpandEnvironmentVariables(string.lower(this_sigattrlog[3].utf8p1))
end
if L0_0 == nil then
  return mp.CLEAN
end
if string.find(string.lower(L0_0), ":program files", 1, true) == nil then
  return mp.INFECTED
end
return mp.CLEAN
