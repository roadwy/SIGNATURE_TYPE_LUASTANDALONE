if bm.get_current_process_startup_info() ~= nil and bm.get_current_process_startup_info().command_line ~= nil then
  if string.lower(bm.get_current_process_startup_info().command_line):find("azurearcagent", 1, true) then
    return mp.CLEAN
  end
  return mp.INFECTED
end
return mp.CLEAN
