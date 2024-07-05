local L0_0
if this_sigattrlog[1].matched and this_sigattrlog[1].utf8p1 ~= nil then
  L0_0 = this_sigattrlog[1].utf8p2
end
if string.find(L0_0, "-psk", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
