bm.request_SMS(bm.get_current_process_startup_info().ppid, "m+")
bm.add_action("SmsAsyncScanEvent", 1)
return mp.INFECTED
