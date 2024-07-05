local L0_0, L1_1
L0_0 = "remote_file_created_taint"
L1_1 = nil
if this_sigattrlog[2].matched then
  L1_1 = this_sigattrlog[2].utf8p1
end
if L1_1 ~= nil and isTainted(L1_1, L0_0) then
  TrackPidAndTechniqueBM("BM", "T1562.004", "DefenseEvasion")
  return mp.INFECTED
end
return mp.CLEAN
