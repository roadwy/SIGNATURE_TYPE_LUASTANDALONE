local L0_0, L1_1
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
L1_1 = string
L1_1 = L1_1.lower
L1_1 = L1_1(L0_0.command_line)
if string.find(L1_1, "\\program files", 1, true) or string.find(L1_1, "\\netlogon\\", 1, true) or string.find(L1_1, "\\sysvol\\", 1, true) or string.find(L1_1, " -nologo ", 1, true) or string.find(L1_1, " -noprofile ", 1, true) or string.find(L1_1, " -noninteractive ", 1, true) then
  return mp.CLEAN
end
if GetTaintLevelHR() == nil or GetTaintLevelHR() ~= "Medium" and GetTaintLevelHR() ~= "High" then
  return mp.CLEAN
end
if IsDetectionThresholdMet("BM") and (IsTacticObservedForPid("BM", "processinjection_target") or IsTacticObservedForPid("BM", "discovery")) then
  return mp.INFECTED
end
return mp.CLEAN
