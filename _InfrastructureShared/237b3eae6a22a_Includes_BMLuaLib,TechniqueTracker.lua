if bm.GetSignatureMatchDuration() > 30000000 then
  return mp.CLEAN
end
TrackPidAndTechniqueBM("BM", "T1018", "Discovery_RemoteSystemDiscovery")
addRelatedProcess()
reportRelatedBmHits()
return mp.INFECTED
