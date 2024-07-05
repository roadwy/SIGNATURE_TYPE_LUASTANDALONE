local L0_0, L1_1
L0_0 = "remote_file_created_taint"
L1_1 = nil
if this_sigattrlog[2].matched then
  L1_1 = this_sigattrlog[2].utf8p1
elseif this_sigattrlog[3].matched then
  L1_1 = this_sigattrlog[3].utf8p1
elseif this_sigattrlog[4].matched then
  L1_1 = this_sigattrlog[4].utf8p1
end
if bm.get_current_process_startup_info() ~= nil and bm.get_current_process_startup_info().ppid ~= nil and L1_1 ~= nil then
  TrackPidAndTechniqueBM(bm.get_current_process_startup_info().ppid, "T1562.001", "DefenseEvasion")
  if isTainted(L1_1, L0_0) then
    addRelatedProcess()
    reportRelatedBmHits()
    return mp.INFECTED
  end
end
return mp.CLEAN
