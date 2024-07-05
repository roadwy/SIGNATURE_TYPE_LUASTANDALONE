local L0_0, L1_1, L2_2
L1_1 = {}
L2_2 = 3600
if this_sigattrlog[3].matched and this_sigattrlog[3].utf8p1 ~= nil then
  L0_0 = string.lower(this_sigattrlog[3].utf8p1)
elseif this_sigattrlog[4].matched and this_sigattrlog[4].utf8p1 ~= nil then
  L0_0 = string.lower(this_sigattrlog[4].utf8p1)
end
if L0_0 ~= nil then
  table.insert(L1_1, L0_0)
end
if #L1_1 > 0 then
  setMalwareManifest(L1_1, L2_2)
  return mp.INFECTED
end
return mp.CLEAN
