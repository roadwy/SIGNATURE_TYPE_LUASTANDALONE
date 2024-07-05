if bm.get_current_process_startup_info() ~= nil and bm.get_current_process_startup_info().command_line ~= nil then
  bm_AddRelatedFileFromCommandLine(bm.get_current_process_startup_info().command_line, nil)
  TrackPidAndTechniqueBM(bm.get_current_process_startup_info().ppid, "T1021.002", "proc_launch_from_share")
  return mp.INFECTED
end
return mp.CLEAN
