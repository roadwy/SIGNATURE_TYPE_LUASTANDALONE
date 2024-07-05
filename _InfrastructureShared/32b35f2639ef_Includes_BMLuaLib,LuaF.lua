local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19
L3_3 = this_sigattrlog
L3_3 = L3_3[1]
L3_3 = L3_3.matched
if L3_3 then
  L3_3 = this_sigattrlog
  L3_3 = L3_3[1]
  L3_3 = L3_3.utf8p2
  if L3_3 then
    L3_3 = this_sigattrlog
    L3_3 = L3_3[1]
    L0_0 = L3_3.utf8p2
    L3_3 = safeJsonDeserialize
    L4_4 = L0_0
    L3_3 = L3_3(L4_4)
    L0_0 = L3_3
    if not L0_0 then
      L3_3 = mp
      L3_3 = L3_3.CLEAN
      return L3_3
    end
    L1_1 = L0_0.ParentName
    L2_2 = L0_0.ProcessName
  end
end
L3_3 = L0_0.CommandlineTokens
if not L3_3 then
  L4_4 = bm
  L4_4 = L4_4.get_current_process_startup_info
  L4_4 = L4_4()
  if L4_4 then
    L5_5 = mp
    L5_5 = L5_5.GetProcessCommandLine
    L6_6 = L4_4.ppid
    L5_5 = L5_5(L6_6)
    L6_6 = CommandLineTokenizer
    L7_7 = L5_5
    L6_6 = L6_6(L7_7)
    L3_3 = L6_6
    L0_0.CommandlineTokens = L3_3
    L6_6 = next
    L7_7 = L3_3
    L6_6 = L6_6(L7_7)
    if L6_6 then
      L6_6 = #L3_3
      if L6_6 > 1 then
        L6_6 = CommandLineGrader
        L7_7 = L5_5
        L7_7 = L6_6(L7_7)
        L0_0.CommandlineScore = L6_6
        L0_0.CommandlineScoreIndicator = L7_7
      end
    else
      L6_6 = mp
      L6_6 = L6_6.CLEAN
      return L6_6
    end
  end
end
L4_4 = L0_0.TableName
L4_4 = L4_4 or "Appomaly_ChildProcName_CmdLine"
L5_5 = MpCommon
L5_5 = L5_5.AnomalyEventLookup
L6_6 = L4_4
L7_7 = "MarkerRecord_"
L8_8 = L1_1
L7_7 = L7_7 .. L8_8
L8_8 = 1
L5_5 = L5_5(L6_6, L7_7, L8_8)
L6_6 = MpCommon
L6_6 = L6_6.GetCurrentTimeT
L6_6 = L6_6()
L7_7 = L6_6
L8_8 = L1_1
L9_9 = ";"
L10_10 = L2_2
L11_11 = ";"
L12_12 = table
L12_12 = L12_12.concat
L13_13 = L3_3
L14_14 = "|"
L12_12 = L12_12(L13_13, L14_14)
L8_8 = L8_8 .. L9_9 .. L10_10 .. L11_11 .. L12_12
L9_9 = {}
L9_9.CmdLineInfo = L0_0
L9_9.TrackedProcess = L1_1
L9_9.SignatureName = "PFAppCmdline.A"
L9_9.AnomalyTableName = L4_4
L10_10, L11_11 = nil, nil
if L5_5 then
  L12_12 = L5_5.Count
  if L12_12 then
    L7_7 = L5_5.Count
    L12_12 = L6_6 - L7_7
    L12_12 = L12_12 / 60
    L13_13 = MpCommon
    L13_13 = L13_13.AnomalyEventLookup
    L14_14 = L4_4
    L15_15 = L8_8
    L16_16 = 1
    L13_13 = L13_13(L14_14, L15_15, L16_16)
    if not L13_13 then
      if L12_12 > 43200 then
        L14_14 = add_parents
        L14_14()
        L14_14 = {}
        L14_14["cmd.exe"] = 10
        L14_14["powershell.exe"] = 10
        L14_14["reg.exe"] = 5
        L14_14.pwsh = 10
        L14_14["net.exe"] = 5
        L14_14["wmic.exe"] = 5
        L14_14["net1.exe"] = 5
        L14_14["rundll32.exe"] = 5
        L15_15 = string
        L15_15 = L15_15.lower
        L16_16 = L2_2
        L15_15 = L15_15(L16_16)
        L15_15 = L14_14[L15_15]
        L15_15 = L15_15 or 0
        L9_9.ProcNameWeight = L15_15
        L16_16 = bm
        L16_16 = L16_16.add_related_string
        L17_17 = "AdditionalInfo"
        L18_18 = safeJsonSerialize
        L19_19 = L9_9
        L18_18 = L18_18(L19_19)
        L19_19 = bm
        L19_19 = L19_19.RelatedStringBMReport
        L16_16(L17_17, L18_18, L19_19)
        L16_16 = bm
        L16_16 = L16_16.get_current_process_startup_info
        L16_16 = L16_16()
        if L16_16 then
          L17_17 = L0_0.AttributeCategory
          L17_17 = L17_17 or "generic"
          L18_18 = startTrackingApp
          L19_19 = L16_16.ppid
          L19_19 = L18_18(L19_19, L1_1, L17_17, L0_0.AttributeName)
          if not L18_18 then
            MpCommon.BmTriggerSig(L16_16.ppid, "ProcAttribError", safeJsonSerialize(L19_19))
          else
            IncreaseProcessAnomalyScore(L16_16.ppid, 10, L4_4, L0_0.AttributeName)
          end
        end
        L17_17 = mp
        L17_17 = L17_17.INFECTED
        return L17_17
      else
        L14_14 = pcall
        L15_15 = MpCommon
        L15_15 = L15_15.AnomalyEventUpdate
        L16_16 = L4_4
        L17_17 = L8_8
        L18_18 = 1
        L19_19 = 1
        L15_15 = L14_14(L15_15, L16_16, L17_17, L18_18, L19_19)
        L11_11 = L15_15
        L10_10 = L14_14
      end
    else
      L14_14 = L13_13.Count
      L15_15 = pcall
      L16_16 = MpCommon
      L16_16 = L16_16.AnomalyEventUpdate
      L17_17 = L4_4
      L18_18 = L8_8
      L19_19 = L14_14 + 1
      L16_16 = L15_15(L16_16, L17_17, L18_18, L19_19, 1)
      L11_11 = L16_16
      L10_10 = L15_15
    end
  end
else
  L7_7 = L6_6
  L12_12 = pcall
  L13_13 = MpCommon
  L13_13 = L13_13.AnomalyEventUpdate
  L14_14 = L4_4
  L15_15 = "MarkerRecord_"
  L16_16 = L1_1
  L15_15 = L15_15 .. L16_16
  L16_16 = L6_6
  L17_17 = 1
  L13_13 = L12_12(L13_13, L14_14, L15_15, L16_16, L17_17)
  L11_11 = L13_13
  L10_10 = L12_12
  if L10_10 then
    L12_12 = bm
    L12_12 = L12_12.trigger_sig
    L13_13 = "AnomalyTableMarker_Rcr"
    L14_14 = safeJsonSerialize
    L15_15 = L9_9
    L19_19 = L14_14(L15_15)
    L12_12(L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L14_14(L15_15))
    L12_12 = pcall
    L13_13 = MpCommon
    L13_13 = L13_13.AnomalyEventUpdate
    L14_14 = L4_4
    L15_15 = L8_8
    L16_16 = 1
    L17_17 = 1
    L13_13 = L12_12(L13_13, L14_14, L15_15, L16_16, L17_17)
    L11_11 = L13_13
    L10_10 = L12_12
  end
end
if not L10_10 then
  L9_9.Error = L11_11
  L12_12 = bm
  L12_12 = L12_12.trigger_sig
  L13_13 = "AnomalyTable_Error"
  L14_14 = safeJsonSerialize
  L15_15 = L9_9
  L19_19 = L14_14(L15_15)
  L12_12(L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L14_14(L15_15))
end
L12_12 = mp
L12_12 = L12_12.CLEAN
return L12_12
