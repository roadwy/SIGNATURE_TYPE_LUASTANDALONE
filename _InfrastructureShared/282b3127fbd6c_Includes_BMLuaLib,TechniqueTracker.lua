local L0_0, L1_1
if this_sigattrlog[3].matched and this_sigattrlog[7].matched then
  L0_0 = this_sigattrlog[3].utf8p1
  L1_1 = this_sigattrlog[7].utf8p1
elseif this_sigattrlog[4].matched and this_sigattrlog[8].matched then
  L0_0 = this_sigattrlog[4].utf8p1
  L1_1 = this_sigattrlog[8].utf8p1
elseif this_sigattrlog[5].matched and this_sigattrlog[9].matched then
  L0_0 = this_sigattrlog[5].utf8p1
  L1_1 = this_sigattrlog[9].utf8p1
elseif this_sigattrlog[6].matched and this_sigattrlog[10].matched then
  L0_0 = this_sigattrlog[6].utf8p1
  L1_1 = this_sigattrlog[10].utf8p1
else
  return mp.CLEAN
end
if not L0_0 or not L1_1 then
  return mp.CLEAN
end
if L0_0:lower() ~= L1_1:lower() then
  return mp.CLEAN
end
bm.add_related_file(L0_0)
return mp.INFECTED
