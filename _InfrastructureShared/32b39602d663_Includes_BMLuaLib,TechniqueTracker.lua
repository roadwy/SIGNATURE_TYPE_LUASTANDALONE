local L0_0
if this_sigattrlog[1].matched and this_sigattrlog[1].utf8p1 ~= nil then
  L0_0 = this_sigattrlog[1].utf8p1
end
if L0_0 then
  taint(L0_0, "static_hit", 1800)
  reportRelatedBmHits()
  return mp.INFECTED
end
return mp.CLEAN
