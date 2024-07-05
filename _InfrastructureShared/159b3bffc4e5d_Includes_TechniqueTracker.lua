local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(MpCommon.PathToWin32Path(bm.get_imagepath()))
if not string.find(L0_0, "^c:\\") and not string.find(L0_0, "^\\\\") then
  return mp.CLEAN
end
if string.find(L0_0, "\\program files", 1, true) then
  return mp.CLEAN
end
if not MpCommon.QueryPersistContext(L0_0, "ExecutedPENoCert") then
  return mp.CLEAN
end
TrackCustomPersistContextNameByPPID("set", bm.get_current_process_startup_info().ppid, "MimikatzTrigger")
bm.request_SMS(bm.get_current_process_startup_info().ppid, "H")
bm.add_action("SmsAsyncScanEvent", 1000)
return mp.INFECTED
