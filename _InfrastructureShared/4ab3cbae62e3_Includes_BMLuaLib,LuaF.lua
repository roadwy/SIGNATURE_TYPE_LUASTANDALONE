local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16
L0_0 = "ruby.exe"
L1_1 = bm
L1_1 = L1_1.get_imagepath
L1_1 = L1_1()
if not L1_1 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = contains
L3_3 = L1_1
L4_4 = {L5_5, L6_6}
L5_5 = "conhost.exe"
L6_6 = "WerFault.exe"
L2_2 = L2_2(L3_3, L4_4)
if L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L3_3 = L1_1
L2_2 = L1_1.match
L4_4 = "([^\\]+)$"
L2_2 = L2_2(L3_3, L4_4)
if not L2_2 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = bm
L3_3 = L3_3.get_current_process_startup_info
L3_3 = L3_3()
L4_4, L5_5 = nil, nil
L6_6 = {}
L6_6.TrackedProcess = L0_0
L6_6.SigName = "Behavior:Win32/PFAppChildProc.C"
if L3_3 then
  L7_7 = L3_3.integrity_level
  L8_8 = MpCommon
  L8_8 = L8_8.SECURITY_MANDATORY_MEDIUM_RID
  if L7_7 > L8_8 then
    L7_7 = "Appomaly_ChildProcPriv"
    L8_8 = MpCommon
    L8_8 = L8_8.AnomalyEventLookup
    L9_9 = L7_7
    L10_10 = "MarkerRecord_"
    L11_11 = L0_0
    L10_10 = L10_10 .. L11_11
    L11_11 = 1
    L8_8 = L8_8(L9_9, L10_10, L11_11)
    L9_9 = MpCommon
    L9_9 = L9_9.GetCurrentTimeT
    L9_9 = L9_9()
    L10_10 = L9_9
    L11_11 = L0_0
    L12_12 = "_"
    L13_13 = L2_2
    L14_14 = "_"
    L15_15 = L3_3.integrity_level
    L11_11 = L11_11 .. L12_12 .. L13_13 .. L14_14 .. L15_15
    L6_6.AnomalyTableName = "Appomaly_ChildProcPriv"
    L6_6.Key = L11_11
    if L8_8 then
      L12_12 = L8_8.Count
      if L12_12 then
        L10_10 = L8_8.Count
        L12_12 = L9_9 - L10_10
        L12_12 = L12_12 / 60
        L13_13 = MpCommon
        L13_13 = L13_13.AnomalyEventLookup
        L14_14 = L7_7
        L15_15 = L11_11
        L16_16 = 1
        L13_13 = L13_13(L14_14, L15_15, L16_16)
        if not L13_13 then
          if L12_12 > 28800 then
            L6_6.TimeElapsed = L12_12
            L14_14 = bm
            L14_14 = L14_14.trigger_sig
            L15_15 = "AnomalousChildPriv"
            L16_16 = safeJsonSerialize
            L16_16 = L16_16(L6_6)
            L14_14(L15_15, L16_16, L16_16(L6_6))
          else
            L14_14 = pcall
            L15_15 = MpCommon
            L15_15 = L15_15.AnomalyEventUpdate
            L16_16 = L7_7
            L15_15 = L14_14(L15_15, L16_16, L11_11, 1, 1)
            L5_5 = L15_15
            L4_4 = L14_14
          end
        else
          L14_14 = L13_13.Count
          L15_15 = pcall
          L16_16 = MpCommon
          L16_16 = L16_16.AnomalyEventUpdate
          L16_16 = L15_15(L16_16, L7_7, L11_11, L14_14 + 1, 1)
          L5_5 = L16_16
          L4_4 = L15_15
        end
      end
    else
      L10_10 = L9_9
      L12_12 = pcall
      L13_13 = MpCommon
      L13_13 = L13_13.AnomalyEventUpdate
      L14_14 = L7_7
      L15_15 = "MarkerRecord_"
      L16_16 = L0_0
      L15_15 = L15_15 .. L16_16
      L16_16 = L9_9
      L13_13 = L12_12(L13_13, L14_14, L15_15, L16_16, 1)
      L5_5 = L13_13
      L4_4 = L12_12
      if L4_4 then
        L12_12 = bm
        L12_12 = L12_12.trigger_sig
        L13_13 = "AnomalyTableMarker_Rcr"
        L14_14 = safeJsonSerialize
        L15_15 = L6_6
        L16_16 = L14_14(L15_15)
        L12_12(L13_13, L14_14, L15_15, L16_16, L14_14(L15_15))
        L12_12 = pcall
        L13_13 = MpCommon
        L13_13 = L13_13.AnomalyEventUpdate
        L14_14 = L7_7
        L15_15 = L11_11
        L16_16 = 1
        L13_13 = L12_12(L13_13, L14_14, L15_15, L16_16, 1)
        L5_5 = L13_13
        L4_4 = L12_12
      end
    end
    if not L4_4 then
      L6_6.Error = L5_5
      L12_12 = bm
      L12_12 = L12_12.trigger_sig
      L13_13 = "AnomalyTable_Error"
      L14_14 = safeJsonSerialize
      L15_15 = L6_6
      L16_16 = L14_14(L15_15)
      L12_12(L13_13, L14_14, L15_15, L16_16, L14_14(L15_15))
    end
  end
end
L7_7 = "Appomaly_ChildProcName"
L8_8 = MpCommon
L8_8 = L8_8.AnomalyEventLookup
L9_9 = L7_7
L10_10 = "MarkerRecord_"
L11_11 = L0_0
L10_10 = L10_10 .. L11_11
L11_11 = 1
L8_8 = L8_8(L9_9, L10_10, L11_11)
L9_9 = 0
L10_10 = MpCommon
L10_10 = L10_10.GetCurrentTimeT
L10_10 = L10_10()
L11_11 = L0_0
L12_12 = "_"
L13_13 = L2_2
L11_11 = L11_11 .. L12_12 .. L13_13
L6_6.AnomalyTableName = "Appomaly_ChildProcName"
L6_6.Key = L11_11
if L8_8 then
  L12_12 = L8_8.Count
  if L12_12 then
    L9_9 = L8_8.Count
    L12_12 = L10_10 - L9_9
    L12_12 = L12_12 / 60
    L13_13 = MpCommon
    L13_13 = L13_13.AnomalyEventLookup
    L14_14 = L7_7
    L15_15 = L11_11
    L16_16 = 1
    L13_13 = L13_13(L14_14, L15_15, L16_16)
    if not L13_13 then
      if L12_12 > 28800 then
        L6_6.TimeElapsed = L12_12
        L14_14 = add_parents
        L14_14()
        L14_14 = bm
        L14_14 = L14_14.get_current_process_startup_info
        L14_14 = L14_14()
        if L14_14 then
          L15_15 = mp
          L15_15 = L15_15.GetProcessCommandLine
          L16_16 = L14_14.ppid
          L15_15 = L15_15(L16_16)
          L16_16 = CommandLineTokenizer
          L16_16 = L16_16(L15_15)
          if next(L16_16) then
            L6_6.CommandlineTokens = L16_16
            L6_6.CommandlineScore = CommandLineGrader(L15_15)
          end
        end
        L15_15 = {}
        L15_15["cmd.exe"] = 10
        L15_15["powershell.exe"] = 10
        L15_15["reg.exe"] = 5
        L15_15.pwsh = 10
        L15_15["net.exe"] = 5
        L15_15["wmic.exe"] = 5
        L15_15["net1.exe"] = 5
        L15_15["rundll32.exe"] = 5
        L16_16 = string
        L16_16 = L16_16.lower
        L16_16 = L16_16(L2_2)
        L16_16 = L15_15[L16_16]
        L16_16 = L16_16 or 0
        L6_6.ProcNameWeight = L16_16
        bm.add_related_string("AdditionalInfo", safeJsonSerialize(L6_6), bm.RelatedStringBMReport)
        return mp.INFECTED
      else
        L14_14 = pcall
        L15_15 = MpCommon
        L15_15 = L15_15.AnomalyEventUpdate
        L16_16 = L7_7
        L15_15 = L14_14(L15_15, L16_16, L11_11, 1, 1)
        L5_5 = L15_15
        L4_4 = L14_14
      end
    else
      L14_14 = L13_13.Count
      L15_15 = pcall
      L16_16 = MpCommon
      L16_16 = L16_16.AnomalyEventUpdate
      L16_16 = L15_15(L16_16, L7_7, L11_11, L14_14 + 1, 1)
      L5_5 = L16_16
      L4_4 = L15_15
    end
  end
else
  L9_9 = L10_10
  L12_12 = pcall
  L13_13 = MpCommon
  L13_13 = L13_13.AnomalyEventUpdate
  L14_14 = L7_7
  L15_15 = "MarkerRecord_"
  L16_16 = L0_0
  L15_15 = L15_15 .. L16_16
  L16_16 = L10_10
  L13_13 = L12_12(L13_13, L14_14, L15_15, L16_16, 1)
  L5_5 = L13_13
  L4_4 = L12_12
  if L4_4 then
    L12_12 = bm
    L12_12 = L12_12.trigger_sig
    L13_13 = "AnomalyTableMarker_Rcr"
    L14_14 = safeJsonSerialize
    L15_15 = L6_6
    L16_16 = L14_14(L15_15)
    L12_12(L13_13, L14_14, L15_15, L16_16, L14_14(L15_15))
    L12_12 = pcall
    L13_13 = MpCommon
    L13_13 = L13_13.AnomalyEventUpdate
    L14_14 = L7_7
    L15_15 = L11_11
    L16_16 = 1
    L13_13 = L12_12(L13_13, L14_14, L15_15, L16_16, 1)
    L5_5 = L13_13
    L4_4 = L12_12
  end
end
if not L4_4 then
  L6_6.Error = L5_5
  L12_12 = bm
  L12_12 = L12_12.trigger_sig
  L13_13 = "AnomalyTable_Error"
  L14_14 = safeJsonSerialize
  L15_15 = L6_6
  L16_16 = L14_14(L15_15)
  L12_12(L13_13, L14_14, L15_15, L16_16, L14_14(L15_15))
end
L12_12 = {}
L12_12.ParentName = L0_0
L12_12.ProcessName = L2_2
L12_12.Source = "BM"
L12_12.SignatureName = "Behavior:Win32/PFAppChildProc.C"
L12_12.TableName = "Appomaly_ChildProcName_CmdLine"
L12_12.AttributeName = "PFApp_Parent"
L12_12.AttributeCategory = "PFServers"
L13_13 = bm
L13_13 = L13_13.trigger_sig
L14_14 = "AnomalousChildCommandline"
L15_15 = safeJsonSerialize
L16_16 = L12_12
L16_16 = L15_15(L16_16)
L13_13(L14_14, L15_15, L16_16, L15_15(L16_16))
L13_13 = mp
L13_13 = L13_13.CLEAN
return L13_13
