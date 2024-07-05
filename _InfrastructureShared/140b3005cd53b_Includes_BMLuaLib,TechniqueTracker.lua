if this_sigattrlog[1].matched and this_sigattrlog[1].utf8p1 ~= nil then
  bm.trigger_sig("DroppedArchive", this_sigattrlog[1].utf8p1)
  TrackPidAndTechniqueBM("BM", "T1560", "Collection_ArchiveData")
end
return mp.CLEAN
