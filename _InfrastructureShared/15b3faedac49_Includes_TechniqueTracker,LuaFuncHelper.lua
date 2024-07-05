local L0_0, L1_1
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = L0_0.ppid
elseif L1_1 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = AddResearchData
L1_1(L0_0.ppid, true)
L1_1 = MpCommon
L1_1 = L1_1.EnumThreatHistory
L1_1 = L1_1("", 3600, crypto.bitor(MpCommon.THREAT_HISTORY_CATEGORY_ASR, MpCommon.THREAT_HISTORY_CATEGORY_NP))
if next(L1_1) then
  bm.add_related_string("EnumThreatHistory", safeJsonSerialize(L1_1), bm.RelatedStringBMReport)
end
return mp.INFECTED
