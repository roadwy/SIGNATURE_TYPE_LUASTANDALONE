local L0_0
if this_sigattrlog[13].matched and this_sigattrlog[13].utf8p1 ~= nil then
  L0_0 = this_sigattrlog[13].utf8p1
end
if L0_0 == nil or L0_0 == "" then
  return mp.CLEAN
end
TrackPidAndTechniqueBM("BM", "T1560", "Collection_ArchiveData")
bm.add_related_file(L0_0)
bm.add_related_string("archivepath", L0_0, bm.RelatedStringBMReport)
addRelatedProcess()
reportRelatedBmHits()
return mp.INFECTED
