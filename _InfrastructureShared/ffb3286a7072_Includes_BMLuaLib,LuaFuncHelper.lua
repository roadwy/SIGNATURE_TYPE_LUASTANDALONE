bm.request_SMS(bm.get_current_process_startup_info().ppid, "M")
bm.add_action("SmsAsyncScanEvent", 100)
pcallEx("triggerMemoryScanOnProcessTree", triggerMemoryScanOnProcessTree, true, false, "SMS_H", 100, "Behavior:Win32/Ryuk.B!rsm")
pcallEx("triggerMemoryScanOnProcessTree", triggerMemoryScanOnProcessTree, true, false, "EMS", 100, "Behavior:Win32/Ryuk.B!rsm")
return mp.INFECTED
