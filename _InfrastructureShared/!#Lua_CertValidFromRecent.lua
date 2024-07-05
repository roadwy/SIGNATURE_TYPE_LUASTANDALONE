local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18
L0_0 = mp
L0_0 = L0_0.GetCertificateInfo
L0_0 = L0_0()
if L0_0 ~= nil then
elseif L1_1 == 0 then
  if L1_1 == nil then
    L1_1(L2_2)
  end
  return L1_1
end
for L4_4, L5_5 in L1_1(L2_2) do
  L6_6 = L5_5.AuthenticodeContentType
  if L6_6 ~= "PE" then
    L6_6 = mp
    L6_6 = L6_6.CLEAN
    return L6_6
  end
  L6_6 = L5_5.Certificates
  if L6_6 ~= nil then
    for L10_10, L11_11 in L7_7(L8_8) do
      L12_12 = "20160501"
      L13_13 = L11_11.ValidFrom
      if L13_13 ~= nil then
        L14_14 = L13_13.Year
        L15_15 = string
        L15_15 = L15_15.len
        L16_16 = L13_13.Month
        L15_15 = L15_15(L16_16)
        if L15_15 < 2 then
          L15_15 = L14_14
          L16_16 = "0"
          L14_14 = L15_15 .. L16_16
        end
        L15_15 = L14_14
        L16_16 = L13_13.Month
        L14_14 = L15_15 .. L16_16
        L15_15 = string
        L15_15 = L15_15.len
        L16_16 = L13_13.Day
        L15_15 = L15_15(L16_16)
        if L15_15 < 2 then
          L15_15 = L14_14
          L16_16 = "0"
          L14_14 = L15_15 .. L16_16
        end
        L15_15 = L14_14
        L16_16 = L13_13.Day
        L14_14 = L15_15 .. L16_16
        if L12_12 < L14_14 then
          L15_15 = false
          L16_16 = L11_11.Issuer
          if L16_16 ~= nil then
            L17_17 = L16_16.Organization
            if L17_17 ~= nil then
              L17_17 = mp
              L17_17 = L17_17.utf16to8
              L18_18 = L16_16.Organization
              L17_17 = L17_17(L18_18)
              if L17_17 == "Microsoft Corporation" then
                L15_15 = true
              end
            end
          end
          if not L15_15 then
            L17_17 = mp
            L17_17 = L17_17.set_mpattribute
            L18_18 = "Lua:CertValidFromRecent"
            L17_17(L18_18)
            L17_17 = L11_11.Subject
            if L17_17 ~= nil then
              L18_18 = L17_17.Country
              if L18_18 ~= nil then
                L18_18 = string
                L18_18 = L18_18.len
                L18_18 = L18_18(L17_17.Country)
                if L18_18 < 20 then
                  L18_18 = mp
                  L18_18 = L18_18.utf16to8
                  L18_18 = L18_18(L17_17.Country)
                  if L18_18 ~= nil then
                    mp.set_mpattribute("Lua:CertValidFromRecentCountry" .. L18_18)
                  end
                end
              end
            end
            L18_18 = mp
            L18_18 = L18_18.CLEAN
            return L18_18
          end
        end
      end
      L14_14 = L11_11.ValidTo
      if L14_14 ~= nil and L13_13 ~= nil then
        L15_15 = L14_14.Year
        L16_16 = string
        L16_16 = L16_16.len
        L17_17 = L14_14.Month
        L16_16 = L16_16(L17_17)
        if L16_16 < 2 then
          L16_16 = L15_15
          L17_17 = "0"
          L15_15 = L16_16 .. L17_17
        end
        L16_16 = L15_15
        L17_17 = L14_14.Month
        L15_15 = L16_16 .. L17_17
        L16_16 = string
        L16_16 = L16_16.len
        L17_17 = L14_14.Day
        L16_16 = L16_16(L17_17)
        if L16_16 < 2 then
          L16_16 = L15_15
          L17_17 = "0"
          L15_15 = L16_16 .. L17_17
        end
        L16_16 = L15_15
        L17_17 = L14_14.Day
        L15_15 = L16_16 .. L17_17
        if L12_12 > L15_15 then
          L16_16 = false
          L17_17 = false
          L18_18 = L11_11.Issuer
          if L18_18 ~= nil then
            if L18_18.Organization ~= nil and mp.utf16to8(L18_18.Organization) == "Microsoft Corporation" then
              L16_16 = true
            end
            if L18_18.CommonName ~= nil and mp.utf16to8(L18_18.CommonName) == "Unknown issuer" then
              L17_17 = true
            end
          end
          if L11_11.Subject ~= nil and L11_11.Subject.Organization ~= nil then
            if ({
              ["Microsoft Corporation"] = true,
              ["ROBLOX Corporation"] = true,
              ["Adobe Systems Incorporated"] = true,
              ["Dell USA L.P."] = true,
              ["DigiCert Inc"] = true,
              ["DigiCert"] = true,
              ["VeriSign, Inc."] = true,
              ["VeriSign Trust Network"] = true,
              ["COMODO CA Limited"] = true,
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
            })[mp.utf16to8(L11_11.Subject.Organization)] then
            end
          end
          if not L16_16 and not true and not L17_17 then
            mp.set_mpattribute("Lua:CertValidToOld")
            return mp.CLEAN
          end
        end
      end
    end
  end
end
return L1_1
