local L0_0, L1_1, L2_2, L3_3, L4_4
if this_sigattrlog[2].matched and this_sigattrlog[2].utf8p1 ~= nil and this_sigattrlog[4].matched and this_sigattrlog[4].utf8p2 ~= nil and this_sigattrlog[5].matched and this_sigattrlog[5].utf8p1 ~= nil then
  L1_1 = string.lower(this_sigattrlog[4].utf8p2)
  L3_3 = string.lower(this_sigattrlog[2].utf8p1)
  L0_0 = string.lower(this_sigattrlog[5].utf8p1)
  L4_4, L2_2 = string.match(L0_0, "imagename:(.-);targetprocessppid:(.+)")
  if L4_4 ~= nil and L2_2 ~= nil and L3_3:find(L4_4, 1, true) and L1_1:find(L2_2, 1, true) then
    return mp.INFECTED
  end
end
return mp.CLEAN
