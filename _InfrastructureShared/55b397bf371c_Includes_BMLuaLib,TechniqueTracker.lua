if bm.get_current_process_startup_info() ~= nil and bm.get_current_process_startup_info().ppid ~= nil and not isParentPackageManager(bm.get_current_process_startup_info().ppid, true) and versioning.GetCloudBlockLevel() >= 4 then
  TrackPidAndTechniqueBM(bm.get_current_process_startup_info().ppid, "T1037.004", "Persistence")
  return mp.INFECTED
end
return mp.CLEAN
