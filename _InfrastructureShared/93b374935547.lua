local L0_0
if this_sigattrlog[2].matched then
  L0_0 = this_sigattrlog[2].utf8p1
elseif this_sigattrlog[3].matched then
  L0_0 = this_sigattrlog[3].utf8p1
elseif this_sigattrlog[4].matched then
  L0_0 = this_sigattrlog[4].utf8p1
else
  return mp.CLEAN
end
if not L0_0 then
  return mp.CLEAN
end
if not sysio.IsFileExists(L0_0) or mp.IsKnownFriendlyFile(L0_0, true, false) then
  return mp.CLEAN
end
if not sysio.GetLastResult().Success or sysio.GetFileLastWriteTime(L0_0) == 0 then
  return mp.CLEAN
end
if sysio.GetFileLastWriteTime(L0_0) / 10000000 - 11644473600 >= MpCommon.GetCurrentTimeT() then
  return mp.CLEAN
end
if (MpCommon.GetCurrentTimeT() - (sysio.GetFileLastWriteTime(L0_0) / 10000000 - 11644473600)) / 60 <= 10080 then
  return mp.INFECTED
end
return mp.CLEAN
