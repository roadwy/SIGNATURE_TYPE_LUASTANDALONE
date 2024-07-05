if IsSenseRelatedProc() == true then
  return mp.CLEAN
end
bm.request_SMS(bm.get_current_process_startup_info().ppid, "H")
bm.add_action("SmsAsyncScanEvent", 5000)
TrackPidAndTechniqueBM(bm.get_current_process_startup_info().ppid, "T1055.002", "processinjection_source")
return mp.INFECTED
