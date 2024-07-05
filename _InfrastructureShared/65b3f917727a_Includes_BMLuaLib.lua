local L0_0, L1_1, L2_2
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
L1_1 = false
L2_2 = false
if not L0_0 or not L0_0.pid then
  return mp.CLEAN
end
L2_2, L1_1 = pcall(MpCommon.QuerySessionInformation, L0_0.ppid, MpCommon.WTSIsRemoteSession)
if L2_2 and L1_1 then
  reportSessionInformation()
  reportRelevantUntrustedEntities()
  return mp.INFECTED
end
return mp.CLEAN
