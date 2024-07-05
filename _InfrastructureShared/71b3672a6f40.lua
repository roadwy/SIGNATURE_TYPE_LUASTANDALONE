local L0_0, L1_1
L1_1 = string
L1_1 = L1_1.lower
L1_1 = L1_1(bm.get_imagepath())
if this_sigattrlog[4].matched and this_sigattrlog[4].utf8p1 ~= nil then
  L0_0 = string.lower(this_sigattrlog[4].utf8p1)
end
if L0_0 and L1_1 and (L1_1 == L0_0 or string.find(L1_1, L0_0, 1, true)) then
  return mp.INFECTED
end
return mp.CLEAN
