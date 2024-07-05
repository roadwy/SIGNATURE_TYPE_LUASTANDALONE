if bm.get_current_process_startup_info() ~= nil and bm.get_current_process_startup_info().command_line ~= nil and bm.get_current_process_startup_info().command_line ~= "" then
  bm_AddRelatedFileFromCommandLine(bm.get_current_process_startup_info().command_line, nil, nil, 1)
end
return mp.INFECTED
