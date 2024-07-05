local L0_0
L0_0 = this_sigattrlog[4].utf8p2
L0_0 = string.lower(L0_0)
if L0_0 == nil or string.find(L0_0, ":\\windows\\", 2, true) or string.find(L0_0, "^%%", 1) or string.find(L0_0, ":\\programdata\\", 2, true) or string.find(L0_0, "^:\\users\\.*\\appdata", 2, false) or string.find(L0_0, ":\\program files (x86)\\", 2, true) or string.find(L0_0, ":\\program files\\", 2, true) then
  return mp.CLEAN
end
if sysio.GetLastResult().Success and sysio.GetFileLastWriteTime(L0_0) ~= 0 and (sysio.GetFileLastWriteTime(L0_0) / 10000000 - 11644473600 > MpCommon.GetCurrentTimeT() or MpCommon.GetCurrentTimeT() - (sysio.GetFileLastWriteTime(L0_0) / 10000000 - 11644473600) > 600) then
  return mp.CLEAN
end
return mp.INFECTED
