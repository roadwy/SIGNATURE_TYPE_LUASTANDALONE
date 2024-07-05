local L0_0
if this_sigattrlog[3].matched then
  L0_0 = this_sigattrlog[3].utf8p1
end
if L0_0 ~= nil and not string.find(L0_0, ".zip", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
