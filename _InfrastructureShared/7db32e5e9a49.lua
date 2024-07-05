local L0_0
if this_sigattrlog[1].matched then
  L0_0 = this_sigattrlog[1].utf8p2
end
if L0_0 ~= nil then
  L0_0 = string.lower(L0_0):match("-ap \"([^\"]+)\"")
  bm.add_related_string("ReconFromAppPool", L0_0, bm.RelatedStringBMReport)
end
return mp.INFECTED
