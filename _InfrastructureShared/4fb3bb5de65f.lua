local L0_0
if this_sigattrlog[1].matched and this_sigattrlog[1].utf8p1 ~= nil then
  L0_0 = this_sigattrlog[1].utf8p1
end
if L0_0 == nil then
  return mp.CLEAN
end
bm.add_related_string("MockSystem32_File", L0_0, bm.RelatedStringBMReport)
if sysio.IsFileExists(L0_0) then
  bm.add_related_file(L0_0)
end
return mp.INFECTED
