local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
L1_1 = MpCommon
L1_1 = L1_1.GetProcessAttributeValue
L2_2 = L0_0.ppid
L3_3 = "PFAppTracked"
L1_1 = L1_1(L2_2, L3_3)
if not L1_1 then
  L1_1 = MpCommon
  L1_1 = L1_1.GetProcessAttributeValue
  L2_2 = L0_0.ppid
  L3_3 = "inherit:PFAppTracked"
  L1_1 = L1_1(L2_2, L3_3)
end
if not L1_1 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = safeJsonDeserialize
L3_3 = L1_1
L2_2 = L2_2(L3_3)
if not L2_2 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = L2_2.AppName
L4_4 = bm
L4_4 = L4_4.get_imagepath
L4_4 = L4_4()
if not L4_4 then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = contains
L6_6 = L4_4
L7_7 = {L8_8, L9_9}
L8_8 = "conhost.exe"
L9_9 = "WerFault.exe"
L5_5 = L5_5(L6_6, L7_7)
if L5_5 then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L6_6 = L4_4
L5_5 = L4_4.match
L7_7 = "([^\\]+)$"
L5_5 = L5_5(L6_6, L7_7)
L6_6 = "Appomaly_ChildProcName"
L7_7 = MpCommon
L7_7 = L7_7.AnomalyEventLookup
L8_8 = L6_6
L9_9 = "MarkerRecord_"
L10_10 = L3_3
L9_9 = L9_9 .. L10_10
L10_10 = 1
L7_7 = L7_7(L8_8, L9_9, L10_10)
L8_8 = MpCommon
L8_8 = L8_8.GetCurrentTimeT
L8_8 = L8_8()
L9_9 = L8_8
L10_10 = L3_3
L11_11 = "_"
L12_12 = L5_5
L10_10 = L10_10 .. L11_11 .. L12_12
L11_11, L12_12 = nil, nil
L13_13 = {}
L13_13.TrackedProcess = L3_3
L13_13.SigName = "PFAppChildProc.B"
L13_13.AnomalyTableName = "Appomaly_ChildProcName"
L13_13.Key = L10_10
if L7_7 then
  L14_14 = L7_7.Count
  if L14_14 then
    L9_9 = L7_7.Count
    L14_14 = L8_8 - L9_9
    L14_14 = L14_14 / 60
    L15_15 = MpCommon
    L15_15 = L15_15.AnomalyEventLookup
    L16_16 = L6_6
    L17_17 = L10_10
    L15_15 = L15_15(L16_16, L17_17, 1)
    if not L15_15 then
      if L14_14 > 43200 then
        L16_16 = add_parents
        L16_16()
        L13_13.TimeElapsed = L14_14
        L16_16 = mp
        L16_16 = L16_16.GetProcessCommandLine
        L17_17 = L0_0.ppid
        L16_16 = L16_16(L17_17)
        L17_17 = CommandLineTokenizer
        L17_17 = L17_17(L16_16)
        if next(L17_17) then
          L13_13.CommandlineTokens = L17_17
          L13_13.CommandlineScore = CommandLineGrader(L16_16)
        end
        L13_13.ProcNameWeight = ({
          ["cmd.exe"] = 10,
          ["powershell.exe"] = 10,
          ["reg.exe"] = 5,
          ["pwsh"] = 10,
          ["net.exe"] = 5,
          ["wmic.exe"] = 5,
          ["net1.exe"] = 5,
          ["rundll32.exe"] = 5
        })[string.lower(L5_5)] or 0
        bm.add_related_string("AdditionalInfo", safeJsonSerialize(L13_13), bm.RelatedStringBMReport)
        return mp.INFECTED
      else
        L16_16 = pcall
        L17_17 = MpCommon
        L17_17 = L17_17.AnomalyEventUpdate
        L17_17 = L16_16(L17_17, L6_6, L10_10, 1, 1)
        L12_12 = L17_17
        L11_11 = L16_16
      end
    else
      L16_16 = L15_15.Count
      L17_17 = pcall
      L12_12, L17_17 = MpCommon.AnomalyEventUpdate, L17_17(MpCommon.AnomalyEventUpdate, L6_6, L10_10, L16_16 + 1, 1)
      L11_11 = L17_17
    end
  end
else
  L9_9 = L8_8
  L14_14 = pcall
  L15_15 = MpCommon
  L15_15 = L15_15.AnomalyEventUpdate
  L16_16 = L6_6
  L17_17 = "MarkerRecord_"
  L17_17 = L17_17 .. L3_3
  L15_15 = L14_14(L15_15, L16_16, L17_17, L8_8, 1)
  L12_12 = L15_15
  L11_11 = L14_14
  if L11_11 then
    L14_14 = bm
    L14_14 = L14_14.trigger_sig
    L15_15 = "AnomalyTableMarker_Rcr"
    L16_16 = safeJsonSerialize
    L17_17 = L13_13
    L17_17 = L16_16(L17_17)
    L14_14(L15_15, L16_16, L17_17, L16_16(L17_17))
    L14_14 = pcall
    L15_15 = MpCommon
    L15_15 = L15_15.AnomalyEventUpdate
    L16_16 = L6_6
    L17_17 = L10_10
    L15_15 = L14_14(L15_15, L16_16, L17_17, 1, 1)
    L12_12 = L15_15
    L11_11 = L14_14
  end
end
if not L11_11 then
  L13_13.Error = L12_12
  L14_14 = bm
  L14_14 = L14_14.trigger_sig
  L15_15 = "AnomalyTable_Error"
  L16_16 = safeJsonSerialize
  L17_17 = L13_13
  L17_17 = L16_16(L17_17)
  L14_14(L15_15, L16_16, L17_17, L16_16(L17_17))
end
L14_14 = {}
L14_14.ParentName = L3_3
L14_14.ProcessName = L5_5
L14_14.Source = "BM"
L14_14.SignatureName = "PFAppChildProc.B"
L14_14.TableName = "Appomaly_ChildProcName_CmdLine"
L14_14.AttributeName = "PFAppTracked"
L14_14.AttributeCategory = "programfiles_Net"
L15_15 = bm
L15_15 = L15_15.trigger_sig
L16_16 = "AnomalousChildCommandline"
L17_17 = safeJsonSerialize
L17_17 = L17_17(L14_14)
L15_15(L16_16, L17_17, L17_17(L14_14))
L15_15 = mp
L15_15 = L15_15.CLEAN
return L15_15
