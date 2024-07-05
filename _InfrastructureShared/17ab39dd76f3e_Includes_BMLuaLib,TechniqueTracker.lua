local L0_0
L0_0 = bm
L0_0 = L0_0.get_imagepath
L0_0 = L0_0()
if L0_0 ~= nil then
  TrackPidAndTechniqueBM("BM", "T1040", "CredentialAccess_NetworkSniffing_SuspiciousProcess")
  addRelatedProcess()
  reportRelatedBmHits()
  if not this_sigattrlog[2].matched and not this_sigattrlog[3].matched and sysio.IsFileExists(L0_0) then
    bm.add_threat_file(L0_0)
  end
  return mp.INFECTED
end
return mp.CLEAN
