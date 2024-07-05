local L0_0
if this_sigattrlog[1].matched and this_sigattrlog[1].utf8p2 ~= nil then
  L0_0 = this_sigattrlog[1].utf8p2
end
if L0_0 and string.find(L0_0, "isoudmx", 1, true) then
  return mp.CLEAN
end
return mp.INFECTED
