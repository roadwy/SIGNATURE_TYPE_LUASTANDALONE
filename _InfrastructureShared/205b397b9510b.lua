local L0_0, L1_1
if this_sigattrlog[4].matched and this_sigattrlog[4].utf8p1 ~= nil then
  L0_0 = this_sigattrlog[4].utf8p1
end
if this_sigattrlog[5].matched and this_sigattrlog[5].utf8p2 ~= nil then
  L1_1 = this_sigattrlog[5].utf8p2
elseif this_sigattrlog[6].matched and this_sigattrlog[6].utf8p2 ~= nil then
  L1_1 = this_sigattrlog[6].utf8p2
elseif this_sigattrlog[7].matched and this_sigattrlog[7].utf8p2 ~= nil then
  L1_1 = this_sigattrlog[7].utf8p2
elseif this_sigattrlog[8].matched and this_sigattrlog[8].utf8p2 ~= nil then
  L1_1 = this_sigattrlog[8].utf8p2
end
if L0_0 ~= nil and string.find(L1_1, L0_0, 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
