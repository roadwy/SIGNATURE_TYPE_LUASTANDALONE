if IsSenseRelatedProc() == true then
  return mp.CLEAN
end
TrackPidAndTechniqueBM("BM", "Capfetox", "Capfetox_tagged")
return mp.INFECTED
