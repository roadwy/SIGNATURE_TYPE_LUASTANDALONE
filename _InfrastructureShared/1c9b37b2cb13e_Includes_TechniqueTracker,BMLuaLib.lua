TrackPidAndTechniqueBM("BM", "T1003.008", "CredentialAccess")
addRelatedProcess()
if IsAncestorTaintedScriptOrBin(true) then
  return mp.INFECTED
end
return mp.CLEAN
