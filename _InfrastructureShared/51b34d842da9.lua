local L0_0, L1_1
if this_sigattrlog[1].matched and this_sigattrlog[1].utf8p1 ~= nil then
  L0_0 = this_sigattrlog[1].utf8p1
end
if this_sigattrlog[2].matched and this_sigattrlog[2].utf8p2 ~= nil then
  L1_1 = this_sigattrlog[2].utf8p2
end
if L0_0 ~= nil and L1_1 ~= nil and string.find(L1_1, L0_0, 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
