if IsADConnectRole() and bm.get_current_process_startup_info().ppid ~= nil and (string.find(bm.get_current_process_startup_info().ppid, "pid:4$", 1, false) ~= nil or string.find(bm.get_current_process_startup_info().ppid, "pid:4,", 1, true) ~= nil) then
  reportSessionInformationInclusive()
  return mp.INFECTED
end
return mp.CLEAN
