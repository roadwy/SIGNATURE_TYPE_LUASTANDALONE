local L0_0
if this_sigattrlog[7].matched and this_sigattrlog[7].wp2 ~= nil then
  L0_0 = this_sigattrlog[7].utf8p2
end
if string.find(L0_0, "wheel", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
