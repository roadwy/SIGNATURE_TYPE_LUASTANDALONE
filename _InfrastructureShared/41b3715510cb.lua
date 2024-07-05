local L0_0, L1_1, L2_2
if this_sigattrlog[1].matched and this_sigattrlog[3].matched then
  L0_0 = string.lower(this_sigattrlog[1].utf8p1)
  L1_1 = string.lower(this_sigattrlog[3].utf8p1)
end
if L0_0 ~= nil and L1_1 ~= nil then
  L2_2 = string.match(L0_0, "\\([^\\]+)$")
  if L2_2 ~= nil and L2_2 == L1_1 then
    return mp.INFECTED
  end
end
return mp.CLEAN
