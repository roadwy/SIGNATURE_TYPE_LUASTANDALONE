if bm.get_current_process_startup_info() == nil or bm.get_current_process_startup_info().ppid == nil or bm.get_current_process_startup_info().command_line == nil then
  return mp.CLEAN
end
if isParentPackageManager(bm.get_current_process_startup_info().ppid, true) then
  return mp.CLEAN
end
TrackPidAndTechniqueBM("BM", "T1036.004", "DefenseEvasion_MasqueradeTaskOrService_Cron")
TrackPidAndTechniqueBM("BM", "T1036.005", "DefenseEvasion_MasqueradeNameOrPath_Cron")
addRelatedProcess()
reportRelatedBmHits()
return mp.INFECTED
