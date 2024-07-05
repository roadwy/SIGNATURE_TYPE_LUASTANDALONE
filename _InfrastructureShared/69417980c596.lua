local L0_0, L1_1
if this_sigattrlog[4].matched and this_sigattrlog[4].utf8p1 ~= nil then
  L0_0 = this_sigattrlog[4].utf8p1
end
if this_sigattrlog[5].matched and this_sigattrlog[5].utf8p1 ~= nil then
  L1_1 = this_sigattrlog[5].utf8p1
end
if L0_0 ~= nil and L1_1 ~= nil and L0_0 ~= nil and L1_1 ~= nil and (L0_0 == L1_1 or string.match(L0_0, "^127.") or string.match(L0_0, "^::1*") or string.match(L0_0, "^0.0.0.0")) then
  return mp.CLEAN
end
return mp.INFECTED
