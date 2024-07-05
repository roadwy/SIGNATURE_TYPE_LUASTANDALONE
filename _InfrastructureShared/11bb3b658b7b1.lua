local L0_0, L1_1
if this_sigattrlog[2].matched then
  L0_0 = string.lower(this_sigattrlog[2].utf8p2)
elseif this_sigattrlog[3].matched then
  L0_0 = string.lower(this_sigattrlog[3].utf8p2)
end
L1_1 = string.lower(this_sigattrlog[1].utf8p1)
if L0_0 and L1_1 and string.find(L0_0, L1_1, 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
