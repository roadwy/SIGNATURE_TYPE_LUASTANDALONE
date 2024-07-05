local L0_0
L0_0 = bm
L0_0 = L0_0.GetSignatureMatchDuration
L0_0 = L0_0()
if L0_0 > 12000000000 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = nil
if this_sigattrlog[4].matched and this_sigattrlog[4].utf8p2 ~= nil then
  L0_0 = this_sigattrlog[4].utf8p2
end
if L0_0 == nil then
  return mp.CLEAN
end
bm.add_related_string("ProcessCreateParam", L0_0, bm.RelatedStringBMReport)
return mp.INFECTED
