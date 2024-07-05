local L0_0
if this_sigattrlog[1].matched and this_sigattrlog[1].wp2 ~= nil then
  L0_0 = string.lower(this_sigattrlog[1].utf8p2)
end
if L0_0 ~= nil and string.find(L0_0, "-u", 1, true) and string.find(L0_0, "//", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
