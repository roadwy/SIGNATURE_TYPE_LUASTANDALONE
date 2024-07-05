local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L2_2 = this_sigattrlog
L2_2 = L2_2[4]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[4]
  L0_0 = L2_2.utf8p2
  L2_2 = this_sigattrlog
  L2_2 = L2_2[4]
  L1_1 = L2_2.utf8p1
end
if not L0_0 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = "PFApp_Parent"
L3_3 = MpCommon
L3_3 = L3_3.GetProcessAttributeValue
L4_4 = L0_0
L5_5 = "PFApp_Parent"
L3_3 = L3_3(L4_4, L5_5)
if not L3_3 then
  L3_3 = MpCommon
  L3_3 = L3_3.GetProcessAttributeValue
  L4_4 = L0_0
  L5_5 = "inherit:PFApp_Parent"
  L3_3 = L3_3(L4_4, L5_5)
end
if not L3_3 then
  L2_2 = "PFAppTracked"
  L4_4 = MpCommon
  L4_4 = L4_4.GetProcessAttributeValue
  L5_5 = L0_0
  L6_6 = "PFAppTracked"
  L4_4 = L4_4(L5_5, L6_6)
  L3_3 = L4_4 or L4_4
end
if not L3_3 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4, L5_5 = nil, nil
L6_6 = this_sigattrlog
L6_6 = L6_6[2]
L6_6 = L6_6.matched
if L6_6 then
  L6_6 = this_sigattrlog
  L6_6 = L6_6[2]
  L4_4 = L6_6.utf8p2
  L6_6 = this_sigattrlog
  L6_6 = L6_6[2]
  L5_5 = L6_6.utf8p1
end
if not L4_4 then
  L6_6 = mp
  L6_6 = L6_6.CLEAN
  return L6_6
end
L6_6 = nri
L6_6 = L6_6.GetHttpRequestHeader
L7_7 = "User-Agent"
L6_6 = L6_6(L7_7)
if L0_0 then
  L7_7 = {}
  L7_7.UserAgent = L6_6 or ""
  L7_7.HostName = L4_4
  L7_7.Url = L5_5
  L7_7.AttributeValue = L3_3
  L7_7.AttributeName = L2_2
  L7_7.ProcessName = L1_1
  MpCommon.BmTriggerSig(L0_0, "NRI:AppomalyTracked_OutboundHttp", safeJsonSerialize(L7_7))
end
L7_7 = mp
L7_7 = L7_7.CLEAN
return L7_7
