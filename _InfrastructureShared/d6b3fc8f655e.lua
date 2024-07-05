local L0_0, L1_1, L2_2
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
L1_1 = MpCommon
L1_1 = L1_1.QuerySessionInformation
L2_2 = L0_0.ppid
L1_1 = L1_1(L2_2, MpCommon.WTSIsRemoteSession)
if L1_1 then
  L2_2 = MpCommon
  L2_2 = L2_2.QuerySessionInformation
  L2_2 = L2_2(L0_0.ppid, MpCommon.WTSUserName)
  if MpCommon.QueryPersistContextNoPath("MpNewRemoteUsers", L2_2) then
    return mp.INFECTED
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
