local L0_0
if this_sigattrlog[3].matched then
  L0_0 = this_sigattrlog[3].utf8p1
end
if L0_0 ~= nil then
  bm.add_threat_file(L0_0)
end
return mp.INFECTED
