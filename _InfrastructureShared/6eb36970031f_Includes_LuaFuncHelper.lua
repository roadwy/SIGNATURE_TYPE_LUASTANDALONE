local L0_0
L0_0 = MpCommon
L0_0 = L0_0.EnumThreatHistory
L0_0 = L0_0("", 7200, crypto.bitor(MpCommon.THREAT_HISTORY_CATEGORY_ASR, MpCommon.THREAT_HISTORY_CATEGORY_NP))
for _FORV_4_, _FORV_5_ in ipairs(L0_0) do
  if _FORV_5_.Severity ~= 5 then
    return mp.CLEAN
  end
  bm.add_related_string("Ransom_EnumThreatHistory", safeJsonSerialize(L0_0), bm.RelatedStringBMReport)
  return mp.INFECTED
end
return mp.CLEAN
