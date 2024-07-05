local L0_0
L0_0 = ""
if this_sigattrlog[3].matched then
  L0_0 = string.lower(this_sigattrlog[3].utf8p2)
elseif this_sigattrlog[4].matched then
  L0_0 = string.lower(this_sigattrlog[4].utf8p2)
elseif this_sigattrlog[5].matched then
  L0_0 = string.lower(this_sigattrlog[5].utf8p2)
elseif this_sigattrlog[6].matched then
  L0_0 = string.lower(this_sigattrlog[6].utf8p2)
elseif this_sigattrlog[7].matched then
  L0_0 = string.lower(this_sigattrlog[7].utf8p2)
elseif this_sigattrlog[8].matched then
  L0_0 = string.lower(this_sigattrlog[8].utf8p2)
elseif this_sigattrlog[9].matched then
  L0_0 = string.lower(this_sigattrlog[9].utf8p2)
end
if L0_0 ~= nil and 8 < string.len(L0_0) and (string.find(L0_0, "stop", 1, true) or string.find(L0_0, "disabled", 1, true)) then
  return mp.INFECTED
end
return mp.CLEAN
