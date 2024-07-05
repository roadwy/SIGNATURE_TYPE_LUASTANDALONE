local L0_0
if this_sigattrlog[1].matched then
  L0_0 = string.lower(this_sigattrlog[1].utf8p2)
end
if L0_0 ~= nil and (string.find(L0_0, "if=/dev/zero", 1, true) or string.find(L0_0, "if=/dev/random", 1, true) or string.find(L0_0, "if=/dev/urandom", 1, true)) then
  return mp.INFECTED
end
return mp.CLEAN
