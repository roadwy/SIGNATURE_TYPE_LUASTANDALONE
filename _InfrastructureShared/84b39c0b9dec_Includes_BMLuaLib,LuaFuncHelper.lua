local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
if L0_0 then
  L1_1 = L0_0.ppid
elseif not L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = MpCommon
L1_1 = L1_1.GetProcessAttributeValue
L2_2 = L0_0.ppid
L3_3 = "inherit:PFApp_Parent"
L1_1 = L1_1(L2_2, L3_3)
if not L1_1 then
  L1_1 = MpCommon
  L1_1 = L1_1.GetProcessAttributeValue
  L2_2 = L0_0.ppid
  L3_3 = "PFApp_Parent"
  L1_1 = L1_1(L2_2, L3_3)
end
L2_2 = "ruby.exe"
if not L1_1 then
  L3_3 = {}
  L1_1 = L3_3
end
L3_3 = bm
L3_3 = L3_3.get_connection_string
L3_3 = L3_3()
if not L3_3 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L5_5 = L3_3
L4_4 = L3_3.match
L6_6 = "Uri=(.-;)"
L4_4 = L4_4(L5_5, L6_6)
if not L4_4 then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L6_6 = L4_4
L5_5 = L4_4.match
L7_7 = "^%a+://([^:/]+)"
L5_5 = L5_5(L6_6, L7_7)
if not L5_5 then
  L6_6 = mp
  L6_6 = L6_6.CLEAN
  return L6_6
end
L6_6 = string
L6_6 = L6_6.lower
L7_7 = L5_5
L6_6 = L6_6(L7_7)
L5_5 = L6_6
L6_6 = "PFApp_HOST"
L7_7 = MpCommon
L7_7 = L7_7.AnomalyEventLookup
L8_8 = L6_6
L9_9 = "MarkerRecord_"
L10_10 = L2_2
L9_9 = L9_9 .. L10_10
L10_10 = 1
L7_7 = L7_7(L8_8, L9_9, L10_10)
L8_8 = MpCommon
L8_8 = L8_8.GetCurrentTimeT
L8_8 = L8_8()
L9_9 = L8_8
L10_10, L11_11 = nil, nil
L12_12 = {}
L12_12.TrackedProcess = L2_2
L12_12.SigName = "Behavior:Win32/PFAppAnomalousOutbound.C"
L12_12.AnomalyTableName = "Appomaly_Network_HOST"
if L7_7 then
  L13_13 = L7_7.Count
  if L13_13 then
    L9_9 = L7_7.Count
  end
else
  L9_9 = L8_8
  L13_13 = pcall
  L14_14 = MpCommon
  L14_14 = L14_14.AnomalyEventUpdate
  L15_15 = L6_6
  L16_16 = "MarkerRecord_"
  L16_16 = L16_16 .. L2_2
  L14_14 = L13_13(L14_14, L15_15, L16_16, L8_8, 1)
  L11_11 = L14_14
  L10_10 = L13_13
  if L10_10 then
    L13_13 = bm
    L13_13 = L13_13.trigger_sig
    L14_14 = "AnomalyTableMarker_Rcr"
    L15_15 = safeJsonSerialize
    L16_16 = L12_12
    L16_16 = L15_15(L16_16)
    L13_13(L14_14, L15_15, L16_16, L15_15(L16_16))
  else
    L12_12.Error = L11_11
    L13_13 = bm
    L13_13 = L13_13.trigger_sig
    L14_14 = "AnomalyTable_Error"
    L15_15 = safeJsonSerialize
    L16_16 = L12_12
    L16_16 = L15_15(L16_16)
    L13_13(L14_14, L15_15, L16_16, L15_15(L16_16))
    L13_13 = mp
    L13_13 = L13_13.CLEAN
    return L13_13
  end
end
L13_13 = L8_8 - L9_9
L13_13 = L13_13 / 60
L14_14 = L2_2
L15_15 = "_"
L16_16 = L5_5
L14_14 = L14_14 .. L15_15 .. L16_16
L15_15 = MpCommon
L15_15 = L15_15.AnomalyEventLookup
L16_16 = L6_6
L15_15 = L15_15(L16_16, L14_14, 1)
if not L15_15 then
  if L13_13 > 43200 then
    L12_12.minutes_elapsed = L13_13
    L12_12.isTest = "false"
    L12_12.processAttrib = L1_1
    L16_16 = bm
    L16_16 = L16_16.add_related_string
    L16_16("AdditionalInfo", safeJsonSerialize(L12_12), bm.RelatedStringBMReport)
    L16_16 = mp
    L16_16 = L16_16.INFECTED
    return L16_16
  else
    L16_16 = pcall
    L11_11, L16_16 = MpCommon.AnomalyEventUpdate, L16_16(MpCommon.AnomalyEventUpdate, L6_6, L14_14, 1, 1)
    L10_10 = L16_16
  end
else
  L16_16 = L15_15.Count
  L16_16 = L16_16 + 1
  L10_10, L11_11 = pcall(MpCommon.AnomalyEventUpdate, L6_6, L14_14, L16_16, 1)
end
if not L10_10 then
  L12_12.Key = L14_14
  L12_12.Error = L11_11
  L16_16 = bm
  L16_16 = L16_16.trigger_sig
  L16_16("AnomalyTable_Error", safeJsonSerialize(L12_12))
end
L16_16 = mp
L16_16 = L16_16.CLEAN
return L16_16
