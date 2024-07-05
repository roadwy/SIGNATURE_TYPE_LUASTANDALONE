local L0_0
if this_sigattrlog[4].matched and this_sigattrlog[4].utf8p1 ~= nil then
  L0_0 = this_sigattrlog[4].utf8p1
elseif this_sigattrlog[5].matched and this_sigattrlog[5].utf8p1 ~= nil then
  L0_0 = this_sigattrlog[5].utf8p1
else
  return mp.CLEAN
end
if string.match(L0_0, "/.[^/]+$") then
  return mp.INFECTED
end
return mp.CLEAN
