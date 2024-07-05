if bm.get_current_process_startup_info() ~= nil and bm.get_current_process_startup_info().ppid ~= nil and IsTechniqueObservedForPid(bm.get_current_process_startup_info().ppid, "T1105") and versioning.GetCloudBlockLevel() >= 4 then
  TrackPidAndTechniqueBM(bm.get_current_process_startup_info().ppid, "T1053.003", "Persistence")
  return mp.INFECTED
end
return mp.CLEAN
