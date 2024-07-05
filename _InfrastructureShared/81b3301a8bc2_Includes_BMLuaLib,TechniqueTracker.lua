if bm.GetSignatureMatchDuration() > 30000000 then
  return mp.CLEAN
end
TrackPidAndTechniqueBM("BM", "T1049", "Discovery_SystemNetworkConnectionsDiscovery")
reportRelatedBmHits()
return mp.INFECTED
