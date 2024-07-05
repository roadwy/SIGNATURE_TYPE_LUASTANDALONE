if bm.get_current_process_startup_info().command_line ~= nil and bm.get_current_process_startup_info().ppid ~= nil then
  bm_AddRelatedFileFromCommandLine(bm.get_current_process_startup_info().command_line, nil, nil, 4)
  AddResearchData(bm.get_current_process_startup_info().ppid, true)
end
return mp.INFECTED
