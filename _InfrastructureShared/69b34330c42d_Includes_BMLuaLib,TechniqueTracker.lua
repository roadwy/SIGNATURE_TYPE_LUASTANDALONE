local L0_0, L1_1, L2_2
L0_0 = "remote_file_created_taint"
L1_1, L2_2 = nil, nil
if this_sigattrlog[5].matched then
  L1_1 = this_sigattrlog[5].ppid
  L2_2 = this_sigattrlog[5].image_path
end
if L1_1 ~= nil and L2_2 ~= nil and isTainted(L2_2, L0_0) then
  TrackPidAndTechniqueBM(L1_1, "T1053.003", "Execution_SuspiciousCronActivity")
  addRelatedProcess()
  reportRelatedBmHits()
  return mp.INFECTED
end
return mp.CLEAN
