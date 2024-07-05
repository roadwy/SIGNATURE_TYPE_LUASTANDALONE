local L0_0, L1_1
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.utf8p2
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.find
  L1_1 = L1_1(string.lower(L0_0), "/reporting", 1, true)
elseif L1_1 ~= nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = this_sigattrlog
L1_1 = L1_1[7]
L1_1 = L1_1.utf8p1
if not L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[8]
  L1_1 = L1_1.utf8p1
end
if L1_1 == nil then
  return mp.CLEAN
end
L1_1 = string.lower(L1_1)
if L1_1 == nil or string.find(L1_1, "c:\\", 1, true) == nil then
  return mp.CLEAN
end
if sysio.IsFileExists(L1_1) then
  bm.add_related_file(L1_1)
end
if bm.get_current_process_startup_info() ~= nil and bm.get_current_process_startup_info().ppid ~= nil then
  bm.request_SMS(bm.get_current_process_startup_info().ppid, "m")
  bm.add_action("SmsAsyncScanEvent", 1)
end
return mp.INFECTED
