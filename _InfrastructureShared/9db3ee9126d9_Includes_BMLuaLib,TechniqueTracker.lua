if bm.get_current_process_startup_info() ~= nil and bm.get_current_process_startup_info().command_line ~= nil then
  bm_AddRelatedFileFromCommandLine(bm.get_current_process_startup_info().command_line, nil, nil, 1)
  TrackPidAndTechniqueBM(bm.get_current_process_startup_info().ppid, "T1003", "tt_remediate")
  return mp.INFECTED
end
return mp.CLEAN
