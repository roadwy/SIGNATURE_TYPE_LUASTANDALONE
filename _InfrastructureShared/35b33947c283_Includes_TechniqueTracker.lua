local L0_0
L0_0 = bm
L0_0 = L0_0.GetSignatureMatchDuration
L0_0 = L0_0()
if L0_0 > 200000000 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(MpCommon.PathToWin32Path(bm.get_imagepath()))
if L0_0 then
  if not string.find(L0_0, "^c:\\") and not string.find(L0_0, "^\\\\") then
    return mp.CLEAN
  end
  if string.find(L0_0, "\\program files", 1, true) or string.find(L0_0, "\\steam", 1, true) or string.find(L0_0, "\\langrisser", 1, true) or string.find(L0_0, "\\hearthstone", 1, true) or string.find(L0_0, "\\com3d2", 1, true) or string.find(L0_0, "\\cm3d2", 1, true) or string.find(L0_0, "\\overwolf", 1, true) or string.find(L0_0, "\\subnautica", 1, true) or string.find(L0_0, "\\ngen", 1, true) or string.find(L0_0, "game", 1, true) then
    return mp.CLEAN
  end
end
TrackCustomPersistContextNameByPPID("set", bm.get_current_process_startup_info().ppid, "MimikatzTrigger")
bm.request_SMS(bm.get_current_process_startup_info().ppid, "M")
bm.add_action("SmsAsyncScanEvent", 1000)
return mp.INFECTED
