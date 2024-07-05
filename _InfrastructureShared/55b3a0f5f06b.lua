local L0_0, L1_1, L2_2
L1_1 = this_sigattrlog
L1_1 = L1_1[3]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[3]
  L0_0 = L1_1.utf8p2
end
L1_1 = string
L1_1 = L1_1.lower
L2_2 = L0_0
L1_1 = L1_1(L2_2)
L0_0 = L1_1
L1_1 = string
L1_1 = L1_1.match
L2_2 = L0_0
L1_1 = L1_1(L2_2, "(.+)\\")
L2_2 = bm
L2_2 = L2_2.get_imagepath
L2_2 = L2_2()
if L0_0 == nil or L2_2 == nil then
  return mp.CLEAN
end
if string.find(L0_0, "^%%", 0) or (L2_2 ~= nil and string.match(string.lower(MpCommon.PathToWin32Path(L2_2)), "(.+)\\") or nil) ~= L1_1 or not mp.IsKnownFriendlyFile(L2_2, true, false) or mp.IsKnownFriendlyFile(L0_0, true, false) then
  return mp.CLEAN
end
if sysio.GetLastResult().Success and sysio.GetFileLastWriteTime(L0_0) ~= 0 and (sysio.GetFileLastWriteTime(L0_0) / 10000000 - 11644473600 > MpCommon.GetCurrentTimeT() or MpCommon.GetCurrentTimeT() - (sysio.GetFileLastWriteTime(L0_0) / 10000000 - 11644473600) > 600) then
  return mp.CLEAN
end
return mp.INFECTED
