if mp.GetParentProcInfo(bm.get_current_process_startup_info().ppid) ~= nil and string.lower(mp.GetParentProcInfo(bm.get_current_process_startup_info().ppid).image_path):match("([^\\]+)$") == "svchost.exe" then
  MpCommon.TurnNriOnProcess(bm.get_current_process_startup_info().ppid)
  bm.request_SMS(bm.get_current_process_startup_info().ppid, "M")
  bm.add_action("SmsAsyncScanEvent", 1000)
  return mp.INFECTED
end
return mp.CLEAN
