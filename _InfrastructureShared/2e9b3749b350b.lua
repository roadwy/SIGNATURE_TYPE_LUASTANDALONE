local L0_0, L1_1
if this_sigattrlog[1].matched then
  L0_0 = this_sigattrlog[1].utf8p1
elseif this_sigattrlog[2].matched then
  L0_0 = this_sigattrlog[2].utf8p1
elseif this_sigattrlog[3].matched then
  L0_0 = this_sigattrlog[3].utf8p1
elseif this_sigattrlog[4].matched then
  L0_0 = this_sigattrlog[4].utf8p1
elseif this_sigattrlog[5].matched then
  L0_0 = this_sigattrlog[5].utf8p1
elseif this_sigattrlog[6].matched then
  L0_0 = this_sigattrlog[6].utf8p1
elseif this_sigattrlog[7].matched then
  L0_0 = this_sigattrlog[7].utf8p1
elseif this_sigattrlog[8].matched then
  L0_0 = this_sigattrlog[8].utf8p1
elseif this_sigattrlog[9].matched then
  L0_0 = this_sigattrlog[9].utf8p1
elseif this_sigattrlog[10].matched then
  L0_0 = this_sigattrlog[10].utf8p1
elseif this_sigattrlog[11].matched then
  L0_0 = this_sigattrlog[11].utf8p1
elseif this_sigattrlog[12].matched then
  L0_0 = this_sigattrlog[12].utf8p1
elseif this_sigattrlog[13].matched then
  L0_0 = this_sigattrlog[13].utf8p1
elseif this_sigattrlog[14].matched then
  L0_0 = this_sigattrlog[14].utf8p1
elseif this_sigattrlog[15].matched then
  L0_0 = this_sigattrlog[15].utf8p1
elseif this_sigattrlog[16].matched then
  L0_0 = this_sigattrlog[16].utf8p1
elseif this_sigattrlog[17].matched then
  L0_0 = this_sigattrlog[17].utf8p1
elseif this_sigattrlog[18].matched then
  L0_0 = this_sigattrlog[18].utf8p1
elseif this_sigattrlog[19].matched then
  L0_0 = this_sigattrlog[19].utf8p1
elseif this_sigattrlog[20].matched then
  L0_0 = this_sigattrlog[20].utf8p1
elseif this_sigattrlog[21].matched then
  L0_0 = this_sigattrlog[21].utf8p1
elseif this_sigattrlog[22].matched then
  L0_0 = this_sigattrlog[22].utf8p1
elseif this_sigattrlog[23].matched then
  L0_0 = this_sigattrlog[23].utf8p1
elseif this_sigattrlog[24].matched then
  L0_0 = this_sigattrlog[24].utf8p1
elseif this_sigattrlog[25].matched then
  L0_0 = this_sigattrlog[25].utf8p1
elseif this_sigattrlog[26].matched then
  L0_0 = this_sigattrlog[26].utf8p1
elseif this_sigattrlog[27].matched then
  L0_0 = this_sigattrlog[27].utf8p1
elseif this_sigattrlog[28].matched then
  L0_0 = this_sigattrlog[28].utf8p1
elseif this_sigattrlog[29].matched then
  L0_0 = this_sigattrlog[29].utf8p1
elseif this_sigattrlog[30].matched then
  L0_0 = this_sigattrlog[30].utf8p1
elseif this_sigattrlog[31].matched then
  L0_0 = this_sigattrlog[31].utf8p1
elseif this_sigattrlog[32].matched then
  L0_0 = this_sigattrlog[32].utf8p1
elseif this_sigattrlog[33].matched then
  L0_0 = this_sigattrlog[33].utf8p1
elseif this_sigattrlog[34].matched then
  L0_0 = this_sigattrlog[34].utf8p1
elseif this_sigattrlog[35].matched then
  L0_0 = this_sigattrlog[35].utf8p1
elseif this_sigattrlog[36].matched then
  L0_0 = this_sigattrlog[36].utf8p1
elseif this_sigattrlog[37].matched then
  L0_0 = this_sigattrlog[37].utf8p1
end
if L0_0 == nil then
  return mp.CLEAN
end
L1_1 = string.lower(L0_0)
if L1_1 == nil then
  return mp.CLEAN
end
if string.find(L1_1, "\\windows\\", 1, true) or string.find(L1_1, "%system%", 1, true) or string.find(L1_1, "\\program files", 1, true) then
  return mp.CLEAN
end
mp.ReportLowfi(L0_0, 3863149119)
return mp.CLEAN
