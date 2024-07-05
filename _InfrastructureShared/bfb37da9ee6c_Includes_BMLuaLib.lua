local L0_0
if this_sigattrlog[5].matched then
  L0_0 = string.lower(this_sigattrlog[5].utf8p2)
end
if L0_0 ~= nil and string.find(L0_0, "ifm", 1, true) and (string.find(L0_0, "activate ", 1, true) or string.find(L0_0, "ac ", 1, true) or string.find(L0_0, "act ", 1, true)) and (string.find(L0_0, "instance ", 1, true) or string.find(L0_0, "in ", 1, true) or string.find(L0_0, "i ", 1, true) or string.find(L0_0, "inst ", 1, true)) and (string.find(L0_0, "create full", 1, true) or string.find(L0_0, "cr fu", 1, true)) then
  add_parents()
  return mp.INFECTED
end
return mp.CLEAN
