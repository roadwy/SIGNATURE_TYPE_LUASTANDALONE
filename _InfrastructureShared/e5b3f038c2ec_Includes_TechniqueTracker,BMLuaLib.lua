local L0_0
L0_0 = is_excluded_parent_proc_auto
L0_0 = L0_0()
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = GetRealPidForScenario
L0_0 = L0_0("BM")
AddResearchData(L0_0, true)
if IsTacticObservedForPid(L0_0, "ntdsexfil") and IsTechniqueObservedForPid(L0_0, "T1140") then
  return mp.INFECTED
end
if IsTechniqueObservedForPid(L0_0, "T1047") or IsTechniqueObservedForPid(L0_0, "T1021.006") then
  return mp.INFECTED
end
if IsDetectionThresholdMet(L0_0) then
  return mp.INFECTED
end
return mp.CLEAN
