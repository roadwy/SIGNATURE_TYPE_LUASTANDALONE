local L0_0
if this_sigattrlog[15].matched and this_sigattrlog[15].wp2 ~= nil then
  L0_0 = string.lower(this_sigattrlog[15].utf8p2)
end
if L0_0 ~= nil and string.find(L0_0, "/logrotate", 1, true) then
  return mp.CLEAN
end
return mp.INFECTED
