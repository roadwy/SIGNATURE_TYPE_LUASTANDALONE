local L0_0, L1_1, L2_2
L0_0 = GetRealPidForScenario
L1_1 = "CMDHSTR"
L0_0 = L0_0(L1_1)
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = IsPidExcluded
L2_2 = L0_0
L1_1 = L1_1(L2_2)
if L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.GetScannedPPID
L1_1 = L1_1()
if L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.GetProcessCommandLine
L2_2 = L2_2(L1_1)
if L2_2 == nil then
  return mp.CLEAN
end
if IsDetectionThresholdMet(L0_0) or IsTacticObservedForParents(L0_0, "remoteservice-target", 3) or IsTacticObservedForParents(L0_0, "exec_remotely_dropped_unsigned", 3) or IsTacticObservedForParents(L0_0, "processinjection_target", 3) or IsTacticObservedGlobal("susp_ransomware") then
  AppendToRollingQueue("BruteForceNetUse", L2_2, L1_1, 3600)
  if 3 < GetRollingQueueCount("BruteForceNetUse") then
    return mp.INFECTED
  end
end
return mp.CLEAN
