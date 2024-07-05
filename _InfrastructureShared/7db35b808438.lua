local L0_0
if this_sigattrlog[1].matched and this_sigattrlog[1].wp2 ~= nil then
  L0_0 = string.lower(this_sigattrlog[1].utf8p2)
elseif this_sigattrlog[2].matched and this_sigattrlog[2].wp2 ~= nil then
  L0_0 = string.lower(this_sigattrlog[2].utf8p2)
elseif this_sigattrlog[3].matched and this_sigattrlog[3].wp2 ~= nil then
  L0_0 = string.lower(this_sigattrlog[3].utf8p2)
end
if L0_0 and (string.match(L0_0, "[/\\]admin$") ~= nil or string.match(L0_0, "[/\\][a-z]$") ~= nil) then
  return mp.INFECTED
end
return mp.CLEAN
