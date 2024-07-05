local L0_0
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.utf8p2
if L0_0 == nil then
  return mp.CLEAN
end
bm.request_SMS(bm.get_current_process_startup_info().ppid, L0_0)
bm.add_action("SmsAsyncScanEvent", 1000)
return mp.INFECTED
