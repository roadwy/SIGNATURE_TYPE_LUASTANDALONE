local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_PROCESSNAME
L0_0 = L0_0(L1_1)
if L0_0 == nil or L0_0 == "" then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L1_1 = L1_1(L0_0)
L0_0 = L1_1
if L0_0 ~= "explorer.exe" then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.get_contextdata
L1_1 = L1_1(mp.CONTEXT_DATA_PROCESS_PPID)
if not L1_1 then
  return mp.CLEAN
end
if not pcall(MpCommon.QuerySessionInformation, L1_1, MpCommon.WTSIsRemoteSession) or not pcall(MpCommon.QuerySessionInformation, L1_1, MpCommon.WTSIsRemoteSession) then
  return mp.CLEAN
end
TrackPidAndTechnique(L1_1, "T1021.001", "is_remote_desktop_connection")
if mp.IsHipsRuleEnabled("d1e49aac-8f56-4280-b9ba-993a6d77406c") or mp.IsHipsRuleEnabled("c1db55ab-c21a-4637-bb3f-a12568109d35") or mp.get_mpattribute("Lua:TT:DetectionThresholdMet") then
  return mp.INFECTED
end
return mp.CLEAN
