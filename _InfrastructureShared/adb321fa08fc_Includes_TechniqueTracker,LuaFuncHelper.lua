local L0_0
L0_0 = GetRollingQueueKeysAsString
L0_0 = L0_0("TT_ModifiedServices", "|")
if L0_0 then
  bm.add_related_string("TT_ModifiedServices", L0_0, bm.RelatedStringBMReport)
  TrackPidAndTechniqueBM("BM", "T1489", "mass_service_stop")
  return mp.INFECTED
end
return mp.CLEAN
