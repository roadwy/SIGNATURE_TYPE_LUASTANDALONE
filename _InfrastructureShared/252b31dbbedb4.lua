bm.request_SMS(bm.get_current_process_startup_info().ppid, "M")
bm.add_action("SmsAsyncScanEvent", 100)
return mp.INFECTED
