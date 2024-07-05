local L0_0
L0_0 = bm
L0_0 = L0_0.get_imagepath
L0_0 = L0_0()
if not L0_0 then
  return mp.CLEAN
end
L0_0 = MpCommon.PathToWin32Path(L0_0)
if not L0_0 then
  return mp.CLEAN
end
L0_0 = string.lower(L0_0)
if not MpCommon.QueryPersistContext(L0_0, "NewPECreatedNoCert") then
  return mp.CLEAN
end
if mp.IsKnownFriendlyFile(L0_0, true, false) == true then
  return mp.CLEAN
end
if sysio.GetLastResult().Success and sysio.GetFileLastWriteTime(L0_0) ~= 0 then
  if sysio.GetFileLastWriteTime(L0_0) / 10000000 - 11644473600 > MpCommon.GetCurrentTimeT() or MpCommon.GetCurrentTimeT() - (sysio.GetFileLastWriteTime(L0_0) / 10000000 - 11644473600) > 600 then
    return mp.CLEAN
  end
  triggerMemoryScanOnProcessTree(true, true, "SMS_M", 100, "Behavior:Win32/DllInject.SB")
  return mp.INFECTED
end
return mp.CLEAN
