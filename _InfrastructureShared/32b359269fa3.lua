local L0_0
if this_sigattrlog[1].matched then
  L0_0 = this_sigattrlog[1].utf8p2
end
if L0_0 ~= nil then
  bm.add_related_string("webshellpaths", L0_0, bm.RelatedStringBMReport)
  return mp.INFECTED
end
return mp.CLEAN
