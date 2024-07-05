local L0_0
L0_0 = this_sigattrlog
L0_0 = L0_0[2]
L0_0 = L0_0.utf8p2
if string.find(L0_0, "activate", 1, true) then
  TrackPidAndTechniqueBM("BM", "T1548.004", "PrivilegeEscalation-CredentialPopupWithinApp")
else
  TrackPidAndTechniqueBM("BM", "T1548.004", "PrivilegeEscalation-CredentialPopup")
end
return mp.INFECTED
