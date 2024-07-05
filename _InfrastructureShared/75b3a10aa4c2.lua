local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(MpCommon.PathToWin32Path(bm.get_imagepath()))
if L0_0 then
  if not string.find(L0_0, "^c:\\") then
    return mp.CLEAN
  end
  if string.find(L0_0, "\\program files", 1, true) or string.find(L0_0, "\\game", 1, true) then
    return mp.CLEAN
  end
end
bm.request_SMS(bm.get_current_process_startup_info().ppid, "M")
bm.add_action("SmsAsyncScanEvent", 1000)
return mp.INFECTED
