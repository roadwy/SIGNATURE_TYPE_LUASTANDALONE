local L0_0
L0_0 = bm
L0_0 = L0_0.GetSignatureMatchDuration
L0_0 = L0_0()
if L0_0 > 100000000 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = MpCommon
L0_0 = L0_0.PathToWin32Path
L0_0 = L0_0(bm.get_imagepath())
if L0_0 == nil then
  return mp.CLEAN
end
L0_0 = string.lower(L0_0)
if not string.find(L0_0, "c:\\", 1, true) then
  return mp.CLEAN
end
if string.find(L0_0, "\\program files", 1, true) or string.find(L0_0, "\\windows", 1, true) or string.find(L0_0, "\\teams.exe", 1, true) or string.find(L0_0, "game", 1, true) or string.find(L0_0, "steam", 1, true) or string.find(L0_0, "\\jackettconsole", 1, true) or string.find(L0_0, "c:\\agent.exe", 1, true) or string.find(L0_0, "torrent", 1, true) then
  return mp.CLEAN
end
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
  return mp.INFECTED
end
return mp.CLEAN
