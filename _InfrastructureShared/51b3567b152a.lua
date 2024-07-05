local L0_0
if this_sigattrlog[2].matched and this_sigattrlog[2].wp1 ~= nil then
  L0_0 = this_sigattrlog[2].utf8p1
elseif this_sigattrlog[3].matched and this_sigattrlog[3].wp1 ~= nil then
  L0_0 = this_sigattrlog[3].utf8p2
end
if L0_0 and string.match(L0_0, "/%.[^/]+$") then
  return mp.INFECTED
end
return mp.CLEAN
