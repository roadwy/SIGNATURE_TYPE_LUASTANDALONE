local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13
L0_0 = mp
L0_0 = L0_0.GetParentProcInfo
L0_0 = L0_0()
L1_1 = MpCommon
L1_1 = L1_1.GetImagePathFromPid
L2_2 = L0_0.ppid
L1_1 = L1_1(L2_2)
L1_1 = L1_1 or ""
L3_3 = L1_1
L2_2 = L1_1.match
L4_4 = "([^\\]+)$"
L2_2 = L2_2(L3_3, L4_4)
L2_2 = L2_2 or ""
L3_3 = {}
L3_3.ParentName = L2_2
L4_4 = mp
L4_4 = L4_4.GetScannedPPID
L4_4 = L4_4()
if not L4_4 then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = mp
L5_5 = L5_5.GetProcessCommandLine
L6_6 = L4_4
L5_5 = L5_5(L6_6)
if not L5_5 then
  L6_6 = mp
  L6_6 = L6_6.CLEAN
  return L6_6
end
L6_6 = add_parents_mp
L6_6 = L6_6()
L3_3.Parents = L6_6
L7_7 = mp
L7_7 = L7_7.hstr_full_log
L7_7 = L7_7()
if L7_7 then
  L8_8 = L7_7[2]
  L8_8 = L8_8.matched
  if not L8_8 then
    L8_8 = L7_7[3]
    L8_8 = L8_8.matched
  elseif L8_8 then
    L8_8 = hasBase64Content
    L9_9 = L5_5
    L8_8 = L8_8(L9_9)
    if not L8_8 then
      L8_8 = mp
      L8_8 = L8_8.CLEAN
      return L8_8
    end
  end
end
L8_8 = Base64Grader
L9_9 = L5_5
L8_8 = L8_8(L9_9)
if not L8_8 then
  L9_9 = mp
  L9_9 = L9_9.CLEAN
  return L9_9
end
L3_3.GradingInfo = L8_8
L9_9 = mp
L9_9 = L9_9.get_mpattribute
L10_10 = "MpCmdLineFoundB64"
L9_9 = L9_9(L10_10)
if L9_9 then
  L3_3.MpCmdLineFoundB64 = true
else
  L3_3.MpCmdLineFoundB64 = false
end
L9_9 = set_research_data
L10_10 = "Evidence"
L11_11 = MpCommon
L11_11 = L11_11.Base64Encode
L12_12 = safeJsonSerialize
L13_13 = L3_3
L13_13 = L12_12(L13_13)
L11_11 = L11_11(L12_12, L13_13, L12_12(L13_13))
L12_12 = false
L9_9(L10_10, L11_11, L12_12)
L9_9 = L8_8.Score
if L9_9 < 10 then
  L9_9 = mp
  L9_9 = L9_9.ReportLowfi
  L10_10 = L1_1
  L11_11 = 3531094077
  L9_9(L10_10, L11_11)
  L9_9 = mp
  L9_9 = L9_9.CLEAN
  return L9_9
else
  L9_9 = L8_8.Score
  if L9_9 > 40 then
    L9_9 = isInstalledApp
    L10_10 = L4_4
    L10_10 = L9_9(L10_10)
    if L10_10 then
      L11_11 = L8_8.TokenizedCmdline
      if L11_11 then
        L11_11 = MpCommon
        L11_11 = L11_11.GetImagePathFromPid
        L12_12 = L4_4
        L11_11 = L11_11(L12_12)
        L13_13 = L11_11
        L12_12 = L11_11.match
        L12_12 = L12_12(L13_13, "([^\\]+)$")
        L12_12 = L12_12 or ""
        L13_13 = {}
        L13_13.ParentName = L10_10
        L13_13.ProcessName = L12_12
        L13_13.Source = "CMD"
        L13_13.SignatureName = "APML_SuspCommand.A"
        L13_13.CommandlineTokens = L8_8.TokenizedCmdline
        L13_13.CommandlineScore = L8_8.Score
        L13_13.TableName = "Appomaly_ChildProcName_CmdLine_Base64"
        MpCommon.BmTriggerSig(L0_0.ppid, "AnomalousChildCommandline", safeJsonSerialize(L13_13))
      end
    end
    if L10_10 then
      L11_11 = "programfiles"
    else
      L11_11 = L11_11 or "generic"
    end
    L12_12 = startTrackingApp
    L13_13 = L0_0.ppid
    L13_13 = L12_12(L13_13, L10_10 or L2_2, L11_11)
    if not L12_12 then
      L13_13.SignatureName = "APML_SuspCommand.A"
      MpCommon.BmTriggerSig(L0_0.ppid, "ProcAttribError", safeJsonSerialize(L13_13))
    elseif next(L13_13) and L13_13.IsNewApp then
      L13_13.SignatureName = "APML_SuspCommand.A"
      L13_13.Score = L8_8.Score
      MpCommon.BmTriggerSig(L0_0.ppid, "SetProcessAttrib", safeJsonSerialize(L13_13))
    end
    IncreaseProcessAnomalyScore(L0_0.ppid, L8_8.Score, "Base64Cmd_child")
  end
end
L9_9 = mp
L9_9 = L9_9.INFECTED
return L9_9
