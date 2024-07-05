local L0_0
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
if not L0_0 or next(L0_0) == nil then
  return mp.CLEAN
end
if not L0_0.commandline then
  return mp.CLEAN
end
if string.find(L0_0.commandline, "svchost.exe -k GPSvcGroup", 1, true) then
  return mp.CLEAN
end
return mp.INFECTED
