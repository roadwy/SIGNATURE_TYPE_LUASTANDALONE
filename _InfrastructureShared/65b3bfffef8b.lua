local L0_0
if this_sigattrlog[1].matched then
  L0_0 = string.lower(mp.ContextualExpandEnvironmentVariables(this_sigattrlog[1].utf8p2))
elseif this_sigattrlog[2].matched then
  L0_0 = string.lower(mp.ContextualExpandEnvironmentVariables(this_sigattrlog[2].utf8p2))
else
  return mp.CLEAN
end
if string.match(L0_0, "/addfile [^ ]+ \\\\localhost\\[^ ]* [^ ]+") ~= nil then
  return mp.INFECTED
elseif string.match(L0_0, "/addfile [^ ]+ \\\\127%.0%.0%.1\\[^ ]* [^ ]+") ~= nil then
  return mp.INFECTED
elseif string.match(L0_0, "/addfile [^ ]+ .:\\[^ ]* [^ ]+") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
