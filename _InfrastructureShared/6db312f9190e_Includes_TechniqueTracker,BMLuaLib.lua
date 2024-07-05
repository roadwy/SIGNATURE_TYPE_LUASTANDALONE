if bm.get_current_process_startup_info() ~= nil then
  AddResearchData(bm.get_current_process_startup_info().ppid, true)
  return mp.INFECTED
end
return mp.CLEAN
