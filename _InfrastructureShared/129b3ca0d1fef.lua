if bm.get_current_process_startup_info() == nil or bm.get_current_process_startup_info().ppid == nil then
  return mp.CLEAN
end
if tonumber(string.match(bm.get_current_process_startup_info().ppid, "pid:(%w+),ProcessStart:%w+")) ~= nil and tonumber(string.match(bm.get_current_process_startup_info().ppid, "pid:(%w+),ProcessStart:%w+")) < 12 then
  return mp.INFECTED
end
return mp.CLEAN
