local L0_0, L1_1, L2_2, L3_3
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.utf8p2
  if L0_0 then
    L0_0 = this_sigattrlog
    L0_0 = L0_0[1]
    L0_0 = L0_0.utf8p2
    L2_2 = L0_0
    L1_1 = L0_0.match
    L3_3 = "(%d+);(%w+)"
    L2_2 = L1_1(L2_2, L3_3)
    L3_3 = bm
    L3_3 = L3_3.add_related_string
    L3_3("detection_weight", L1_1, bm.RelatedStringBMReport)
    L3_3 = GetRollingQueue
    L3_3 = L3_3(L2_2)
    bm.add_related_string(this_sigattrlog[1].utf8p1, safeJsonSerialize(L3_3), bm.RelatedStringBMReport)
  end
end
L0_0 = reportSessionInformationInclusive
L0_0()
L0_0 = reportRelevantUntrustedEntities
L1_1 = 0
L0_0(L1_1)
L0_0 = reportTimingData
L0_0()
L0_0 = mp
L0_0 = L0_0.INFECTED
return L0_0
