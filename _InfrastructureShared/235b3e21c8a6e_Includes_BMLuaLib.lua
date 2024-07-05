local L0_0, L1_1, L2_2, L3_3
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
L1_1 = MpCommon
L1_1 = L1_1.QuerySessionInformation
L2_2 = L0_0.ppid
L3_3 = MpCommon
L3_3 = L3_3.WTSIsRemoteSession
L1_1 = L1_1(L2_2, L3_3)
if L1_1 then
  L2_2 = MpCommon
  L2_2 = L2_2.QuerySessionInformation
  L3_3 = L0_0.ppid
  L2_2 = L2_2(L3_3, MpCommon.WTSUserName)
  L3_3 = MpCommon
  L3_3 = L3_3.QueryPersistContextNoPath
  L3_3 = L3_3("MpNewRemoteUsers", L2_2)
  if L3_3 then
    L3_3 = isTamperProtectionOn
    L3_3 = L3_3(false)
    bm.add_related_string("TpState", tostring(L3_3), bm.RelatedStringBMReport)
    return mp.INFECTED
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
