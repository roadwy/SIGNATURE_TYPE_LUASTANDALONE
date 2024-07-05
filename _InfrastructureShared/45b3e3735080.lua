if bm.get_current_process_startup_info().ppid == nil or string.find(bm.get_current_process_startup_info().ppid, "pid:4$", 1, false) ~= nil or string.find(bm.get_current_process_startup_info().ppid, "pid:4,", 1, true) ~= nil then
  return mp.CLEAN
end
if bm.get_current_process_startup_info().integrity_level >= MpCommon.GetProcessElevationAndIntegrityLevel(bm.get_current_process_startup_info().ppid).IntegrityLevel then
  return mp.CLEAN
end
return mp.INFECTED
