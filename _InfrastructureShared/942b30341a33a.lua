local L0_0, L1_1, L2_2
function L0_0(A0_3, A1_4, A2_5)
  if A0_3 == nil then
    return false
  end
  A0_3 = string.lower(A0_3)
  if A1_4 ~= nil and string.find(A0_3, A1_4, 1, true) then
    return true
  end
  if A2_5 ~= nil and string.find(A0_3, A2_5, 1, true) then
    return true
  end
  return false
end
L1_1, L2_2 = nil, nil
if this_sigattrlog[1].matched and this_sigattrlog[1].wp1 ~= nil then
  L1_1 = string.lower(this_sigattrlog[1].utf8p1)
end
if this_sigattrlog[2].matched and this_sigattrlog[2].wp1 ~= nil then
  L2_2 = string.lower(this_sigattrlog[2].utf8p1)
end
if L1_1 == nil and L2_2 == nil then
  return mp.CLEAN
end
if this_sigattrlog[3].matched and L0_0(this_sigattrlog[3].utf8p2, L1_1, L2_2) or this_sigattrlog[4].matched and L0_0(this_sigattrlog[4].utf8p2, L1_1, L2_2) or this_sigattrlog[5].matched and L0_0(this_sigattrlog[5].utf8p2, L1_1, L2_2) or this_sigattrlog[6].matched and L0_0(this_sigattrlog[6].utf8p2, L1_1, L2_2) or this_sigattrlog[7].matched and L0_0(this_sigattrlog[7].utf8p2, L1_1, L2_2) or this_sigattrlog[8].matched and L0_0(this_sigattrlog[8].utf8p2, L1_1, L2_2) or this_sigattrlog[9].matched and L0_0(this_sigattrlog[9].utf8p2, L1_1, L2_2) or this_sigattrlog[10].matched and L0_0(this_sigattrlog[10].utf8p2, L1_1, L2_2) or this_sigattrlog[11].matched and L0_0(this_sigattrlog[11].utf8p2, L1_1, L2_2) or this_sigattrlog[12].matched and L0_0(this_sigattrlog[12].utf8p2, L1_1, L2_2) or this_sigattrlog[13].matched and L0_0(this_sigattrlog[13].utf8p2, L1_1, L2_2) or this_sigattrlog[14].matched and L0_0(this_sigattrlog[14].utf8p2, L1_1, L2_2) or this_sigattrlog[15].matched and L0_0(this_sigattrlog[15].utf8p2, L1_1, L2_2) or this_sigattrlog[16].matched and L0_0(this_sigattrlog[16].utf8p2, L1_1, L2_2) or this_sigattrlog[17].matched and L0_0(this_sigattrlog[17].utf8p2, L1_1, L2_2) or this_sigattrlog[18].matched and L0_0(this_sigattrlog[18].utf8p2, L1_1, L2_2) or this_sigattrlog[19].matched and L0_0(this_sigattrlog[19].utf8p2, L1_1, L2_2) or this_sigattrlog[20].matched and L0_0(this_sigattrlog[20].utf8p2, L1_1, L2_2) or this_sigattrlog[21].matched and L0_0(this_sigattrlog[21].utf8p2, L1_1, L2_2) or this_sigattrlog[22].matched and L0_0(this_sigattrlog[22].utf8p2, L1_1, L2_2) or this_sigattrlog[23].matched and L0_0(this_sigattrlog[23].utf8p2, L1_1, L2_2) or this_sigattrlog[24].matched and L0_0(this_sigattrlog[24].utf8p2, L1_1, L2_2) or this_sigattrlog[25].matched and L0_0(this_sigattrlog[23].utf8p2, L1_1, L2_2) or this_sigattrlog[26].matched and L0_0(this_sigattrlog[26].utf8p2, L1_1, L2_2) or this_sigattrlog[27].matched and L0_0(this_sigattrlog[27].utf8p2, L1_1, L2_2) or this_sigattrlog[28].matched and L0_0(this_sigattrlog[28].utf8p2, L1_1, L2_2) or this_sigattrlog[29].matched and L0_0(this_sigattrlog[29].utf8p2, L1_1, L2_2) or this_sigattrlog[30].matched and L0_0(this_sigattrlog[30].utf8p2, L1_1, L2_2) or this_sigattrlog[31].matched and L0_0(this_sigattrlog[31].utf8p2, L1_1, L2_2) or this_sigattrlog[32].matched and L0_0(this_sigattrlog[32].utf8p2, L1_1, L2_2) or this_sigattrlog[33].matched and L0_0(this_sigattrlog[33].utf8p2, L1_1, L2_2) or this_sigattrlog[34].matched and L0_0(this_sigattrlog[34].utf8p2, L1_1, L2_2) or this_sigattrlog[35].matched and L0_0(this_sigattrlog[35].utf8p2, L1_1, L2_2) or this_sigattrlog[36].matched and L0_0(this_sigattrlog[36].utf8p2, L1_1, L2_2) or this_sigattrlog[37].matched and L0_0(this_sigattrlog[37].utf8p2, L1_1, L2_2) or this_sigattrlog[38].matched and L0_0(this_sigattrlog[38].utf8p2, L1_1, L2_2) or this_sigattrlog[39].matched and L0_0(this_sigattrlog[39].utf8p2, L1_1, L2_2) or this_sigattrlog[40].matched and L0_0(this_sigattrlog[40].utf8p2, L1_1, L2_2) or this_sigattrlog[41].matched and L0_0(this_sigattrlog[41].utf8p2, L1_1, L2_2) or this_sigattrlog[42].matched and L0_0(this_sigattrlog[42].utf8p2, L1_1, L2_2) or this_sigattrlog[43].matched and L0_0(this_sigattrlog[43].utf8p2, L1_1, L2_2) or this_sigattrlog[44].matched and L0_0(this_sigattrlog[44].utf8p2, L1_1, L2_2) or this_sigattrlog[45].matched and L0_0(this_sigattrlog[45].utf8p2, L1_1, L2_2) or this_sigattrlog[46].matched and L0_0(this_sigattrlog[46].utf8p2, L1_1, L2_2) then
  return mp.INFECTED
end
return mp.CLEAN
