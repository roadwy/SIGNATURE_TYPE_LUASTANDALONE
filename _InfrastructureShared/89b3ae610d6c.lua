local L0_0, L1_1
if this_sigattrlog[2].matched and this_sigattrlog[2].wp1 ~= nil then
  L0_0 = string.lower(this_sigattrlog[2].utf8p1)
end
if this_sigattrlog[3].matched and this_sigattrlog[3].wp2 ~= nil then
  L1_1 = string.lower(this_sigattrlog[3].utf8p2)
elseif this_sigattrlog[4].matched and this_sigattrlog[4].wp2 ~= nil then
  L1_1 = string.lower(this_sigattrlog[4].utf8p2)
end
if L0_0 ~= nil and L1_1 ~= nil and string.find(L0_0, L1_1, 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
