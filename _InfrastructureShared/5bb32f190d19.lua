if bm.get_current_process_startup_info() ~= nil and bm.get_current_process_startup_info().ppid ~= nil then
  bm.request_SMS(bm.get_current_process_startup_info().ppid, "m")
  bm.add_action("SmsAsyncScanEvent", 1000)
end
return mp.INFECTED
