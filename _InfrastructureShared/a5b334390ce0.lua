local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = "\\([^\\]+%.exe)"
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
L2_2, L3_3 = nil, nil
L4_4 = bm
L4_4 = L4_4.get_imagepath
L4_4 = L4_4()
if L4_4 ~= nil then
  L3_3 = string.match(L4_4, L0_0)
end
if this_sigattrlog[2].matched then
  L2_2 = this_sigattrlog[2].utf8p1
elseif this_sigattrlog[3].matched then
  L2_2 = this_sigattrlog[3].utf8p1
elseif this_sigattrlog[4].matched then
  L2_2 = this_sigattrlog[4].utf8p1
elseif this_sigattrlog[5].matched then
  L2_2 = this_sigattrlog[5].utf8p1
elseif this_sigattrlog[6].matched then
  L2_2 = this_sigattrlog[6].utf8p1
elseif this_sigattrlog[7].matched then
  L2_2 = this_sigattrlog[7].utf8p1
elseif this_sigattrlog[8].matched then
  L2_2 = this_sigattrlog[8].utf8p1
end
if L1_1 ~= nil then
  if L1_1 == L2_2 == L1_1 and L1_1 ~= L3_3 then
    return mp.INFECTED
  end
end
return mp.CLEAN
