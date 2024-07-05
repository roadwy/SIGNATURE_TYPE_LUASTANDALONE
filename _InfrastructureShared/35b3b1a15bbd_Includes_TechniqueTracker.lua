if bm.get_current_process_startup_info() == nil or bm.get_current_process_startup_info().ppid == nil then
  return mp.CLEAN
end
AddResearchData(bm.get_current_process_startup_info().ppid, true)
return mp.INFECTED
