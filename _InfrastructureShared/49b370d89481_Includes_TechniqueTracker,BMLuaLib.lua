if pcall(bm.get_current_process_startup_info) then
  bm_AddRelatedFileFromCommandLine(pcall(bm.get_current_process_startup_info).command_line, nil, nil, 1)
  TrackPidAndTechniqueBM(pcall(bm.get_current_process_startup_info).ppid, "T1059.001", "amsi_bypass")
end
return mp.INFECTED
