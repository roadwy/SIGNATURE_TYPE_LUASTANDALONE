local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = GetRollingQueueKeys
L1_1 = "SuspOwaAccess"
L0_0 = L0_0(L1_1)
if L0_0 ~= nil then
  L1_1 = type
  L1_1 = L1_1(L2_2)
  if L1_1 == "table" then
    L1_1 = "["
    for L5_5, L6_6 in L2_2(L3_3) do
      L1_1 = L1_1 .. L6_6 .. "|"
    end
    L1_1 = L2_2 .. L3_3
    if L3_3 ~= nil and L3_3 ~= "" and L3_3 ~= "%ExchangeInstallPath%" then
      L5_5 = L2_2
      L6_6 = "/"
      L5_5 = L3_3
      L6_6 = "FrontEnd\\HttpProxy"
      L5_5 = bm
      L5_5 = L5_5.add_related_string
      L6_6 = "webshellcandidate"
      L5_5(L6_6, L4_4, bm.RelatedStringBMReport)
      L5_5 = sysio
      L5_5 = L5_5.IsFileExists
      L6_6 = L4_4
      L5_5 = L5_5(L6_6)
      if L5_5 then
        L5_5 = string
        L5_5 = L5_5.match
        L6_6 = L4_4
        L5_5 = L5_5(L6_6, "(.*\\)[^\\]+$")
        if L5_5 then
          L6_6 = bm
          L6_6 = L6_6.add_related_string
          L6_6("webshellpaths", L5_5, bm.RelatedStringBMReport)
        end
        L6_6 = bm
        L6_6 = L6_6.add_threat_file
        L6_6(L4_4)
        L6_6 = mp
        L6_6 = L6_6.ReportLowfi
        L6_6(L4_4, 679953091)
      end
    end
    L5_5 = "uri_list"
    L6_6 = L1_1
    L4_4(L5_5, L6_6, bm.RelatedStringBMReport)
    return L4_4
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
