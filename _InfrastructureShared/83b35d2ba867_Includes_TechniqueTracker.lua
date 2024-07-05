if bm.get_current_process_startup_info() ~= nil and bm.get_current_process_startup_info().ppid ~= nil then
  TrackPidAndTechniqueBM(bm.get_current_process_startup_info().ppid, "T1543.003", "persistence_services_b")
  return mp.INFECTED
end
return mp.CLEAN
