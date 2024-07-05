local L0_0
L0_0 = GetRealPidForScenario
L0_0 = L0_0("CMDHSTR")
if IsPidExcluded(L0_0) then
  return mp.CLEAN
end
if mp.GetParentProcInfo() ~= nil and #string.lower(mp.GetParentProcInfo().image_path) > 54 and string.lower(mp.GetParentProcInfo().image_path):find("microsoft.office.datacenter.torus.powershellworker.exe$") then
  return mp.CLEAN
end
if MpCommon.GetCurrentTimeT() - (sysio.GetFileLastWriteTime(mp.GetParentProcInfo().image_path) / 10000000 - 11644473600) < 172800 and not mp.IsKnownFriendlyFile(mp.GetParentProcInfo().image_path, false, false) then
  return mp.INFECTED
end
if 172800 > MpCommon.GetCurrentTimeT() - (sysio.GetFileLastWriteTime(mp.GetParentProcInfo(mp.GetParentProcInfo().ppid).image_path) / 10000000 - 11644473600) and not mp.IsKnownFriendlyFile(mp.GetParentProcInfo(mp.GetParentProcInfo().ppid).image_path, false, false) then
  return mp.INFECTED
end
return mp.CLEAN
