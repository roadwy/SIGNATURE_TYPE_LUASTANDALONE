local L0_0
if this_sigattrlog[1].matched then
  L0_0 = this_sigattrlog[1].utf8p2
end
if L0_0 ~= nil and string.match(L0_0, "%d+%.%d+%.%d+%.%d+") then
  return mp.INFECTED
end
return mp.CLEAN
