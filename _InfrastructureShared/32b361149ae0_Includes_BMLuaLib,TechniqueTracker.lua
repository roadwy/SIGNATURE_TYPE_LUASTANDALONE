local L0_0
L0_0 = bm
L0_0 = L0_0.get_imagepath
L0_0 = L0_0()
TrackPidAndTechniqueBM("BM", "T1110.001", "CredentialAccess_RdpBruteForceOutgoing")
if mp.GetParentProcInfo() ~= nil and (not string.find(L0_0, "/usr/sbin/sshd", -14, true) or not string.find(mp.GetParentProcInfo().image_path, "/usr/sbin/sshd", -14, true)) then
  TrackPidAndTechniqueBM(mp.GetParentProcInfo().ppid, "T1110.001", "CredentialAccess_RdpBruteForceOutgoing")
end
return mp.INFECTED
