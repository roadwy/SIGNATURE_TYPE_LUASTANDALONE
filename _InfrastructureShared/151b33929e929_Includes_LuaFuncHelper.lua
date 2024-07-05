local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16
L0_0 = bm
L0_0 = L0_0.get_imagepath
L0_0 = L0_0()
L1_1 = L0_0
L0_0 = L0_0.lower
L0_0 = L0_0(L1_1)
if not L0_0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
function L1_1(A0_17)
  local L1_18, L2_19, L3_20
  L1_18 = "(tomcat|nginx|httpd|w3wp|sqlservr|oracle|msmdsrv|msdtssrvr|mysql)"
  L2_19 = string
  L2_19 = L2_19.lower
  L3_20 = A0_17
  L2_19 = L2_19(L3_20)
  L3_20 = L2_19
  L2_19 = L2_19.match
  L2_19 = L2_19(L3_20, "([^\\]+)$")
  L3_20 = false
  L3_20, _ = MpCommon.StringRegExpSearch(L1_18, L2_19)
  if L3_20 then
    return L2_19
  else
    return nil
  end
end
L2_2 = L1_1
L3_3 = L0_0
L2_2 = L2_2(L3_3)
if not L2_2 then
  L3_3 = bm
  L3_3 = L3_3.get_process_relationships
  L4_4 = L3_3()
  for L8_8, L9_9 in L5_5(L6_6) do
    L0_0 = L9_9.image_path
    if L0_0 then
      L10_10 = L1_1
      L11_11 = L0_0
      L10_10 = L10_10(L11_11)
      L2_2 = L10_10
      if L2_2 then
        L10_10 = bm
        L10_10 = L10_10.add_related_string
        L11_11 = "ServerPath_GParent"
        L12_12 = L0_0
        L13_13 = bm
        L13_13 = L13_13.RelatedStringBMReport
        L10_10(L11_11, L12_12, L13_13)
        break
      end
    end
  end
else
  L3_3 = bm
  L3_3 = L3_3.add_related_string
  L4_4 = "ServerPath_Parent"
  L3_3(L4_4, L5_5, L6_6)
end
if not L2_2 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3, L4_4 = nil, nil
for L9_9 = L6_6.SIGATTR_LOG_SZ, 1, -1 do
  L10_10 = sigattr_tail
  L10_10 = L10_10[L9_9]
  L11_11 = L10_10.matched
  if L11_11 then
    L11_11 = L10_10.attribute
    if L11_11 == 16384 then
      L11_11 = L10_10.utf8p1
      if L11_11 then
        L11_11 = string
        L11_11 = L11_11.lower
        L12_12 = L10_10.utf8p1
        L11_11 = L11_11(L12_12)
        L12_12 = L11_11
        L11_11 = L11_11.match
        L13_13 = "([^\\]+)$"
        L11_11 = L11_11(L12_12, L13_13)
        L12_12 = MpCommon
        L12_12 = L12_12.StringRegExpSearch
        L13_13 = L5_5
        L14_14 = L11_11
        L13_13 = L12_12(L13_13, L14_14)
        if L12_12 then
          L3_3 = L11_11
          L4_4 = L10_10.utf8p1
          L14_14 = bm
          L14_14 = L14_14.add_related_file
          L15_15 = L10_10.utf8p1
          L14_14(L15_15)
          break
        end
      end
    end
  end
end
if not L3_3 then
  return L6_6
end
L9_9 = "0"
if L7_7 > 20 then
  L9_9 = 1
  L10_10 = 20
  L9_9 = #L6_6
end
L9_9 = "(.*\\)"
L9_9 = MpCommon
L9_9 = L9_9.AnomalyEventLookup
L10_10 = L8_8
L11_11 = "MarkerRecord_table_creationtime"
L12_12 = 1
L9_9 = L9_9(L10_10, L11_11, L12_12)
L10_10 = 0
L11_11 = MpCommon
L11_11 = L11_11.GetCurrentTimeT
L11_11 = L11_11()
L12_12 = L11_11
if L9_9 then
  L13_13 = L9_9.Count
  if L13_13 then
    L12_12 = L9_9.Count
  end
  L10_10 = L9_9.LastSeen
else
  L12_12 = L11_11
  L13_13 = MpCommon
  L13_13 = L13_13.AnomalyEventUpdate
  L14_14 = L8_8
  L15_15 = "MarkerRecord_table_creationtime"
  L16_16 = L11_11
  L13_13(L14_14, L15_15, L16_16, 1)
end
L13_13 = L11_11 - L12_12
L13_13 = L13_13 / 60
L14_14 = L2_2
L15_15 = "_"
L16_16 = L7_7
L14_14 = L14_14 .. L15_15 .. L16_16 .. L6_6
L15_15 = MpCommon
L15_15 = L15_15.AnomalyEventLookup
L16_16 = L8_8
L15_15 = L15_15(L16_16, L14_14, 1)
if not L15_15 then
  if L13_13 > 43200 then
    L16_16 = {}
    L16_16.ShellCodeName = L3_3
    L16_16.ShellCodePath = L7_7
    L16_16.ShellCodeName_Normalzied = L6_6
    L16_16.WebSrv = L2_2
    L16_16.TableLastSeen = L10_10
    L16_16.TableUnbiasedTime = L13_13
    L16_16.isTest = false
    bm.add_related_string("AnomalyData", safeJsonSerialize(L16_16), bm.RelatedStringBMReport)
    reportSessionInformation()
    add_parents()
    if bm.get_current_process_startup_info() then
      IncreaseProcessAnomalyScore(bm.get_current_process_startup_info().ppid, 5, "AnomalousFileNameDrop", "PFApp_Parent")
    end
    return mp.INFECTED
  else
    L16_16 = MpCommon
    L16_16 = L16_16.AnomalyEventUpdate
    L16_16(L8_8, L14_14, 1, 1)
  end
else
  L16_16 = L15_15.Count
  L16_16 = L16_16 + 1
  MpCommon.AnomalyEventUpdate(L8_8, L14_14, L16_16, 1)
end
L16_16 = mp
L16_16 = L16_16.CLEAN
return L16_16
