TrackPidAndTechniqueBM("BM", "T1505.003", "Persistence_Webshell")
if this_sigattrlog[2].matched or this_sigattrlog[3].matched then
  TrackPidAndTechniqueBM("BM", "T1562.001", "DefenseEvasion_Impair")
  TrackPidAndTechniqueBM("BM", "T1489", "Impact_ServiceStop")
elseif this_sigattrlog[4].matched or this_sigattrlog[5].matched then
  TrackPidAndTechniqueBM("BM", "T1003.008", "CredentialAccess")
elseif this_sigattrlog[6].matched then
  TrackPidAndTechniqueBM("BM", "T1033", "Discovery")
elseif this_sigattrlog[7].matched then
  TrackPidAndTechniqueBM("BM", "T1136.001", "Persistence_LocalAccount")
end
return mp.INFECTED
