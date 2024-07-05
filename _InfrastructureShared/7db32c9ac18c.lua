if bm.get_current_process_startup_info().ppid == nil or string.find(bm.get_current_process_startup_info().ppid, "pid:4$", 1, false) ~= nil or string.find(bm.get_current_process_startup_info().ppid, "pid:4,", 1, true) ~= nil or this_sigattrlog[3].timestamp > this_sigattrlog[6].timestamp then
  return mp.CLEAN
end
return mp.INFECTED
