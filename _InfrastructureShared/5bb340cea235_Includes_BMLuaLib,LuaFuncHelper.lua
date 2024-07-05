local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.utf8p2
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.timestamp
L2_2 = {}
L3_3 = {}
L4_4 = {}
L5_5 = 0
L6_6 = {}
L6_6[""] = true
L6_6["afnv7trk42wcarrewqyhxvzhv40znpgt.lambda-url.us-east-1.on.aws"] = true
L6_6["clients.config.office.net"] = true
L6_6["copilot.microsoft.com"] = true
L6_6["d1lrg2q2l2g9t3.cloudfront.net"] = true
L6_6["detectportal.firefox.com"] = true
L6_6["direct.smartedgehealth.com"] = true
L6_6["edge.microsoft.com"] = true
L6_6["facebook.com"] = true
L6_6["fonts.googleapis.com"] = true
L6_6["graph.microsoft.com"] = true
L6_6["iecvlist.microsoft.com"] = true
L6_6["login.microsoftonline.com"] = true
L6_6["mobile.events.data.microsoft.com"] = true
L6_6["msedge.b.tlu.dl.delivery.mp.microsoft.com"] = true
L6_6["otelrules.azureedge.net"] = true
L6_6["outlook.cloud.microsoft"] = true
L6_6["portal.sisbr.coop.br"] = true
L6_6["presence.teams.microsoft.com"] = true
L6_6["proxy.smartedgehealth.com"] = true
L6_6["ringcentral.com"] = true
L6_6["s3.amazonaws.com"] = true
L6_6["safebrowsing.googleapis.com"] = true
L6_6["skydrive.wns.windows.com"] = true
L6_6["smartscreen.microsoft.com"] = true
L6_6["storage.live.com"] = true
L6_6["teams.cloud.microsoft"] = true
L6_6["teams.microsoft.com"] = true
L6_6["webexcontent.com"] = true
L6_6["winatp-gw-neu.microsoft.com"] = true
L6_6["ws-broker-service.us-west-2.amazonaws.com"] = true
L6_6["www.google.com"] = true
L6_6["www.microsoft.com"] = true
L6_6["x1.c.lencr.org"] = true
L7_7 = "%.(amazontrust%.com|bgsecure%.net|bing%.com|bitglass%.com|blob%.core%.windows%.net|dev%.belfry%.msgamestudios%.com|digicert%.com|dnofd%.com|events%.data%.microsoft%.com|gastecnologia%.com%.br|google%-analytics%.com|itau%.com%.br|linkedin%.com|mcafee%.com|microsoft365%.com|msftconnecttest%.com|msn%.com|mwginternal%.com|ocsp%.sectigo%.com|office%.com|office%.net|office365%.com|officeapps%.live%.com|okta%.com|outlook%.com|pwcinternal%.com|ringcentral%.com|services%.mozilla%.com|sharepoint%.com|smartscreen%.microsoft%.com|telemetry%.mozilla%.org|usertrust%.com|wbx2%.com|webex%.com|xboxlive%.com|xx%.fbcdn%.net)$"
if L8_8 == 0 then
  return L8_8
end
for L11_11 = L8_8.SIGATTR_LOG_SZ, 1, -1 do
  L12_12, L13_13, L14_14 = nil, nil, nil
  L15_15 = sigattr_tail
  L15_15 = L15_15[L11_11]
  L16_16 = L15_15.matched
  if L16_16 then
    L16_16 = L15_15.utf8p2
  elseif not L16_16 then
    L15_15.attribute = -1
  end
  L16_16 = math_abs
  L17_17 = L15_15.timestamp
  L17_17 = L1_1 - L17_17
  L16_16 = L16_16(L17_17)
  if L16_16 > 5000000 then
    L15_15.attribute = -1
  end
  L16_16 = L15_15.attribute
  if L16_16 == 16402 then
    L12_12 = "Network"
    L13_13 = "BM_NetworkDetection"
    L16_16 = string
    L16_16 = L16_16.match
    L17_17 = L15_15.utf8p2
    L18_18 = "DestIp=([%d%.]+);DestPort=(%d+);.+;Uri=(.-);"
    L18_18 = L16_16(L17_17, L18_18)
    L19_19 = string
    L19_19 = L19_19.gsub
    L19_19 = L19_19(string.gsub(L18_18, "https?://", ""), "[:/].+", "")
    if L16_16 and L17_17 and L18_18 and L19_19 and not L6_6[L19_19] and not string.find(L19_19, L7_7) then
      L14_14 = string.format("ip:%s;port:%s:uri:%s", L16_16, L17_17, L18_18)
      if not L2_2[L14_14] then
        L2_2[L14_14] = true
      else
        L14_14 = nil
      end
    end
  else
    L16_16 = L15_15.attribute
    if L16_16 ~= 16524 then
      L16_16 = L15_15.attribute
    else
      if L16_16 == 16495 then
        L12_12 = "Network"
        L16_16 = L15_15.attribute
        if L16_16 == 16524 then
          L13_13 = "BM_Network_ConnectionOpen"
        else
          L13_13 = "BM_Network_Volume"
        end
        L16_16 = string
        L16_16 = L16_16.match
        L17_17 = L15_15.utf8p2
        L18_18 = "DestIp=([%d%.]+);DestPort=(%d+);"
        L17_17 = L16_16(L17_17, L18_18)
        if L16_16 and L17_17 then
          L18_18 = string
          L18_18 = L18_18.format
          L19_19 = "ip:%s;port:%s"
          L18_18 = L18_18(L19_19, L16_16, L17_17)
          L14_14 = L18_18
          L18_18 = L2_2[L14_14]
          if not L18_18 then
            L2_2[L14_14] = true
          else
            L14_14 = nil
          end
        end
    end
    else
      L16_16 = L15_15.attribute
      if L16_16 == 16497 then
        L12_12 = "Process"
        L13_13 = "BM_Etw_ResumeThread"
        L16_16 = string
        L16_16 = L16_16.match
        L17_17 = L15_15.utf8p2
        L18_18 = "TargetThreadID:([%d%.]+)"
        L16_16 = L16_16(L17_17, L18_18)
        if L16_16 then
          L17_17 = string
          L17_17 = L17_17.format
          L18_18 = "thread:%s"
          L19_19 = L16_16
          L17_17 = L17_17(L18_18, L19_19)
          L14_14 = L17_17
          L17_17 = L3_3[L14_14]
          if not L17_17 then
            L3_3[L14_14] = true
          else
            L14_14 = nil
          end
        end
      else
        L16_16 = L15_15.attribute
        if L16_16 == 16410 then
          L12_12 = "Process"
          L13_13 = "BM_Etw_SetEventHook"
          L14_14 = "SetEventHook"
          L16_16 = L4_4[L14_14]
          if not L16_16 then
            L4_4[L14_14] = true
          else
            L14_14 = nil
          end
        end
      end
    end
  end
  if L12_12 and L13_13 and L14_14 then
    L5_5 = L5_5 + 1
    L16_16 = bm
    L16_16 = L16_16.add_related_string
    L17_17 = string
    L17_17 = L17_17.format
    L18_18 = "ddb49deb_%s_%s"
    L19_19 = L0_0
    L17_17 = L17_17(L18_18, L19_19, L12_12)
    L18_18 = L14_14
    L19_19 = bm
    L19_19 = L19_19.RelatedStringBMReport
    L16_16(L17_17, L18_18, L19_19)
  end
end
if L5_5 < 2 then
  return L8_8
end
if L0_0 == "CobaltStrike" then
  L8_8()
end
L11_11 = L0_0
L11_11 = bm
L11_11 = L11_11.RelatedStringBMReport
L8_8(L9_9, L10_10, L11_11)
return L8_8
