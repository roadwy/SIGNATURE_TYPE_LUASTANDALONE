if bm.get_current_process_startup_info() ~= nil and bm.get_current_process_startup_info().ppid ~= nil then
  bm.request_SMS(bm.get_current_process_startup_info().ppid, "M")
  bm.add_action("SmsAsyncScanEvent", 5000)
  return mp.INFECTED
end
return mp.CLEAN
