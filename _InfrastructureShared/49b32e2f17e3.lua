local L0_0
if this_sigattrlog[1].matched then
  L0_0 = this_sigattrlog[1].utf8p2
end
if L0_0 ~= nil and string.len(L0_0) > 3 and (string.find(L0_0, "-noni", 1, true) or string.find(L0_0, "-ni", 1, true) or string.find(L0_0, "hidden", 1, true)) then
  return mp.INFECTED
end
return mp.CLEAN
