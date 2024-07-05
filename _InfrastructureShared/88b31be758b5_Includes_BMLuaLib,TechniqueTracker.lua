if 30000000 < bm.GetSignatureMatchDuration() then
  return mp.CLEAN
end
TrackPidAndTechniqueBM("BM", "T1552.003", "CredentialAccess")
addRelatedProcess()
return mp.INFECTED
