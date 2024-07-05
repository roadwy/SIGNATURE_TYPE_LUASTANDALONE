local L0_0
L0_0 = mp
L0_0 = L0_0.GetScannedPPID
L0_0 = L0_0()
if mp.GetParentProcInfo() ~= nil then
  TrackPidAndTechnique(mp.GetParentProcInfo().ppid, "T1562.004", "DefenseEvasion")
end
if L0_0 ~= nil and (IsTacticObservedForPid(L0_0, "CommandAndControl_RemoteFileCopy") or IsTacticObservedForParents(L0_0, "CommandAndControl_RemoteFileCopy", 2)) then
  return mp.INFECTED
end
return mp.CLEAN
