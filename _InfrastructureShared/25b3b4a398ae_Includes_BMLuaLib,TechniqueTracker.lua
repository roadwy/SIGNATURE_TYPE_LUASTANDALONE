if bm.get_current_process_startup_info() ~= nil then
  TrackPidAndTechniqueBM(bm.get_current_process_startup_info().ppid, "T1110.001", "CredentialAccess_FtpBruteForceOutgoing")
end
if mp.GetParentProcInfo() ~= nil then
  TrackPidAndTechniqueBM(mp.GetParentProcInfo().ppid, "T1110.001", "CredentialAccess_FtpBruteForceOutgoing")
end
return mp.INFECTED
