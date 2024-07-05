local L0_0, L1_1, L2_2, L3_3
L1_1 = this_sigattrlog
L1_1 = L1_1[30]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = this_sigattrlog
  L2_2 = L2_2[30]
  L2_2 = L2_2.utf8p1
  L1_1 = L1_1(L2_2)
  L0_0 = L1_1
  L2_2 = L0_0
  L1_1 = L0_0.match
  L3_3 = "(%w+%.exe)$"
  L1_1 = L1_1(L2_2, L3_3)
  L0_0 = L1_1
  if L0_0 == nil then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
  L1_1 = "|werfault.exe|werfaultsecure.exe|wermgr.exe|"
  L3_3 = L1_1
  L2_2 = L1_1.find
  L2_2 = L2_2(L3_3, L0_0, 1, true)
  if L2_2 ~= nil then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
end
L1_1 = MpCommon
L1_1 = L1_1.GetCurrentTimeT
L1_1 = L1_1()
L2_2 = MpCommon
L2_2 = L2_2.AnomalyEventLookup
L3_3 = "Svchost_ChildProcs"
L2_2 = L2_2(L3_3, "InitializationTime", 1)
if L2_2 == nil then
  L2_2 = L1_1
end
if L2_2 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = L2_2.Count
L3_3 = L1_1 - L3_3
L3_3 = L3_3 / 60
if MpCommon.AnomalyEventLookup("Svchost_ChildProcs", L0_0, 1) == nil then
  if L3_3 <= 10080 then
    return mp.CLEAN
  end
  bm.add_related_string("Initialization_Time", L2_2, bm.RelatedStringBMReport)
  bm.add_related_string("Minutes_Elapsed", L3_3, bm.RelatedStringBMReport)
  return mp.INFECTED
end
return mp.CLEAN
