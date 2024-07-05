local L0_0
if this_sigattrlog[8].matched and this_sigattrlog[8].utf8p2 ~= nil then
  L0_0 = this_sigattrlog[8].utf8p2
elseif this_sigattrlog[9].matched and this_sigattrlog[9].utf8p2 ~= nil then
  L0_0 = this_sigattrlog[9].utf8p2
end
if L0_0 ~= nil and (string.find(L0_0, ".sct", 1, true) or string.find(L0_0, "/i:http", 1, true) or string.find(L0_0, "/u ", 1, true)) then
  return mp.INFECTED
end
return mp.CLEAN
