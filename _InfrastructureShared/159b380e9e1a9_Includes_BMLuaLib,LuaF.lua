local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.utf8p1
  L2_2 = L1_1
  L1_1 = L1_1.match
  L3_3 = "([^\\]+)$"
  L1_1 = L1_1(L2_2, L3_3)
  L0_0 = L1_1
else
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[2]
    L1_1 = L1_1.utf8p1
    L2_2 = L1_1
    L1_1 = L1_1.match
    L3_3 = "([^\\]+)$"
    L1_1 = L1_1(L2_2, L3_3)
    L0_0 = L1_1
  else
    L1_1 = this_sigattrlog
    L1_1 = L1_1[3]
    L1_1 = L1_1.matched
    if L1_1 then
      L1_1 = this_sigattrlog
      L1_1 = L1_1[3]
      L1_1 = L1_1.utf8p1
      L2_2 = L1_1
      L1_1 = L1_1.match
      L3_3 = "([^\\]+)$"
      L1_1 = L1_1(L2_2, L3_3)
      L0_0 = L1_1
    else
      L1_1 = this_sigattrlog
      L1_1 = L1_1[4]
      L1_1 = L1_1.matched
      if L1_1 then
        L1_1 = this_sigattrlog
        L1_1 = L1_1[4]
        L1_1 = L1_1.utf8p1
        L2_2 = L1_1
        L1_1 = L1_1.match
        L3_3 = "([^\\]+)$"
        L1_1 = L1_1(L2_2, L3_3)
        L0_0 = L1_1
      else
        L1_1 = this_sigattrlog
        L1_1 = L1_1[5]
        L1_1 = L1_1.matched
        if L1_1 then
          L1_1 = this_sigattrlog
          L1_1 = L1_1[5]
          L1_1 = L1_1.utf8p1
          L2_2 = L1_1
          L1_1 = L1_1.match
          L3_3 = "([^\\]+)$"
          L1_1 = L1_1(L2_2, L3_3)
          L0_0 = L1_1
        else
          L1_1 = this_sigattrlog
          L1_1 = L1_1[6]
          L1_1 = L1_1.matched
          if L1_1 then
            L1_1 = this_sigattrlog
            L1_1 = L1_1[6]
            L1_1 = L1_1.utf8p2
            L2_2 = L1_1
            L1_1 = L1_1.find
            L3_3 = ".home=.* start"
            L1_1 = L1_1(L2_2, L3_3)
            if L1_1 then
              L1_1 = this_sigattrlog
              L1_1 = L1_1[6]
              L1_1 = L1_1.utf8p1
              L2_2 = L1_1
              L1_1 = L1_1.match
              L3_3 = "([^\\]+)$"
              L1_1 = L1_1(L2_2, L3_3)
              L0_0 = L1_1
            end
          end
        end
      end
    end
  end
end
if not L0_0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
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
L3_3 = "Appomaly_ChildProcName_Server"
L4_4 = MpCommon
L4_4 = L4_4.AnomalyEventLookup
L5_5 = L3_3
L6_6 = "MarkerRecord_"
L7_7 = L0_0
L6_6 = L6_6 .. L7_7
L7_7 = 1
L4_4 = L4_4(L5_5, L6_6, L7_7)
L5_5 = MpCommon
L5_5 = L5_5.GetCurrentTimeT
L5_5 = L5_5()
L6_6 = L5_5
L7_7 = L0_0
L8_8 = "_"
L9_9 = L2_2
L7_7 = L7_7 .. L8_8 .. L9_9
L8_8, L9_9 = nil, nil
L10_10 = {}
L10_10.TrackedProcess = L0_0
L10_10.SigName = "PFAppChildProc.A"
L10_10.AnomalyTableName = "Appomaly_ChildProcName_Server"
L10_10.Key = L7_7
if L4_4 then
  L11_11 = L4_4.Count
  if L11_11 then
    L6_6 = L4_4.Count
    L11_11 = L5_5 - L6_6
    L11_11 = L11_11 / 60
    L12_12 = MpCommon
    L12_12 = L12_12.AnomalyEventLookup
    L13_13 = L3_3
    L14_14 = L7_7
    L15_15 = 1
    L12_12 = L12_12(L13_13, L14_14, L15_15)
    if not L12_12 then
      if L11_11 > 43200 then
        L13_13 = add_parents
        L13_13()
        L10_10.TimeElapsed = L11_11
        L13_13 = bm
        L13_13 = L13_13.get_current_process_startup_info
        L13_13 = L13_13()
        if L13_13 then
          L14_14 = mp
          L14_14 = L14_14.GetProcessCommandLine
          L15_15 = L13_13.ppid
          L14_14 = L14_14(L15_15)
          L15_15 = CommandLineTokenizer
          L15_15 = L15_15(L14_14)
          if next(L15_15) then
            L10_10.CommandlineTokens = L15_15
            L10_10.CommandlineScore = CommandLineGrader(L14_14)
          end
        end
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
        L15_15 = L15_15(L2_2)
        L15_15 = L14_14[L15_15]
        L15_15 = L15_15 or 0
        L10_10.ProcNameWeight = L15_15
        bm.add_related_string("AdditionalInfo", safeJsonSerialize(L10_10), bm.RelatedStringBMReport)
        return mp.INFECTED
      else
        L13_13 = pcall
        L14_14 = MpCommon
        L14_14 = L14_14.AnomalyEventUpdate
        L15_15 = L3_3
        L14_14 = L13_13(L14_14, L15_15, L7_7, 1, 1)
        L9_9 = L14_14
        L8_8 = L13_13
      end
    else
      L13_13 = L12_12.Count
      L14_14 = pcall
      L15_15 = MpCommon
      L15_15 = L15_15.AnomalyEventUpdate
      L15_15 = L14_14(L15_15, L3_3, L7_7, L13_13 + 1, 1)
      L9_9 = L15_15
      L8_8 = L14_14
    end
  end
else
  L6_6 = L5_5
  L11_11 = pcall
  L12_12 = MpCommon
  L12_12 = L12_12.AnomalyEventUpdate
  L13_13 = L3_3
  L14_14 = "MarkerRecord_"
  L15_15 = L0_0
  L14_14 = L14_14 .. L15_15
  L15_15 = L5_5
  L12_12 = L11_11(L12_12, L13_13, L14_14, L15_15, 1)
  L9_9 = L12_12
  L8_8 = L11_11
  if L8_8 then
    L11_11 = bm
    L11_11 = L11_11.trigger_sig
    L12_12 = "AnomalyTableMarker_Rcr"
    L13_13 = safeJsonSerialize
    L14_14 = L10_10
    L15_15 = L13_13(L14_14)
    L11_11(L12_12, L13_13, L14_14, L15_15, L13_13(L14_14))
    L11_11 = pcall
    L12_12 = MpCommon
    L12_12 = L12_12.AnomalyEventUpdate
    L13_13 = L3_3
    L14_14 = L7_7
    L15_15 = 1
    L12_12 = L11_11(L12_12, L13_13, L14_14, L15_15, 1)
    L9_9 = L12_12
    L8_8 = L11_11
  end
end
if not L8_8 then
  L10_10.Error = L9_9
  L11_11 = bm
  L11_11 = L11_11.trigger_sig
  L12_12 = "AnomalyTable_Error"
  L13_13 = safeJsonSerialize
  L14_14 = L10_10
  L15_15 = L13_13(L14_14)
  L11_11(L12_12, L13_13, L14_14, L15_15, L13_13(L14_14))
end
L11_11 = {}
L11_11.ParentName = L0_0
L11_11.ProcessName = L2_2
L11_11.Source = "BM"
L11_11.SignatureName = "Behavior:Win32/PFAppChildProc.A"
L11_11.TableName = "Appomaly_ChildProcName_CmdLine"
L11_11.AttributeName = "PFApp_Parent"
L11_11.AttributeCategory = "PFServers"
L12_12 = bm
L12_12 = L12_12.trigger_sig
L13_13 = "AnomalousChildCommandline"
L14_14 = safeJsonSerialize
L15_15 = L11_11
L15_15 = L14_14(L15_15)
L12_12(L13_13, L14_14, L15_15, L14_14(L15_15))
L12_12 = mp
L12_12 = L12_12.CLEAN
return L12_12
