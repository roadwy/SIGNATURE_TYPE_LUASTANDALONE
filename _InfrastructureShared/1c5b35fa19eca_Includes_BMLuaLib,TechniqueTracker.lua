if not bm.get_current_process_startup_info() then
  return mp.CLEAN
end
if isParentPackageManager(bm.get_current_process_startup_info().ppid) then
  return mp.CLEAN
end
TrackPidAndTechniqueBM("BM", "T1078.003", "Persistence")
return mp.INFECTED
