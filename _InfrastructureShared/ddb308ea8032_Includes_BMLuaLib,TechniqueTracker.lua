local L0_0
if this_sigattrlog[1].matched and this_sigattrlog[1].utf8p1 ~= nil then
  L0_0 = string.lower(this_sigattrlog[1].utf8p1)
elseif this_sigattrlog[2].matched and this_sigattrlog[2].utf8p1 ~= nil then
  L0_0 = string.lower(this_sigattrlog[2].utf8p1)
end
if L0_0 == nil or #L0_0 < 3 then
  return mp.CLEAN
end
if string.match(L0_0, "/%.[^/]+$") then
  bm.add_related_file(L0_0)
  addRelatedProcess()
  reportRelatedBmHits()
  return mp.INFECTED
end
return mp.CLEAN
