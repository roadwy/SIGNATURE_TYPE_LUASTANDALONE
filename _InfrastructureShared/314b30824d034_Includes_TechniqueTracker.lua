if 50000000 < bm.GetSignatureMatchDuration() then
  return mp.CLEAN
end
TrackPidAndTechniqueBM("BM", "T1552.001", "CredentialAccess")
return mp.INFECTED
