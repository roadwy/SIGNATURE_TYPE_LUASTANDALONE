if IsAncestorTaintedScriptOrBin(true) then
  TrackPidAndTechniqueBM("BM", "T1552.003", "CredentialAccess")
  return mp.INFECTED
end
return mp.CLEAN
