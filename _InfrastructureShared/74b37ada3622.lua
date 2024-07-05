local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = MpCommon
L0_0 = L0_0.AnomalyEventLookup
L1_1 = "powtrack"
L2_2 = "POWTRACKTDSC|"
L3_3 = 1
L0_0 = L0_0(L1_1, L2_2, L3_3)
L1_1 = nil
L2_2 = 0
if L0_0 == nil then
  L3_3 = this_sigattrlog
  L3_3 = L3_3[3]
  L1_1 = L3_3.timestamp
  L3_3 = MpCommon
  L3_3 = L3_3.AnomalyEventUpdate
  L4_4 = "powtrack"
  L3_3(L4_4, "POWTRACKTDSC|", 1, 1)
else
  L1_1 = L0_0.LastSeen
  L2_2 = L0_0.UnbiasedTime
end
L3_3 = bm
L3_3 = L3_3.get_imagepath
L3_3 = L3_3()
L4_4 = MpCommon
L4_4 = L4_4.AnomalyEventLookup
L4_4 = L4_4("powtrack", L3_3, 1)
L0_0 = L4_4
L4_4 = 1
if L0_0 ~= nil then
  L4_4 = L0_0.Count + 1
elseif L1_1 < this_sigattrlog[3].timestamp then
  if this_sigattrlog[3].timestamp - L1_1 > 26784000000000 then
    mp.ReportLowfi(L3_3, 1888262118)
  end
  if L2_2 > 6000 then
    mp.ReportLowfi(L3_3, 2177800794)
  end
end
MpCommon.AnomalyEventUpdate("powtrack", L3_3, L4_4, 1)
return mp.CLEAN
