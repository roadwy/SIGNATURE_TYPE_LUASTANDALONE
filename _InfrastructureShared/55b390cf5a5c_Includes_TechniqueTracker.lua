local L0_0, L1_1, L2_2, L3_3
L2_2 = this_sigattrlog
L2_2 = L2_2[3]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[3]
  L0_0 = L2_2.ppid
  L2_2 = this_sigattrlog
  L2_2 = L2_2[3]
  L1_1 = L2_2.image_path
end
if L0_0 ~= nil and L1_1 ~= nil then
  L2_2 = TrackPidAndTechniqueBM
  L3_3 = L0_0
  L2_2(L3_3, "T1110.001", "CredentialAccess_FtpBruteForceOutgoing")
end
L2_2 = mp
L2_2 = L2_2.GetParentProcInfo
L2_2 = L2_2()
if L2_2 ~= nil then
  L3_3 = L2_2.image_path
  if L3_3 ~= nil then
    L3_3 = string
    L3_3 = L3_3.find
    L3_3 = L3_3(L2_2.image_path, "/usr/sbin/sshd", -14, true)
    if not L3_3 then
      L3_3 = "CredentialAccess_FtpBruteForceOutgoing"
      if L2_2.image_path == L1_1 and mp.GetParentProcInfo(L2_2.ppid) ~= nil then
        TrackPidAndTechniqueBM(mp.GetParentProcInfo(L2_2.ppid).ppid, "T1110.001", L3_3)
      end
      TrackPidAndTechniqueBM(L2_2.ppid, "T1110.001", L3_3)
    end
  end
end
L3_3 = mp
L3_3 = L3_3.INFECTED
return L3_3
