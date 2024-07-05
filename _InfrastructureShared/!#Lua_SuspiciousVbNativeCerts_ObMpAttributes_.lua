local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = mp
L0_0 = L0_0.GetCertificateInfo
L0_0 = L0_0()
if L0_0 ~= nil then
elseif L1_1 == 0 then
  return L1_1
end
for L4_4, L5_5 in L1_1(L2_2) do
  L6_6 = L5_5.Certificates
  if L6_6 ~= nil then
    for _FORV_10_, _FORV_11_ in ipairs(L6_6) do
      if _FORV_11_.Issuer ~= nil and _FORV_11_.Issuer.Organization ~= nil then
        if ({
          ["Microsoft Corporation"] = true,
          ["ROBLOX Corporation"] = true,
          ["AddTrust AB"] = true,
          ["Adobe Systems Incorporated"] = true,
          ["Dell USA L.P."] = true,
          ["DigiCert Inc"] = true,
          ["DigiCert"] = true,
          ["VeriSign, Inc."] = true,
          ["VeriSign Trust Network"] = true,
          ["COMODO CA Limited"] = true,
          ["Thawte"] = true,
          ["Thawte Consulting (Pty) Ltd."] = true,
          ["Symantec Corporation"] = true,
          ["WIZVERA CO., LTD"] = true,
          ["NCH Software"] = true,
          ["win.rar GmbH"] = true,
          ["Interezen"] = true,
          ["Interezen Co.,Ltd"] = true,
          ["Interezen Co,.Ltd"] = true,
          ["Shenzhen Wondershare Information Technology Co., Ltd."] = true,
          ["Reloaded Games, Inc"] = true
        })[mp.utf16to8(_FORV_11_.Issuer.Organization)] then
          return mp.CLEAN
        end
      end
    end
  end
end
return L1_1
