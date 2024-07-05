if bm.GetSignatureMatchDuration() > 300000000 then
  return mp.CLEAN
end
bm.request_SMS(bm.get_current_process_startup_info().ppid, "M")
bm.add_action("SmsAsyncScanEvent", 1000)
return mp.INFECTED
