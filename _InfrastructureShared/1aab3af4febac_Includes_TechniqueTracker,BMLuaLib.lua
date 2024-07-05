if IsAncestorTaintedScriptOrBin(true) then
  TrackPidAndTechniqueBM("BM", "T1003.008", "CredentialAccess")
  return mp.INFECTED
end
return mp.CLEAN
