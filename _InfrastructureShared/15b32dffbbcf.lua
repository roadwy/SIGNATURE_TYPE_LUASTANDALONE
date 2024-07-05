local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(MpCommon.PathToWin32Path(bm.get_imagepath()))
if not MpCommon.QueryPersistContext(L0_0, "NewPECreatedNoCert") then
  return mp.CLEAN
end
if sysio.GetLastResult().Success and sysio.GetFileLastWriteTime(L0_0) ~= 0 then
  if sysio.GetFileLastWriteTime(L0_0) / 10000000 - 11644473600 > MpCommon.GetCurrentTimeT() or MpCommon.GetCurrentTimeT() - (sysio.GetFileLastWriteTime(L0_0) / 10000000 - 11644473600) > 600 then
    return mp.CLEAN
  end
  return mp.INFECTED
end
return mp.CLEAN
