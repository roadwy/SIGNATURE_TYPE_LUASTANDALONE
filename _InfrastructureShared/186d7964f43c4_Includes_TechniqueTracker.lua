local L0_0
L0_0 = GetRealPidForScenario
L0_0 = L0_0("CMDHSTR")
if IsPidExcluded(L0_0) then
  return mp.CLEAN
end
if mp.GetParentProcInfo() ~= nil and #string.lower(mp.GetParentProcInfo().image_path) > 54 and string.lower(mp.GetParentProcInfo().image_path):find("microsoft.office.datacenter.torus.powershellworker.exe$") then
  return mp.CLEAN
end
if IsDetectionThresholdMet(L0_0) or IsTacticObservedForParents(L0_0, "remoteservice-target", 3) or IsTacticObservedForParents(L0_0, "exec_remotely_dropped_unsigned", 3) then
  return mp.INFECTED
end
if IsTacticObservedGlobal("susp_ransomware") then
  return mp.INFECTED
end
return mp.CLEAN
