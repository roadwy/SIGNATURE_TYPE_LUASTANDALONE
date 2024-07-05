if is_excluded_parent_proc_auto() then
  return mp.CLEAN
end
if bm.get_current_process_startup_info() ~= nil and bm.get_current_process_startup_info().ppid ~= nil then
  TrackPidAndTechniqueBM(bm.get_current_process_startup_info().ppid, "T1053.005", "persistence_schtask_modify_source")
  return mp.INFECTED
end
return mp.CLEAN
