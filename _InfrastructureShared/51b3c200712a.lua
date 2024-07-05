local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(mp.ContextualExpandEnvironmentVariables(this_sigattrlog[2].utf8p2))
if L0_0 == nil or L0_0 == "" then
  return mp.CLEAN
end
if string.find(L0_0, "\\windows\\ccm\\systemtemp\\", 1, true) == nil and string.find(L0_0, "\\windows\\ccmcache\\", 1, true) == nil then
  return mp.INFECTED
end
return mp.CLEAN
