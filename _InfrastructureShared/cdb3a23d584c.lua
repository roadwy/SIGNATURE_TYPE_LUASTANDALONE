local L0_0
if this_sigattrlog[6].matched and this_sigattrlog[6].utf8p1 ~= nil then
  L0_0 = this_sigattrlog[6].utf8p1
elseif this_sigattrlog[7].matched and this_sigattrlog[7].utf8p1 ~= nil then
  L0_0 = this_sigattrlog[7].utf8p1
elseif this_sigattrlog[8].matched and this_sigattrlog[8].utf8p1 ~= nil then
  L0_0 = this_sigattrlog[8].utf8p1
elseif this_sigattrlog[9].matched and this_sigattrlog[9].utf8p1 ~= nil then
  L0_0 = this_sigattrlog[9].utf8p1
elseif this_sigattrlog[10].matched and this_sigattrlog[10].utf8p1 ~= nil then
  L0_0 = this_sigattrlog[10].utf8p1
end
if L0_0 then
  bm.add_related_file(L0_0)
end
return mp.INFECTED
