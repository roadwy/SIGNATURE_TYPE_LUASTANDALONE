if bm.get_current_process_startup_info() == nil or bm.get_current_process_startup_info().command_line == nil then
  return mp.CLEAN
end
bm_AddRelatedFileFromCommandLine(bm.get_current_process_startup_info().command_line, nil, nil, 1)
AddResearchData(bm.get_current_process_startup_info().ppid, true)
return mp.INFECTED
