local L0_0
if this_sigattrlog[2].matched then
  L0_0 = this_sigattrlog[2].ppid
end
if L0_0 ~= nil and not isParentPackageManager(L0_0) then
  TrackPidAndTechniqueBM(L0_0, "T1562.001", "DefenseEvasion")
  if IsTacticObservedForPid(L0_0, "CommandAndControl_RemoteFileCopy") then
    return mp.INFECTED
  end
  if mp.GetParentProcInfo(L0_0) ~= nil and IsTacticObservedForPid(mp.GetParentProcInfo(L0_0).ppid, "CommandAndControl_RemoteFileCopy") then
    return mp.INFECTED
  end
end
return mp.CLEAN
