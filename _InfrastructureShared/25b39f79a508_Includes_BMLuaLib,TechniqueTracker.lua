if bm.get_current_process_startup_info() ~= nil and bm.get_current_process_startup_info().ppid ~= nil and not isParentPackageManager(bm.get_current_process_startup_info().ppid, true) then
  TrackPidAndTechniqueBM(bm.get_current_process_startup_info().ppid, "T1547.006", "Persistence")
  return mp.INFECTED
end
return mp.CLEAN
