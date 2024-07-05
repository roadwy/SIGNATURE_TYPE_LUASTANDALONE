local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18
L0_0 = mp
L0_0 = L0_0.GetScannedPPID
L0_0 = L0_0()
if L0_0 == "" or L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = {}
L2_2 = MpCommon
L2_2 = L2_2.GetProcessAttributeValue
L3_3 = L0_0
L4_4 = "inherit:PFApp_Parent"
L2_2 = L2_2(L3_3, L4_4)
if not L2_2 then
  L2_2 = MpCommon
  L2_2 = L2_2.GetProcessAttributeValue
  L3_3 = L0_0
  L4_4 = "inherit:PFAppTracked"
  L2_2 = L2_2(L3_3, L4_4)
end
if L2_2 then
  L1_1.ProcessAttrib = L2_2
end
L3_3 = mp
L3_3 = L3_3.hstr_full_log
L3_3 = L3_3()
L4_4 = mp
L4_4 = L4_4.GetProcessCommandLine
L5_5 = L0_0
L4_4 = L4_4(L5_5)
if L3_3 then
  L5_5 = L3_3[1]
  L5_5 = L5_5.matched
  if not L5_5 then
    L5_5 = L3_3[2]
    L5_5 = L5_5.matched
  elseif L5_5 then
    L5_5 = CommandLineGrader
    L6_6 = L4_4
    L6_6 = L5_5(L6_6)
    if L5_5 == 0 then
      L7_7 = mp
      L7_7 = L7_7.CLEAN
      return L7_7
    end
    L1_1.Evidence = L6_6
    L1_1.Score = L5_5
    L7_7 = add_parents_mp
    L7_7 = L7_7()
    L1_1.Parents = L7_7
    if L5_5 >= 20 then
      L7_7 = mp
      L7_7 = L7_7.GetParentProcInfo
      L7_7 = L7_7()
      L8_8 = MpCommon
      L8_8 = L8_8.GetImagePathFromPid
      L9_9 = L7_7.ppid
      L8_8 = L8_8(L9_9)
      L8_8 = L8_8 or ""
      L10_10 = L8_8
      L9_9 = L8_8.match
      L11_11 = "([^\\]+)$"
      L9_9 = L9_9(L10_10, L11_11)
      L9_9 = L9_9 or ""
      L10_10 = MpCommon
      L10_10 = L10_10.GetImagePathFromPid
      L11_11 = L0_0
      L10_10 = L10_10(L11_11)
      L12_12 = L10_10
      L11_11 = L10_10.match
      L13_13 = "([^\\]+)$"
      L11_11 = L11_11(L12_12, L13_13)
      L11_11 = L11_11 or ""
      L12_12 = CommandLineTokenizer
      L13_13 = L4_4
      L12_12 = L12_12(L13_13)
      L13_13 = isInstalledApp
      L14_14 = L0_0
      L14_14 = L13_13(L14_14)
      if L12_12 and L14_14 then
        L1_1.TokenizedCmdline = L12_12
        L15_15 = {}
        L15_15.ParentName = L14_14
        L15_15.ProcessName = L11_11
        L15_15.Source = "CMD"
        L15_15.SignatureName = "PFApps.A"
        L16_16 = L1_1.TokenizedCmdline
        L15_15.CommandlineTokens = L16_16
        L16_16 = L1_1.Score
        L15_15.CommandlineScore = L16_16
        L15_15.TableName = "Appomaly_ChildProcName_CmdLine"
        L16_16 = MpCommon
        L16_16 = L16_16.BmTriggerSig
        L17_17 = L7_7.ppid
        L18_18 = "AnomalousChildCommandline"
        L16_16(L17_17, L18_18, safeJsonSerialize(L15_15))
        if L14_14 then
          L16_16 = "programfiles"
        else
          L16_16 = L16_16 or "generic"
        end
        L17_17 = startTrackingApp
        L18_18 = L7_7.ppid
        L18_18 = L17_17(L18_18, L14_14 or L9_9, L16_16)
        if not L17_17 then
          L18_18.SignatureName = "PFApps.A"
          MpCommon.BmTriggerSig(L7_7.ppid, "ProcAttribError", safeJsonSerialize(L18_18))
        else
          IncreaseProcessAnomalyScore(L7_7.ppid, L5_5, "SuspDownload")
          if next(L18_18) and L18_18.IsNewApp then
            L18_18.SignatureName = "PFApps.A"
            L18_18.Score = L5_5
            MpCommon.BmTriggerSig(L7_7.ppid, "SetProcessAttrib", safeJsonSerialize(L18_18))
          end
        end
      end
    end
    L7_7 = L6_6.Url
    L8_8 = L7_7
    L7_7 = L7_7.match
    L9_9 = "^%a+://([^:/]+)"
    L7_7 = L7_7(L8_8, L9_9)
    L8_8 = 604800
    L9_9 = MpCommon
    L9_9 = L9_9.AtomicCounterValue
    L10_10 = L7_7
    L9_9 = L9_9(L10_10)
    if not L9_9 then
      L10_10 = MpCommon
      L10_10 = L10_10.AtomicCounterSet
      L11_11 = L7_7
      L12_12 = 1
      L13_13 = L8_8
      L10_10(L11_11, L12_12, L13_13)
      L10_10 = set_research_data
      L11_11 = "Evidence"
      L12_12 = MpCommon
      L12_12 = L12_12.Base64Encode
      L13_13 = safeJsonSerialize
      L14_14 = L1_1
      L18_18 = L13_13(L14_14)
      L12_12 = L12_12(L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L13_13(L14_14))
      L13_13 = false
      L10_10(L11_11, L12_12, L13_13)
      L10_10 = mp
      L10_10 = L10_10.INFECTED
      return L10_10
    else
      L10_10 = MpCommon
      L10_10 = L10_10.AtomicCounterAdd
      L11_11 = L7_7
      L12_12 = 1
      L10_10(L11_11, L12_12)
    end
  end
end
L5_5 = mp
L5_5 = L5_5.CLEAN
return L5_5
