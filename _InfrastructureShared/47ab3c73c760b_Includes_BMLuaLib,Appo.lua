local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L0_0 = false
L1_1 = nil
L2_2 = this_sigattrlog
L2_2 = L2_2[5]
L2_2 = L2_2.matched
if L2_2 then
  L1_1 = "httpd.exe"
else
  L2_2 = this_sigattrlog
  L2_2 = L2_2[6]
  L2_2 = L2_2.matched
  if L2_2 then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[6]
    L2_2 = L2_2.utf8p1
    L3_3 = L2_2
    L2_2 = L2_2.match
    L4_4 = "([^\\]+)$"
    L2_2 = L2_2(L3_3, L4_4)
    L1_1 = L2_2
  else
    L2_2 = this_sigattrlog
    L2_2 = L2_2[7]
    L2_2 = L2_2.matched
    if L2_2 then
      L1_1 = "nginx.exe"
    else
      L2_2 = this_sigattrlog
      L2_2 = L2_2[8]
      L2_2 = L2_2.matched
      if L2_2 then
        L1_1 = "w3wp.exe"
      else
        L2_2 = this_sigattrlog
        L2_2 = L2_2[9]
        L2_2 = L2_2.matched
        if L2_2 then
          L1_1 = "sqlservr.exe"
        else
          L2_2 = this_sigattrlog
          L2_2 = L2_2[10]
          L2_2 = L2_2.matched
          if L2_2 then
            L2_2 = this_sigattrlog
            L2_2 = L2_2[10]
            L2_2 = L2_2.utf8p1
            L3_3 = L2_2
            L2_2 = L2_2.match
            L4_4 = "([^\\]+)$"
            L2_2 = L2_2(L3_3, L4_4)
            L1_1 = L2_2
          end
        end
      end
    end
  end
end
if not L1_1 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = bm
L2_2 = L2_2.get_current_process_startup_info
L2_2 = L2_2()
if L2_2 then
  L3_3 = L2_2.ppid
  if L3_3 then
    L3_3 = MpCommon
    L3_3 = L3_3.GetProcessAttributeValue
    L4_4 = L2_2.ppid
    L3_3 = L3_3(L4_4, L5_5)
    if not L3_3 then
      L3_3 = MpCommon
      L3_3 = L3_3.GetProcessAttributeValue
      L4_4 = L2_2.ppid
      L3_3 = L3_3(L4_4, L5_5)
    end
    if L3_3 then
      L4_4 = bm
      L4_4 = L4_4.add_related_string
      L4_4(L5_5, L6_6, L7_7)
    end
  end
end
L3_3 = nil
L4_4 = this_sigattrlog
L4_4 = L4_4[11]
L4_4 = L4_4.matched
if L4_4 then
  L4_4 = this_sigattrlog
  L4_4 = L4_4[11]
  L3_3 = L4_4.utf8p1
  L4_4 = {
    L5_5,
    L6_6,
    L7_7,
    L8_8,
    L9_9,
    "Behavior:Win32/MpTamperRTP.D",
    "Behavior:Win32/MpTamperSrv.A",
    "Behavior:Win32/MpTamperPShell.A",
    "Behavior:Win32/MpTamperGpDisableAVFriendly.A"
  }
  L8_8 = "Behavior:Win32/MpTamperGpDisableAV.A"
  L9_9 = "Behavior:Win32/MpTamperSrvDisableAV.B"
  for L8_8, L9_9 in L5_5(L6_6) do
    if string.find(L3_3, L9_9) then
      L0_0 = true
      break
    end
  end
else
  L4_4 = this_sigattrlog
  L4_4 = L4_4[12]
  L4_4 = L4_4.matched
  if L4_4 then
    L4_4 = this_sigattrlog
    L4_4 = L4_4[12]
    L3_3 = L4_4.utf8p2
    L0_0 = true
  else
    L4_4 = this_sigattrlog
    L4_4 = L4_4[13]
    L4_4 = L4_4.matched
    if L4_4 then
      L4_4 = this_sigattrlog
      L4_4 = L4_4[13]
      L3_3 = L4_4.utf8p2
      L4_4 = {
        L5_5,
        L6_6,
        L7_7,
        L8_8,
        L9_9,
        "Trojan:Win32/MpTamperSrvDisableAV.L",
        "Trojan:Win32/MpTamperDisableFeatureWd.A",
        "Trojan:Win32/MpTamperDisableFeatureWd.B",
        "Trojan:Win32/MPTamperAdRun.B",
        "Trojan:Win32/MpTamperRegDisableAV.SA",
        "Trojan:Win32/MPTamperSuspExlc.C"
      }
      L8_8 = "Trojan:Win32/MpTamperSrvDisableAV.J"
      L9_9 = "Trojan:Win32/MpTamperSrvDisableAV.K"
      for L8_8, L9_9 in L5_5(L6_6) do
        if string.find(L3_3, L9_9) then
          L0_0 = true
          break
        end
      end
    else
      L4_4 = this_sigattrlog
      L4_4 = L4_4[14]
      L4_4 = L4_4.matched
      if L4_4 then
        L4_4 = this_sigattrlog
        L4_4 = L4_4[14]
        L3_3 = L4_4.utf8p2
        L0_0 = true
      else
        L4_4 = this_sigattrlog
        L4_4 = L4_4[15]
        L4_4 = L4_4.matched
        if L4_4 then
          L4_4 = this_sigattrlog
          L4_4 = L4_4[15]
          L3_3 = L4_4.utf8p1
          L4_4 = MpCommon
          L4_4 = L4_4.StringRegExpSearch
          L4_4 = L4_4(L5_5, L6_6)
          if L4_4 then
            L0_0 = true
          end
          L4_4 = this_sigattrlog
          L4_4 = L4_4[15]
          L4_4 = L4_4.utf8p2
          if L4_4 == "INFECTED" then
            L4_4 = bm
            L4_4 = L4_4.add_related_string
            L8_8 = "INFECTED"
            L4_4(L5_5, L6_6, L7_7)
          else
            L4_4 = this_sigattrlog
            L4_4 = L4_4[15]
            L4_4 = L4_4.utf8p2
            if L4_4 == "LOFI" then
              L4_4 = bm
              L4_4 = L4_4.add_related_string
              L8_8 = "LOFI"
              L4_4(L5_5, L6_6, L7_7)
            end
          end
        else
          L4_4 = this_sigattrlog
          L4_4 = L4_4[16]
          L4_4 = L4_4.matched
          if L4_4 then
            L4_4 = this_sigattrlog
            L4_4 = L4_4[16]
            L3_3 = L4_4.utf8p1
            L0_0 = true
          else
            L4_4 = this_sigattrlog
            L4_4 = L4_4[17]
            L4_4 = L4_4.matched
            if L4_4 then
              L4_4 = this_sigattrlog
              L4_4 = L4_4[17]
              L3_3 = L4_4.utf8p1
              L0_0 = true
            else
              L4_4 = this_sigattrlog
              L4_4 = L4_4[18]
              L4_4 = L4_4.matched
              if L4_4 then
                L4_4 = this_sigattrlog
                L4_4 = L4_4[18]
                L3_3 = L4_4.utf8p1
                L0_0 = true
              end
            end
          end
        end
      end
    end
  end
end
if not L3_3 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
function L4_4(A0_10, A1_11)
  local L2_12, L3_13, L4_14, L5_15, L6_16, L7_17, L8_18
  L2_12 = {
    L3_13,
    L4_14,
    L5_15,
    L6_16
  }
  L3_13 = "httpd"
  L3_13 = false
  for L7_17, L8_18 in L4_14(L5_15) do
    if string.find(A1_11, L8_18) then
      L3_13 = true
      break
    end
  end
  if not L3_13 then
    return L4_14
  end
  L7_17 = "tomcat"
  L8_18 = "nginx.exe"
  L7_17 = L4_14
  if L5_15 then
    return L5_15
  end
  return L5_15
end
if L0_0 then
else
end
L8_8 = L1_1
if L7_7 then
  L8_8 = startTrackingApp
  L9_9 = L7_7
  L9_9 = L8_8(L9_9, L1_1, L6_6, "PFApp_Parent")
  if not L8_8 then
    L9_9.SignatureName = "PFATamper.A"
    L9_9.ProcessName = L1_1
    MpCommon.BmTriggerSig(L7_7, "ProcAttribError", safeJsonSerialize(L9_9))
  else
    IncreaseProcessAnomalyScore(L7_7, L5_5, "Tampering", "PFApp_Parent")
    if next(L9_9) and L9_9.IsNewApp then
      L9_9.SignatureName = "PFATamper.A"
      L9_9.ProcessName = L1_1
      L9_9.Score = L5_5
      MpCommon.BmTriggerSig(L7_7, "SetProcessAttrib", safeJsonSerialize(L9_9))
    end
  end
end
L8_8 = bm
L8_8 = L8_8.get_imagepath
L8_8 = L8_8()
L9_9 = L8_8
L8_8 = L8_8.match
L8_8 = L8_8(L9_9, "([^\\]+)$")
if L0_0 then
  L9_9 = L4_4
  L9_9 = L9_9(L8_8, string.lower(L1_1))
  if L9_9 then
    L9_9 = bm
    L9_9 = L9_9.add_related_string
    L9_9("serverName", L1_1, bm.RelatedStringBMReport)
    L9_9 = bm
    L9_9 = L9_9.add_related_string
    L9_9("tamperingAlert", L3_3, bm.RelatedStringBMReport)
    L9_9 = bm
    L9_9 = L9_9.get_current_process_startup_info
    L9_9 = L9_9()
    if L9_9 then
      bm.add_related_string("appName", getWebApplicationType(L9_9.ppid), bm.RelatedStringBMReport)
    end
    reportSessionInformationInclusive()
    add_parents()
    reportRelevantUntrustedEntities(0)
    return mp.INFECTED
  end
elseif L0_0 then
  L9_9 = bm
  L9_9 = L9_9.trigger_sig
  L9_9("PFATamper.C", L1_1 .. "|" .. L3_3)
else
  L9_9 = bm
  L9_9 = L9_9.trigger_sig
  L9_9("PFATamper.B", L1_1 .. "|" .. L3_3)
end
L9_9 = mp
L9_9 = L9_9.CLEAN
return L9_9
