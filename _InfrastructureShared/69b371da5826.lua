local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = "(.+\\)[^\\]+%."
L1_1 = string
L1_1 = L1_1.match
L2_2 = string
L2_2 = L2_2.lower
L3_3 = this_sigattrlog
L3_3 = L3_3[1]
L3_3 = L3_3.utf8p1
L2_2 = L2_2(L3_3)
L3_3 = L0_0
L1_1 = L1_1(L2_2, L3_3)
L2_2 = string
L2_2 = L2_2.match
L3_3 = string
L3_3 = L3_3.lower
L4_4 = this_sigattrlog
L4_4 = L4_4[2]
L4_4 = L4_4.utf8p1
L3_3 = L3_3(L4_4)
L4_4 = L0_0
L2_2 = L2_2(L3_3, L4_4)
L3_3 = string
L3_3 = L3_3.match
L4_4 = string
L4_4 = L4_4.lower
L4_4 = L4_4(this_sigattrlog[3].utf8p1)
L3_3 = L3_3(L4_4, L0_0)
L4_4 = nil
if this_sigattrlog[4].matched then
  L4_4 = this_sigattrlog[4].utf8p1
elseif this_sigattrlog[5].matched then
  L4_4 = this_sigattrlog[5].utf8p1
end
if L4_4 == nil then
  return mp.CLEAN
end
if L1_1 ~= nil and L1_1 == L2_2 and L1_1 == L3_3 and L1_1 == string.match(string.lower(L4_4), L0_0) then
  return mp.INFECTED
end
return mp.CLEAN
