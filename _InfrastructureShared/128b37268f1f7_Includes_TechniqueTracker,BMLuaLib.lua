if is_excluded_parent_proc_auto() then
  return mp.CLEAN
end
if bm.get_current_process_startup_info() ~= nil and bm.get_current_process_startup_info().ppid ~= nil then
  if IsPidExcluded(bm.get_current_process_startup_info().ppid) then
    return mp.CLEAN
  end
  TrackPidAndTechniqueBM(bm.get_current_process_startup_info().ppid, "T1053.005", "persistence_schtask_create_source")
  return mp.INFECTED
end
return mp.CLEAN
