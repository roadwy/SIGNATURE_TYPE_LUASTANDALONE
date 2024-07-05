local L0_0
L0_0 = this_sigattrlog
L0_0 = L0_0[7]
L0_0 = L0_0.utf8p1
if L0_0 == nil then
  return mp.CLEAN
end
L0_0 = string.lower(L0_0)
if L0_0 == nil or string.find(L0_0, "c:\\", 1, true) == nil then
  return mp.CLEAN
end
if sysio.IsFileExists(L0_0) then
  bm.add_related_file(L0_0)
end
if bm.get_current_process_startup_info() ~= nil and bm.get_current_process_startup_info().ppid ~= nil then
  bm.request_SMS(bm.get_current_process_startup_info().ppid, "m")
  bm.add_action("SmsAsyncScanEvent", 1)
end
return mp.INFECTED
