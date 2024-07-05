local L0_0, L1_1
L1_1 = bm
L1_1 = L1_1.get_process_relationships
L1_1 = L1_1()
if L1_1 ~= nil then
  for _FORV_7_, _FORV_8_ in ipairs(L1_1) do
    if _FORV_8_.image_path ~= nil then
      L0_0 = string.lower(MpCommon.PathToWin32Path(_FORV_8_.image_path))
      if string.find(L0_0, "\\svchost.exe", -12, true) or string.find(L0_0, "\\rastools.exe", -13, true) or string.find(L0_0, "\\rastoolsservice.exe", -20, true) then
        return mp.CLEAN
      end
    end
  end
end
if L0_0 == nil then
  return mp.CLEAN
end
if sysio.IsFileExists(L0_0) and not mp.IsKnownFriendlyFile(L0_0, true, false) then
  bm.request_SMS(bm.get_current_process_startup_info().ppid, "h+")
  bm.add_action("SmsAsyncScanEvent", 1000)
  bm.add_related_file(L0_0)
  return mp.INFECTED
end
return mp.CLEAN
