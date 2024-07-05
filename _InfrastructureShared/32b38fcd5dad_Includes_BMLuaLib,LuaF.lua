local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.utf8p2
  if L1_1 then
    L1_1 = safeJsonDeserialize
    L2_2 = this_sigattrlog
    L2_2 = L2_2[1]
    L2_2 = L2_2.utf8p2
    L1_1 = L1_1(L2_2)
    L0_0 = L1_1
  end
end
if not L0_0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = nil
L2_2 = L0_0.AttributeValue
L3_3 = safeJsonDeserialize
L4_4 = L2_2
L3_3 = L3_3(L4_4)
if L3_3 then
  L1_1 = L3_3.AppName
else
  L5_5 = L2_2
  L4_4 = L2_2.match
  L4_4 = L4_4(L5_5, L6_6)
  L1_1 = L4_4
end
if not L1_1 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = {L5_5, L6_6}
L5_5 = "Appomaly_Network_HOST"
L5_5 = MpCommon
L5_5 = L5_5.GetCurrentTimeT
L5_5 = L5_5()
for L9_9, L10_10 in L6_6(L7_7) do
  L11_11 = {}
  L11_11.ConnectionInfo = L0_0
  L11_11.SigName = "Behavior:Win32/PFAppAnomalousOutbound.A"
  L12_12 = L0_0.Url
  L11_11.Url = L12_12
  L11_11.TableName = L10_10
  L12_12 = MpCommon
  L12_12 = L12_12.AnomalyEventLookup
  L13_13 = L10_10
  L14_14 = "MarkerRecord_"
  L15_15 = L1_1
  L14_14 = L14_14 .. L15_15
  L15_15 = 1
  L12_12 = L12_12(L13_13, L14_14, L15_15)
  L13_13 = L5_5
  if L12_12 then
    L14_14 = L12_12.Count
    if L14_14 then
      L14_14 = L12_12.Count
      if L14_14 ~= -1 then
        L13_13 = L12_12.Count
      end
    else
      L14_14 = {}
      L14_14.SignatureName = "PFAppAnomalousOutbound.A"
      L14_14.Error = "Record has been added with value -1."
      L14_14.AnomalyTableName = L10_10
      L15_15 = "MarkerRecord_"
      L16_16 = L1_1
      L15_15 = L15_15 .. L16_16
      L14_14.Key = L15_15
      L15_15 = bm
      L15_15 = L15_15.trigger_sig
      L16_16 = "AnomalyTable_Error"
      L17_17 = safeJsonSerialize
      L18_18 = L14_14
      L18_18 = L17_17(L18_18)
      L15_15(L16_16, L17_17, L18_18, L17_17(L18_18))
      L15_15 = pcall
      L16_16 = MpCommon
      L16_16 = L16_16.AnomalyEventUpdate
      L17_17 = L10_10
      L18_18 = "MarkerRecord_"
      L18_18 = L18_18 .. L1_1
      L15_15(L16_16, L17_17, L18_18, L5_5, 1)
    end
  else
    L14_14 = pcall
    L15_15 = MpCommon
    L15_15 = L15_15.AnomalyEventUpdate
    L16_16 = L10_10
    L17_17 = "MarkerRecord_"
    L18_18 = L1_1
    L17_17 = L17_17 .. L18_18
    L18_18 = L5_5
    L15_15 = L14_14(L15_15, L16_16, L17_17, L18_18, 1)
    if L14_14 then
      L11_11.AnomalyTableName = L10_10
      L16_16 = bm
      L16_16 = L16_16.trigger_sig
      L17_17 = "AnomalyTableMarker_Rcr"
      L18_18 = safeJsonSerialize
      L18_18 = L18_18(L11_11)
      L16_16(L17_17, L18_18, L18_18(L11_11))
    else
      L11_11.Error = L15_15
      L16_16 = bm
      L16_16 = L16_16.trigger_sig
      L17_17 = "AnomalyTable_Error"
      L18_18 = safeJsonSerialize
      L18_18 = L18_18(L11_11)
      L16_16(L17_17, L18_18, L18_18(L11_11))
    end
  end
  L14_14 = nil
  if L10_10 == "Appomaly_Network_HOST" then
    L15_15 = L1_1
    L16_16 = "_"
    L17_17 = L0_0.HostName
    L14_14 = L15_15 .. L16_16 .. L17_17
  elseif L10_10 == "Appomaly_Network_UserAgent" then
    L15_15 = L0_0.UserAgent
    if L15_15 ~= "" then
      L15_15 = L1_1
      L16_16 = "_"
      L17_17 = L0_0.UserAgent
      L14_14 = L15_15 .. L16_16 .. L17_17
    end
  end
  L11_11.Key = L14_14
  if L14_14 then
    L15_15, L16_16 = nil, nil
    L17_17 = MpCommon
    L17_17 = L17_17.AnomalyEventLookup
    L18_18 = L10_10
    L17_17 = L17_17(L18_18, L14_14, 1)
    if not L17_17 then
      L18_18 = L5_5 - L13_13
      L18_18 = L18_18 / 60
      if L18_18 / 1440 > 30 then
        L11_11.Days_elapsed = L18_18 / 1440
        bm.add_related_string("AdditionalInfo", safeJsonSerialize(L11_11), bm.RelatedStringBMReport)
        bm.trigger_sig(L10_10, safeJsonSerialize(L11_11))
        if bm.get_current_process_startup_info() and L0_0.AttributeName then
          IncreaseProcessAnomalyScore(bm.get_current_process_startup_info().ppid, 10, L10_10, L0_0.AttributeName)
        end
      else
        L15_15, L16_16 = pcall(MpCommon.AnomalyEventUpdate, L10_10, L14_14, 1, 1)
      end
    else
      L18_18 = L17_17.Count
      L18_18 = L18_18 + 1
      L15_15, L16_16 = pcall(MpCommon.AnomalyEventUpdate, L10_10, L14_14, L18_18, 1)
    end
    if not L15_15 then
      L11_11.Error = L16_16
      L18_18 = bm
      L18_18 = L18_18.trigger_sig
      L18_18("AnomalyTable_Error", safeJsonSerialize(L11_11))
    end
  end
end
return L6_6
