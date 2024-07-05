local L0_0, L1_1, L2_2
L0_0 = "(.+\\)"
L1_1 = string
L1_1 = L1_1.match
L2_2 = string
L2_2 = L2_2.lower
L2_2 = L2_2(this_sigattrlog[1].utf8p1)
L1_1 = L1_1(L2_2, L0_0)
L2_2 = nil
if this_sigattrlog[2].matched then
  L2_2 = string.match(string.lower(this_sigattrlog[2].utf8p1), L0_0)
elseif this_sigattrlog[3].matched then
  L2_2 = string.match(string.lower(this_sigattrlog[3].utf8p1), L0_0)
elseif this_sigattrlog[4].matched then
  L2_2 = string.match(string.lower(this_sigattrlog[4].utf8p1), L0_0)
elseif this_sigattrlog[5].matched then
  L2_2 = string.match(string.lower(this_sigattrlog[5].utf8p1), L0_0)
end
if L1_1 ~= nil and L1_1 == L2_2 then
  return mp.INFECTED
end
return mp.CLEAN
