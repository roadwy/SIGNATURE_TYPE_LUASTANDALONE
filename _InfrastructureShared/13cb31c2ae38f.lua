local L0_0
if this_sigattrlog[2].matched and this_sigattrlog[2].utf8p2 ~= nil then
  L0_0 = string.lower(this_sigattrlog[2].utf8p2)
elseif this_sigattrlog[3].matched and this_sigattrlog[3].utf8p2 ~= nil then
  L0_0 = string.lower(this_sigattrlog[3].utf8p2)
elseif this_sigattrlog[4].matched and this_sigattrlog[4].utf8p2 ~= nil then
  L0_0 = string.lower(this_sigattrlog[4].utf8p2)
end
if string.find(L0_0, "reflection.assembly", 1, true) and (string.find(L0_0, ":load", 1, true) or string.find(L0_0, ".load", 1, true)) then
  return mp.INFECTED
end
return mp.CLEAN
