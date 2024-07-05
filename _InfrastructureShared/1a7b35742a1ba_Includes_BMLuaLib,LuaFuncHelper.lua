local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L1_1 = this_sigattrlog
L1_1 = L1_1[3]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[3]
  L0_0 = L1_1.utf8p2
else
  L1_1 = this_sigattrlog
  L1_1 = L1_1[6]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[6]
    L0_0 = L1_1.utf8p2
  else
    L1_1 = this_sigattrlog
    L1_1 = L1_1[9]
    L1_1 = L1_1.matched
    if L1_1 then
      L1_1 = this_sigattrlog
      L1_1 = L1_1[9]
      L0_0 = L1_1.utf8p2
    else
      L1_1 = this_sigattrlog
      L1_1 = L1_1[5]
      L1_1 = L1_1.matched
      if L1_1 then
        L1_1 = this_sigattrlog
        L1_1 = L1_1[5]
        L0_0 = L1_1.utf8p1
      else
        L1_1 = this_sigattrlog
        L1_1 = L1_1[8]
        L1_1 = L1_1.matched
        if L1_1 then
          L1_1 = this_sigattrlog
          L1_1 = L1_1[8]
          L0_0 = L1_1.utf8p1
        end
      end
    end
  end
end
L1_1 = "TamperingTracking"
L2_2 = reportSessionInformation
L2_2 = L2_2()
L3_3 = L2_2.User
if L3_3 then
  L3_3 = L2_2.User
  L3_3 = L3_3.UserName
  if L3_3 then
    L3_3 = L1_1
    L4_4 = "-"
    L5_5 = L2_2.User
    L5_5 = L5_5.UserName
    L3_3 = L3_3 .. L4_4 .. L5_5
    L4_4 = GetRollingQueueSumOfValues
    L5_5 = L3_3
    L4_4 = L4_4(L5_5)
    if L4_4 then
      L5_5 = L4_4.sum
      if L5_5 > 0 then
        L5_5 = GetRollingQueue
        L5_5 = L5_5(L3_3)
        bm.add_related_string("Tampering_Events_User", safeJsonSerialize(L5_5), bm.RelatedStringBMReport)
        bm.add_related_string("DetectionType", L0_0, bm.RelatedStringBMReport)
        bm.add_related_string("DetectionWeight", tostring(L4_4.sum), bm.RelatedStringBMReport)
        reportRelevantUntrustedEntities(0)
        return mp.INFECTED
      end
    end
  end
end
L3_3 = GetRollingQueueSumOfValues
L4_4 = L1_1
L3_3 = L3_3(L4_4)
if L3_3 then
  L4_4 = L3_3.sum
  if L4_4 > 0 then
    L4_4 = GetRollingQueue
    L5_5 = L1_1
    L4_4 = L4_4(L5_5)
    L5_5 = bm
    L5_5 = L5_5.add_related_string
    L5_5("Tampering_Events_Machine", safeJsonSerialize(L4_4), bm.RelatedStringBMReport)
    L5_5 = bm
    L5_5 = L5_5.add_related_string
    L5_5("DetectionType", L0_0, bm.RelatedStringBMReport)
    L5_5 = bm
    L5_5 = L5_5.add_related_string
    L5_5("DetectionWeight", tostring(L3_3.sum), bm.RelatedStringBMReport)
    L5_5 = reportRelevantUntrustedEntities
    L5_5(0)
    L5_5 = mp
    L5_5 = L5_5.INFECTED
    return L5_5
  end
end
L4_4 = mp
L4_4 = L4_4.CLEAN
return L4_4
