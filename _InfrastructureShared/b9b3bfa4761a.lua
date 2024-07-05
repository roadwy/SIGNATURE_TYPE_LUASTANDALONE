local L0_0
L0_0 = ""
if this_sigattrlog[8].utf8p1 ~= nil then
  L0_0 = string.lower(this_sigattrlog[8].utf8p1)
elseif this_sigattrlog[9].utf8p1 ~= nil then
  L0_0 = string.lower(this_sigattrlog[9].utf8p1)
else
  return mp.CLEAN
end
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
