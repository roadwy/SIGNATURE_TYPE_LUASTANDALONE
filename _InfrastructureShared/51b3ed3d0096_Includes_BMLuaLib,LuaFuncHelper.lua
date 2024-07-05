if bm.get_current_process_startup_info() ~= nil and bm.get_current_process_startup_info().ppid ~= nil then
  triggerMemoryScanOnProcessTree(true, false, "SMS", 5000, "Behavior:Win32/InitiateSmsScan.A")
  AppendToRollingQueue("InitiateMemQuery", bm.get_current_process_startup_info().ppid, nil, 5000)
  return mp.INFECTED
end
return mp.CLEAN
