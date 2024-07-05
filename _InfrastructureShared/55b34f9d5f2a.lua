local L0_0
if this_sigattrlog[2].matched then
  L0_0 = string.lower(this_sigattrlog[2].utf8p2)
end
if L0_0 ~= nil and string.len(L0_0) > 3 and (string.find(L0_0, " whoami", 1, true) or string.find(L0_0, " quser", 1, true) or string.find(L0_0, " type ", 1, true) or string.find(L0_0, " nltest", 1, true)) then
  return mp.INFECTED
end
return mp.CLEAN
