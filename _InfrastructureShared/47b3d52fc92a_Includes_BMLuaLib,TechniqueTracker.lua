if bm.get_current_process_startup_info() ~= nil and bm.get_current_process_startup_info().command_line ~= nil then
  if string.lower(bm.get_current_process_startup_info().command_line):find("conhost.exe", 1, true) then
    return mp.CLEAN
  end
  bm_AddRelatedFileFromCommandLine(bm.get_current_process_startup_info().command_line, nil, nil, 1)
  AddResearchData(bm.get_current_process_startup_info().ppid, true)
  return mp.INFECTED
end
return mp.CLEAN
