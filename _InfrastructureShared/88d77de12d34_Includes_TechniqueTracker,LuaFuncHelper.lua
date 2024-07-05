local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.GetParentProcInfo
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = L0_0.ppid
  if L1_1 ~= nil then
    L1_1 = L0_0.image_path
  end
elseif L1_1 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.GetScannedPPID
L1_1 = L1_1()
if L1_1 == "" or L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.GetProcessCommandLine
L3_3 = L1_1
L2_2 = L2_2(L3_3)
if L2_2 == "" or L2_2 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = ""
L2_2 = string.lower(L2_2)
L2_2 = string.gsub(L2_2, "'", "\"")
L2_2 = string.gsub(L2_2, "\"\"", "\"")
if string.match(L2_2, "config[%s]*\"") then
  L3_3 = string.match(L2_2, "config[%s]*\"([^\"]+)\"[%s]start")
else
  L3_3 = string.match(L2_2, "config[%s]*(%S+)[%s]*start")
end
if L3_3 == "" or L3_3 == nil then
  return mp.CLEAN
end
TrackPidAndTechnique(L0_0.ppid, "T1489", "svc_disable_" .. L3_3)
if TT_IsProdCriticalService(L3_3) or IsDetectionThresholdMet(L0_0.ppid) then
  AppendToRollingQueue("TT_ModifiedCriticalServices", L3_3, "disabled", 3600)
  return mp.INFECTED
end
return mp.CLEAN
