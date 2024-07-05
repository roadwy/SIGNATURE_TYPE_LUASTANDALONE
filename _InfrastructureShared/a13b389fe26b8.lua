local L0_0, L1_1, L2_2, L3_3
L1_1 = 1
L2_2, L3_3 = nil, nil
L0_0 = nil
if this_sigattrlog[4].matched then
  L0_0 = this_sigattrlog[4].utf8p2
end
if this_sigattrlog[5].matched then
  L0_0 = this_sigattrlog[5].utf8p2
end
if this_sigattrlog[6].matched then
  L0_0 = this_sigattrlog[6].utf8p2
end
if L0_0 == nil then
  return mp.CLEAN
end
L3_3 = string.match(L0_0, "DestIp=(.*);DestPort")
L2_2[L3_3] = true
L0_0 = nil
if this_sigattrlog[10].matched then
  L0_0 = this_sigattrlog[10].utf8p2
end
if this_sigattrlog[11].matched then
  L0_0 = this_sigattrlog[11].utf8p2
end
if this_sigattrlog[12].matched then
  L0_0 = this_sigattrlog[12].utf8p2
end
if L0_0 == nil then
  return mp.CLEAN
end
L3_3 = string.match(L0_0, "DestIp=(.*);DestPort")
if L2_2[L3_3] ~= true then
  L2_2[L3_3] = true
  L1_1 = L1_1 + 1
end
L0_0 = nil
if this_sigattrlog[16].matched then
  L0_0 = this_sigattrlog[16].utf8p2
end
if this_sigattrlog[17].matched then
  L0_0 = this_sigattrlog[17].utf8p2
end
if this_sigattrlog[18].matched then
  L0_0 = this_sigattrlog[18].utf8p2
end
if L0_0 == nil then
  return mp.CLEAN
end
L3_3 = string.match(L0_0, "DestIp=(.*);DestPort")
if L2_2[L3_3] ~= true then
  L2_2[L3_3] = true
  L1_1 = L1_1 + 1
end
L0_0 = nil
if this_sigattrlog[22].matched then
  L0_0 = this_sigattrlog[22].utf8p2
end
if this_sigattrlog[23].matched then
  L0_0 = this_sigattrlog[23].utf8p2
end
if this_sigattrlog[24].matched then
  L0_0 = this_sigattrlog[24].utf8p2
end
if L0_0 == nil then
  return mp.CLEAN
end
L3_3 = string.match(L0_0, "DestIp=(.*);DestPort")
if L2_2[L3_3] ~= true then
  L2_2[L3_3] = true
  L1_1 = L1_1 + 1
end
L0_0 = nil
if this_sigattrlog[28].matched then
  L0_0 = this_sigattrlog[28].utf8p2
end
if this_sigattrlog[29].matched then
  L0_0 = this_sigattrlog[29].utf8p2
end
if this_sigattrlog[30].matched then
  L0_0 = this_sigattrlog[30].utf8p2
end
if L0_0 == nil then
  return mp.CLEAN
end
L3_3 = string.match(L0_0, "DestIp=(.*);DestPort")
if L2_2[L3_3] ~= true then
  L2_2[L3_3] = true
  L1_1 = L1_1 + 1
end
L0_0 = nil
if this_sigattrlog[34].matched then
  L0_0 = this_sigattrlog[34].utf8p2
end
if this_sigattrlog[35].matched then
  L0_0 = this_sigattrlog[35].utf8p2
end
if this_sigattrlog[36].matched then
  L0_0 = this_sigattrlog[36].utf8p2
end
if L0_0 == nil then
  return mp.CLEAN
end
L3_3 = string.match(L0_0, "DestIp=(.*);DestPort")
if L2_2[L3_3] ~= true then
  L2_2[L3_3] = true
  L1_1 = L1_1 + 1
end
L0_0 = nil
if this_sigattrlog[40].matched then
  L0_0 = this_sigattrlog[40].utf8p2
end
if this_sigattrlog[41].matched then
  L0_0 = this_sigattrlog[41].utf8p2
end
if this_sigattrlog[42].matched then
  L0_0 = this_sigattrlog[42].utf8p2
end
if L0_0 == nil then
  return mp.CLEAN
end
L3_3 = string.match(L0_0, "DestIp=(.*);DestPort")
if L2_2[L3_3] ~= true then
  L2_2[L3_3] = true
  L1_1 = L1_1 + 1
end
L0_0 = nil
if this_sigattrlog[46].matched then
  L0_0 = this_sigattrlog[46].utf8p2
end
if this_sigattrlog[47].matched then
  L0_0 = this_sigattrlog[47].utf8p2
end
if this_sigattrlog[48].matched then
  L0_0 = this_sigattrlog[48].utf8p2
end
if L0_0 == nil then
  return mp.CLEAN
end
L3_3 = string.match(L0_0, "DestIp=(.*);DestPort")
if L2_2[L3_3] ~= true then
  L2_2[L3_3] = true
  L1_1 = L1_1 + 1
end
L0_0 = nil
if this_sigattrlog[52].matched then
  L0_0 = this_sigattrlog[52].utf8p2
end
if this_sigattrlog[53].matched then
  L0_0 = this_sigattrlog[53].utf8p2
end
if this_sigattrlog[54].matched then
  L0_0 = this_sigattrlog[54].utf8p2
end
if L0_0 == nil then
  return mp.CLEAN
end
L3_3 = string.match(L0_0, "DestIp=(.*);DestPort")
if L2_2[L3_3] ~= true then
  L2_2[L3_3] = true
  L1_1 = L1_1 + 1
end
if L1_1 >= 4 then
  return mp.INFECTED
end
return mp.CLEAN
