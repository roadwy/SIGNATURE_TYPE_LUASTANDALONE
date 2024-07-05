local L0_0
if this_sigattrlog[1].matched and this_sigattrlog[1].utf8p1 ~= nil then
  L0_0 = this_sigattrlog[1].utf8p1
end
if L0_0 == nil then
  return mp.CLEAN
end
L0_0 = L0_0 .. ".zip"
if MpCommon.QueryPersistContext(L0_0, "NewlyCreatedZip") then
  bm.add_related_file(L0_0)
  return mp.INFECTED
end
return mp.CLEAN
