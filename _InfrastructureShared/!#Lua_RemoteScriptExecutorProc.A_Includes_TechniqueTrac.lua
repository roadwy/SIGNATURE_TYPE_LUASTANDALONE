local L0_0
L0_0 = GetRealPidForScenario
L0_0 = L0_0("AMSI")
if L0_0 == nil then
  L0_0 = GetRealPidForScenario("RTP")
end
if L0_0 == nil then
  return mp.CLEAN
end
if GetTacticsTableForPid(L0_0) == nil then
  return mp.CLEAN
end
if GetTacticsTableForPid(L0_0).wmi_childproc or GetTacticsTableForPid(L0_0).wsmprovhost_childproc or GetTacticsTableForPid(L0_0).winrshost_childproc or GetTacticsTableForPid(L0_0).exec_remotedroppedscript_a or GetTacticsTableForPid(L0_0).exec_remotedroppedscript_b or GetTacticsTableForPid(L0_0).ExecRemoteDroppedExe or GetTacticsTableForPid(L0_0).exec_from_remoteshare then
  return mp.INFECTED
end
if mp.get_mpattribute("Lua:TT:DetectionThresholdMet") and (IsTacticObservedForParents(L0_0, "exec_from_remoteshare", 2) or IsTacticObservedForParents(L0_0, "remoteservice-target", 2)) then
  return mp.INFECTED
end
return mp.CLEAN
