local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L20_20, L21_21
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
if L0_0 == L1_1 then
  L1_1 = mp
  L1_1 = L1_1.get_contextdata
  L2_2 = mp
  L2_2 = L2_2.CONTEXT_DATA_NEWLYCREATEDHINT
  L1_1 = L1_1(L2_2)
  if L1_1 == true then
    L1_1 = mp
    L1_1 = L1_1.getfilename
    L2_2 = mp
    L2_2 = L2_2.bitor
    L3_3 = mp
    L3_3 = L3_3.bitor
    L4_4 = mp
    L4_4 = L4_4.FILEPATH_QUERY_FNAME
    L5_5 = mp
    L5_5 = L5_5.FILEPATH_QUERY_PATH
    L3_3 = L3_3(L4_4, L5_5)
    L4_4 = mp
    L4_4 = L4_4.FILEPATH_QUERY_LOWERCASE
    L21_21 = L2_2(L3_3, L4_4)
    L2_2 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L20_20, L21_21, L2_2(L3_3, L4_4))
    if L2_2 ~= nil then
      L3_3 = #L2_2
    elseif L3_3 <= 4 then
      L3_3 = mp
      L3_3 = L3_3.CLEAN
      return L3_3
    end
    L4_4 = L2_2
    L3_3 = L2_2.find
    L5_5 = "outlookaddin"
    L6_6 = 1
    L7_7 = true
    L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7)
    if L3_3 then
      L4_4 = L1_1
      L3_3 = L1_1.find
      L5_5 = "msip\\logs\\"
      L6_6 = 1
      L7_7 = true
      L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7)
      if not L3_3 then
        L4_4 = L1_1
        L3_3 = L1_1.find
        L5_5 = "logs\\debug\\archive\\"
        L6_6 = 1
        L7_7 = true
        L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7)
      elseif L3_3 then
        L3_3 = mp
        L3_3 = L3_3.CLEAN
        return L3_3
      end
    end
    L4_4 = L2_2
    L3_3 = L2_2.match
    L5_5 = "%.([^%.]+)$"
    L3_3 = L3_3(L4_4, L5_5)
    if L3_3 == nil then
      L4_4 = mp
      L4_4 = L4_4.CLEAN
      return L4_4
    end
    L4_4 = {}
    L4_4.iso = true
    L4_4.vhd = true
    L4_4.vhdx = true
    L4_4.ppkg = true
    L4_4.sppkg = true
    L4_4.img = true
    L5_5 = {}
    L5_5.xlsx = true
    L5_5.xls = true
    L5_5.xlsm = true
    L5_5.xlsb = true
    L5_5.xltx = true
    L5_5.xltm = true
    L5_5.xlam = true
    L5_5.xla = true
    L5_5.xlt = true
    L5_5.docx = true
    L5_5.doc = true
    L5_5.docm = true
    L5_5.dotm = true
    L5_5.dotx = true
    L5_5.ppam = true
    L5_5.pptm = true
    L5_5.ppsm = true
    L5_5.potm = true
    L5_5.pptx = true
    L5_5.rtf = true
    L5_5.one = true
    L5_5[".onetoc2"] = true
    L6_6 = {}
    L6_6.zip = true
    L6_6.rar = true
    L6_6.r00 = true
    L6_6["7z"] = true
    L6_6.arj = true
    L6_6.gz = true
    L6_6.ace = true
    L6_6.xz = true
    L6_6.cab = true
    L7_7 = 0
    L8_8 = L4_4[L3_3]
    if L8_8 then
      L7_7 = 1
    else
      L8_8 = L5_5[L3_3]
      if L8_8 then
        L7_7 = 2
      else
        L8_8 = L6_6[L3_3]
        if L8_8 then
          L7_7 = 3
        else
          L8_8 = mp
          L8_8 = L8_8.CLEAN
          return L8_8
        end
      end
    end
    L8_8 = nil
    L9_9 = mp
    L9_9 = L9_9.IOAVGetDownloadUrl
    L9_9 = L9_9()
    L10_10, L11_11 = nil, nil
    L12_12 = mp
    L12_12 = L12_12.get_contextdata
    L13_13 = mp
    L13_13 = L13_13.CONTEXT_DATA_HAS_MOTW_ADS
    L12_12 = L12_12(L13_13)
    if L12_12 == true then
      L12_12 = pcall
      L13_13 = mp
      L13_13 = L13_13.GetMOTWHostUrl
      L13_13 = L12_12(L13_13)
      L10_10 = L13_13
      _ = L12_12
      L12_12 = pcall
      L13_13 = mp
      L13_13 = L13_13.GetMOTWReferrerUrl
      L13_13 = L12_12(L13_13)
      L11_11 = L13_13
      _ = L12_12
    end
    L12_12 = mp
    L12_12 = L12_12.get_contextdata
    L13_13 = mp
    L13_13 = L13_13.CONTEXT_DATA_PROCESSNAME
    L12_12 = L12_12(L13_13)
    if L12_12 == nil then
      L13_13 = mp
      L13_13 = L13_13.CLEAN
      return L13_13
    end
    L13_13 = L12_12.lower
    L13_13 = L13_13(L14_14)
    L12_12 = L13_13
    L13_13 = IsWebmailDownloadURL
    L13_13 = L13_13(L14_14)
    if not L13_13 then
      L13_13 = IsWebmailDownloadURL
      L13_13 = L13_13(L14_14)
    else
      if L13_13 then
        L8_8 = "webmail"
    end
    else
      L13_13 = IsCommonFileSharingURL
      L13_13 = L13_13(L14_14)
      if not L13_13 then
        L13_13 = IsCommonFileSharingURL
        L13_13 = L13_13(L14_14)
      else
        if L13_13 then
          L8_8 = "linkinemail"
      end
      else
        L13_13 = isOutlookProcess
        L13_13 = L13_13(L14_14)
        if L13_13 then
          L8_8 = "emailclient"
        else
          L13_13 = getCachePaths
          L13_13 = L13_13(L14_14)
          if L13_13 == nil then
            return L14_14
          end
          for L17_17, L18_18 in L14_14(L15_15) do
            L20_20 = L1_1
            L19_19 = L1_1.find
            L21_21 = L18_18
            L19_19 = L19_19(L20_20, L21_21, 1, true)
            if L19_19 ~= nil then
              L8_8 = "emailclient"
              break
            end
          end
        end
      end
    end
    if L8_8 == nil then
      L13_13 = mp
      L13_13 = L13_13.CLEAN
      return L13_13
    end
    L13_13 = mp
    L13_13 = L13_13.get_contextdata
    L13_13 = L13_13(L14_14)
    L13_13 = L15_15
    if L13_13 == nil or L14_14 == nil then
      return L15_15
    end
    L13_13 = L15_15
    L17_17 = L12_12
    L17_17 = 31536000
    L18_18 = L1_1
    L19_19 = "\\"
    L20_20 = L2_2
    L18_18 = L18_18 .. L19_19 .. L20_20
    L19_19 = mp
    L19_19 = L19_19.getfilesize
    L19_19 = L19_19()
    L20_20 = ""
    if L7_7 == 1 then
      L21_21 = mp
      L21_21 = L21_21.set_mpattribute
      L21_21("BM_ISOsFromEmailsMotw")
    elseif L7_7 == 2 then
      L21_21 = mp
      L21_21 = L21_21.get_mpattribute
      L21_21 = L21_21("MHSTR:MacroInside")
      if L21_21 then
        L21_21 = L20_20
        L20_20 = L21_21 .. "HasMacros|"
      end
      L21_21 = mp
      L21_21 = L21_21.set_mpattribute
      L21_21("BM_OfficeFromEmailMotw")
    else
      L21_21 = mp
      L21_21 = L21_21.get_mpattribute
      L21_21 = L21_21("Lua:ZipEncrypted")
      if not L21_21 then
        L21_21 = mp
        L21_21 = L21_21.get_mpattribute
        L21_21 = L21_21("Lua:RarHasEncryptedFile")
      elseif L21_21 then
        L20_20 = "isEncrypted|"
      end
      L21_21 = mp
      L21_21 = L21_21.set_mpattribute
      L21_21("BM_ArchivesFromEmailsMotw")
    end
    L21_21 = string
    L21_21 = L21_21.format
    L21_21 = L21_21("WARCH::ProcessImagePath=%s;ProcessPID=%s;timestamp=%s;FileName=%s;FileSize=%s;Source=%s;OriginalArtifactPath=%s;Referrer=%s;extra=%s", L15_15, L14_14, L16_16, L18_18, L19_19, L8_8, L9_9 or L10_10, L11_11, L20_20)
    if not IsKeyInRollingQueue("CC_filelist", L18_18) then
      AppendToRollingQueue("CC_filelist", L18_18, L21_21, L17_17, 32)
      mp.set_mpattribute(string.format("MpInternal_researchdata=CC_Research=%s", L21_21))
    end
    return mp.INFECTED
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
