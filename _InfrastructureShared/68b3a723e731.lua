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
if not ((MpCommon.GetCurrentTimeT() - (sysio.GetFileLastWriteTime(L0_0) / 10000000 - 11644473600)) / 60 <= 1440) then
  return mp.CLEAN
end
if #L0_0 >= 9 and string.sub(L0_0, 2, 9) == ":\\users\\" or #L0_0 >= 15 and string.sub(L0_0, 2, 15) == ":\\programdata\\" then
  return mp.INFECTED
end
return mp.CLEAN
