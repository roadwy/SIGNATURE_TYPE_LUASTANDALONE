local L0_0
if this_sigattrlog[2].matched and this_sigattrlog[2].wp2 ~= nil then
  L0_0 = this_sigattrlog[2].utf8p2
elseif this_sigattrlog[3].matched and this_sigattrlog[3].wp2 ~= nil then
  L0_0 = this_sigattrlog[3].utf8p2
elseif this_sigattrlog[4].matched and this_sigattrlog[4].wp2 ~= nil then
  L0_0 = this_sigattrlog[4].utf8p2
elseif this_sigattrlog[5].matched and this_sigattrlog[5].wp2 ~= nil then
  L0_0 = this_sigattrlog[5].utf8p2
elseif this_sigattrlog[6].matched and this_sigattrlog[6].wp2 ~= nil then
  L0_0 = this_sigattrlog[6].utf8p2
end
if string.find(L0_0, "smbclient", 1, true) then
  return mp.CLEAN
end
return mp.INFECTED
