local L0_0
if this_sigattrlog[3].matched and this_sigattrlog[3].utf8p2 ~= nil then
  L0_0 = this_sigattrlog[3].utf8p2
end
bm.add_related_string("vname", L0_0, bm.RelatedStringBMReport)
return mp.INFECTED
