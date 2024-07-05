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
L1_1 = nil
L2_2 = MpCommon
L2_2 = L2_2.GetProcessAttributeValue
L3_3 = L0_0.ppid
L4_4 = "inherit:PFApp_Parent"
L2_2 = L2_2(L3_3, L4_4)
if not L2_2 then
  L2_2 = MpCommon
  L2_2 = L2_2.GetProcessAttributeValue
  L3_3 = L0_0.ppid
  L4_4 = "PFApp_Parent"
  L2_2 = L2_2(L3_3, L4_4)
end
if L2_2 then
  L3_3 = safeJsonDeserialize
  L4_4 = L2_2
  L3_3 = L3_3(L4_4)
  if L3_3 then
    L1_1 = L3_3.AppName
  else
    L5_5 = L2_2
    L4_4 = L2_2.match
    L6_6 = "[^|]+"
    L4_4 = L4_4(L5_5, L6_6)
    L1_1 = L4_4
  end
else
  L2_2 = "None"
  L3_3 = this_sigattrlog
  L3_3 = L3_3[1]
  L3_3 = L3_3.matched
  if L3_3 then
    L3_3 = this_sigattrlog
    L3_3 = L3_3[1]
    L3_3 = L3_3.utf8p1
    L4_4 = L3_3
    L3_3 = L3_3.match
    L5_5 = "([^\\]+)$"
    L3_3 = L3_3(L4_4, L5_5)
    L1_1 = L3_3
  else
    L3_3 = this_sigattrlog
    L3_3 = L3_3[2]
    L3_3 = L3_3.matched
    if L3_3 then
      L3_3 = this_sigattrlog
      L3_3 = L3_3[2]
      L3_3 = L3_3.utf8p1
      L4_4 = L3_3
      L3_3 = L3_3.match
      L5_5 = "([^\\]+)$"
      L3_3 = L3_3(L4_4, L5_5)
      L1_1 = L3_3
    else
      L3_3 = this_sigattrlog
      L3_3 = L3_3[3]
      L3_3 = L3_3.matched
      if L3_3 then
        L3_3 = this_sigattrlog
        L3_3 = L3_3[3]
        L3_3 = L3_3.utf8p1
        L4_4 = L3_3
        L3_3 = L3_3.match
        L5_5 = "([^\\]+)$"
        L3_3 = L3_3(L4_4, L5_5)
        L1_1 = L3_3
      else
        L3_3 = this_sigattrlog
        L3_3 = L3_3[4]
        L3_3 = L3_3.matched
        if L3_3 then
          L3_3 = this_sigattrlog
          L3_3 = L3_3[4]
          L3_3 = L3_3.utf8p1
          L4_4 = L3_3
          L3_3 = L3_3.match
          L5_5 = "([^\\]+)$"
          L3_3 = L3_3(L4_4, L5_5)
          L1_1 = L3_3
        else
          L3_3 = this_sigattrlog
          L3_3 = L3_3[5]
          L3_3 = L3_3.matched
          if L3_3 then
            L3_3 = this_sigattrlog
            L3_3 = L3_3[5]
            L3_3 = L3_3.utf8p1
            L4_4 = L3_3
            L3_3 = L3_3.match
            L5_5 = "([^\\]+)$"
            L3_3 = L3_3(L4_4, L5_5)
            L1_1 = L3_3
          else
            L3_3 = this_sigattrlog
            L3_3 = L3_3[6]
            L3_3 = L3_3.matched
            if L3_3 then
              L3_3 = this_sigattrlog
              L3_3 = L3_3[6]
              L3_3 = L3_3.utf8p1
              L4_4 = L3_3
              L3_3 = L3_3.match
              L5_5 = "([^\\]+)$"
              L3_3 = L3_3(L4_4, L5_5)
              L1_1 = L3_3
            else
              L3_3 = this_sigattrlog
              L3_3 = L3_3[7]
              L3_3 = L3_3.matched
              if L3_3 then
                L3_3 = this_sigattrlog
                L3_3 = L3_3[7]
                L3_3 = L3_3.utf8p1
                L4_4 = L3_3
                L3_3 = L3_3.match
                L5_5 = "([^\\]+)$"
                L3_3 = L3_3(L4_4, L5_5)
                L1_1 = L3_3
              end
            end
          end
        end
      end
    end
  end
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
L6_6, L7_7 = nil, nil
L8_8 = {}
L8_8.TrackedProcess = L1_1
L8_8.SigName = "PFAppAnomalousOutbound.B"
L8_8.AnomalyTableName = "Appomaly_Network_HOST"
L9_9 = L1_1
L10_10 = "_"
L11_11 = L5_5
L9_9 = L9_9 .. L10_10 .. L11_11
L8_8.Key = L9_9
L9_9 = "Appomaly_Network_HOST"
L10_10 = MpCommon
L10_10 = L10_10.AnomalyEventLookup
L11_11 = L9_9
L12_12 = "MarkerRecord_"
L13_13 = L1_1
L12_12 = L12_12 .. L13_13
L13_13 = 1
L10_10 = L10_10(L11_11, L12_12, L13_13)
L11_11 = MpCommon
L11_11 = L11_11.GetCurrentTimeT
L11_11 = L11_11()
L12_12 = L11_11
if L10_10 then
  L13_13 = L10_10.Count
  if L13_13 then
    L12_12 = L10_10.Count
  end
else
  L13_13 = pcall
  L14_14 = MpCommon
  L14_14 = L14_14.AnomalyEventUpdate
  L15_15 = L9_9
  L16_16 = "MarkerRecord_"
  L16_16 = L16_16 .. L1_1
  L14_14 = L13_13(L14_14, L15_15, L16_16, L11_11, 1)
  L7_7 = L14_14
  L6_6 = L13_13
  if L6_6 then
    L8_8.hostname = L5_5
    L13_13 = bm
    L13_13 = L13_13.trigger_sig
    L14_14 = "AnomalyTableMarker_Rcr"
    L15_15 = safeJsonSerialize
    L16_16 = L8_8
    L16_16 = L15_15(L16_16)
    L13_13(L14_14, L15_15, L16_16, L15_15(L16_16))
  else
    L8_8.Error = L7_7
    L13_13 = bm
    L13_13 = L13_13.trigger_sig
    L14_14 = "AnomalyTable_Error"
    L15_15 = safeJsonSerialize
    L16_16 = L8_8
    L16_16 = L15_15(L16_16)
    L13_13(L14_14, L15_15, L16_16, L15_15(L16_16))
    L13_13 = mp
    L13_13 = L13_13.CLEAN
    return L13_13
  end
end
L13_13 = L11_11 - L12_12
L13_13 = L13_13 / 60
L14_14 = L1_1
L15_15 = "_"
L16_16 = L5_5
L14_14 = L14_14 .. L15_15 .. L16_16
L15_15 = MpCommon
L15_15 = L15_15.AnomalyEventLookup
L16_16 = L9_9
L15_15 = L15_15(L16_16, L14_14, 1)
if not L15_15 then
  if L13_13 > 43200 then
    L8_8.minutes_elapsed = L13_13
    L8_8.isTest = "false"
    L8_8.processAttrib = L2_2
    L16_16 = bm
    L16_16 = L16_16.add_related_string
    L16_16("AdditionalInfo", safeJsonSerialize(L8_8), bm.RelatedStringBMReport)
    L16_16 = mp
    L16_16 = L16_16.INFECTED
    return L16_16
  else
    L16_16 = pcall
    L7_7, L16_16 = MpCommon.AnomalyEventUpdate, L16_16(MpCommon.AnomalyEventUpdate, L9_9, L14_14, 1, 1)
    L6_6 = L16_16
  end
else
  L16_16 = L15_15.Count
  L16_16 = L16_16 + 1
  L6_6, L7_7 = pcall(MpCommon.AnomalyEventUpdate, L9_9, L14_14, L16_16, 1)
end
if not L6_6 then
  L8_8.Key = L14_14
  L8_8.Error = L7_7
  L16_16 = bm
  L16_16 = L16_16.trigger_sig
  L16_16("AnomalyTable_Error", safeJsonSerialize(L8_8))
end
L16_16 = mp
L16_16 = L16_16.CLEAN
return L16_16
