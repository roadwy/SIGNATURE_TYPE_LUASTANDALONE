local L0_0
L0_0 = bm
L0_0 = L0_0.get_imagepath
L0_0 = L0_0()
if not L0_0 then
  return mp.CLEAN
end
L0_0 = string.lower(MpCommon.PathToWin32Path(L0_0))
if not sysio.IsFileExists(L0_0) then
  return mp.CLEAN
end
if not sysio.GetLastResult().Success or sysio.GetFileLastWriteTime(L0_0) == 0 then
  return mp.CLEAN
end
if sysio.GetFileLastWriteTime(L0_0) / 10000000 - 11644473600 >= MpCommon.GetCurrentTimeT() then
  return mp.CLEAN
end
if not ((MpCommon.GetCurrentTimeT() - (sysio.GetFileLastWriteTime(L0_0) / 10000000 - 11644473600)) / 60 <= 20160) then
  return mp.CLEAN
end
bm.request_SMS(bm.get_current_process_startup_info().ppid, "H")
bm.add_action("SmsAsyncScanEvent", 1000)
return mp.INFECTED
