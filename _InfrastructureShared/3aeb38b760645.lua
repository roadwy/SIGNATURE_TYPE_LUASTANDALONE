local L0_0
L0_0 = bm
L0_0 = L0_0.GetSignatureMatchDuration
L0_0 = L0_0()
if L0_0 > 100000000 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(MpCommon.PathToWin32Path(bm.get_imagepath()))
if not string.find(L0_0, "c:\\", 1, true) then
  return mp.CLEAN
end
if string.find(L0_0, "\\program files", 1, true) or string.find(L0_0, "microsoft.management.services.intunewindowsagent.exe", 1, true) or string.find(L0_0, "\\windows", 1, true) or string.find(L0_0, "\\services.exe", 1, true) or string.find(L0_0, "\\wmiprvse.exe", 1, true) or string.find(L0_0, "\\cmd.exe", 1, true) or string.find(L0_0, "\\vsdebugconsole.exe", 1, true) or string.find(L0_0, "\\environmentalmapping.core.service.exe", 1, true) or string.find(L0_0, "\\powershell.exe", 1, true) then
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
