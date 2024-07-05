local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12
L0_0 = mp
L0_0 = L0_0.GetScannedPPID
L0_0 = L0_0()
if L0_0 == "" or L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = {}
L2_2 = mp
L2_2 = L2_2.GetParentProcInfo
L2_2 = L2_2()
L3_3 = nil
L4_4 = MpCommon
L4_4 = L4_4.GetProcessAttributeValue
L5_5 = L0_0
L6_6 = "inherit:PFApp_Parent"
L4_4 = L4_4(L5_5, L6_6)
if L4_4 then
  L1_1.ProcessAttrib = L4_4
  L5_5 = safeJsonDeserialize
  L6_6 = L4_4
  L5_5 = L5_5(L6_6)
  if L5_5 then
    L1_1.ProcessAttrib = L5_5
    L3_3 = L5_5.AppName
  else
    L7_7 = L4_4
    L6_6 = L4_4.match
    L8_8 = "[^|]+"
    L6_6 = L6_6(L7_7, L8_8)
    L3_3 = L6_6
  end
else
  L5_5 = IsAppomalyTrackedProcess
  L6_6 = L2_2.ppid
  L6_6 = L5_5(L6_6)
  if not L5_5 then
    L7_7 = mp
    L7_7 = L7_7.CLEAN
    return L7_7
  end
  L7_7 = {}
  L1_1.ProcessAttrib = L7_7
  L1_1.ParentName = L6_6
  L3_3 = L6_6
end
L5_5 = add_parents_mp
L5_5 = L5_5()
L1_1.Parents = L5_5
L6_6 = mp
L6_6 = L6_6.GetProcessCommandLine
L7_7 = L0_0
L6_6 = L6_6(L7_7)
if not L6_6 then
  L7_7 = mp
  L7_7 = L7_7.CLEAN
  return L7_7
end
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
    L9_9 = L6_6
    L8_8 = L8_8(L9_9)
    if not L8_8 then
      L8_8 = mp
      L8_8 = L8_8.CLEAN
      return L8_8
    end
  end
end
L8_8 = Base64Grader
L9_9 = L6_6
L8_8 = L8_8(L9_9)
if L8_8 then
  L9_9 = L8_8.Score
elseif L9_9 == 0 then
  L9_9 = mp
  L9_9 = L9_9.CLEAN
  return L9_9
end
L1_1.GradingInfo = L8_8
L9_9 = mp
L9_9 = L9_9.get_mpattribute
L10_10 = "MpCmdLineFoundB64"
L9_9 = L9_9(L10_10)
if L9_9 then
  L1_1.MpCmdLineFoundB64 = true
else
  L1_1.MpCmdLineFoundB64 = false
end
function L9_9(A0_13)
  local L1_14, L2_15, L3_16, L4_17, L5_18, L6_19, L7_20
  L1_14 = {
    L2_15,
    L3_16,
    L4_17,
    L5_18,
    L6_19
  }
  L2_15 = "httpd"
  L6_19 = "java"
  L2_15 = false
  for L6_19, L7_20 in L3_16(L4_17) do
    if string.find(A0_13, L7_20) then
      L2_15 = true
      break
    end
  end
  return L2_15
end
L10_10 = L9_9
L11_11 = L3_3
L10_10 = L10_10(L11_11)
if L10_10 then
  L10_10 = L8_8.Score
  if L10_10 > 30 then
    L1_1.Concrete = true
  end
else
  L1_1.Concrete = false
end
L10_10 = L8_8.Score
if L10_10 > 30 then
  L10_10 = L8_8.TokenizedCmdline
  if L10_10 then
    L10_10 = MpCommon
    L10_10 = L10_10.GetImagePathFromPid
    L11_11 = L0_0
    L10_10 = L10_10(L11_11)
    L12_12 = L10_10
    L11_11 = L10_10.match
    L11_11 = L11_11(L12_12, "([^\\]+)$")
    L11_11 = L11_11 or ""
    L12_12 = {}
    L12_12.ParentName = L3_3
    L12_12.ProcessName = L11_11
    L12_12.Source = "CMD"
    L12_12.SignatureName = "PFApps.C"
    L12_12.CommandlineTokens = L8_8.TokenizedCmdline
    L12_12.CommandlineScore = L8_8.Score
    L12_12.TableName = "Appomaly_ChildProcName_CmdLine_Base64"
    L12_12.AttributeName = "PFApp_Parent"
    L12_12.AttributeCategory = "PFServers"
    MpCommon.BmTriggerSig(L2_2.ppid, "AnomalousChildCommandline", safeJsonSerialize(L12_12))
  end
  L10_10 = mp
  L10_10 = L10_10.GetParentProcInfo
  L10_10 = L10_10()
  L11_11 = startTrackingApp
  L12_12 = L10_10.ppid
  L12_12 = L11_11(L12_12, L3_3, "PFServers", "PFApp_Parent")
  if not L11_11 then
    L12_12.SignatureName = "PFApps.C"
    MpCommon.BmTriggerSig(L10_10.ppid, "ProcAttribError", safeJsonSerialize(L12_12))
  else
    IncreaseProcessAnomalyScore(L10_10.ppid, L8_8.Score, "Base64Cmd_child", "PFApp_Parent")
    if next(L12_12) and L12_12.IsNewApp then
      L12_12.SignatureName = "PFApps.C"
      L12_12.Score = L8_8.Score
      MpCommon.BmTriggerSig(L10_10.ppid, "SetProcessAttrib", safeJsonSerialize(L12_12))
    end
  end
end
L10_10 = set_research_data
L11_11 = "Evidence"
L12_12 = MpCommon
L12_12 = L12_12.Base64Encode
L12_12 = L12_12(safeJsonSerialize(L1_1))
L10_10(L11_11, L12_12, false)
L10_10 = mp
L10_10 = L10_10.INFECTED
return L10_10
