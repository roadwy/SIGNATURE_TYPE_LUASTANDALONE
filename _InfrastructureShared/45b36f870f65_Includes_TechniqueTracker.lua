local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(MpCommon.PathToWin32Path(bm.get_imagepath()))
if L0_0 and (string.find(L0_0, "\\program files", 1, true) or string.find(L0_0, "\\windows", 1, true)) then
  if MpCommon.QueryPersistContext(L0_0, "NewPECreatedNoCert") then
    if GetTaintLevelHR() == nil or GetTaintLevelHR() ~= "Medium" and GetTaintLevelHR() ~= "High" then
      return mp.CLEAN
    end
    if IsDetectionThresholdMet("BM") and (IsTacticObservedForPid("BM", "processinjection_target") or IsTacticObservedForPid("BM", "discovery")) then
      return mp.INFECTED
    end
    return mp.CLEAN
  end
  return mp.CLEAN
end
if not MpCommon.QueryPersistContext(L0_0, "ExecutedPENoCert") then
  return mp.CLEAN
end
if GetTaintLevelHR() == nil or GetTaintLevelHR() ~= "Medium" and GetTaintLevelHR() ~= "High" then
  return mp.CLEAN
end
if IsDetectionThresholdMet("BM") and (IsTacticObservedForPid("BM", "processinjection_target") or IsTacticObservedForPid("BM", "discovery")) then
  return mp.INFECTED
end
return mp.CLEAN
