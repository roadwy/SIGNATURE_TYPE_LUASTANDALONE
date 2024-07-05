local L0_0, L1_1
function L0_0(A0_2)
  local L1_3, L2_4, L3_5, L4_6, L5_7, L6_8, L7_9
  L1_3 = mp
  L1_3 = L1_3.GetProcessCommandLine
  L2_4 = A0_2
  L1_3 = L1_3(L2_4)
  if not L1_3 then
    L1_3 = ""
  else
    L2_4 = string
    L2_4 = L2_4.lower
    L3_5 = L1_3
    L2_4 = L2_4(L3_5)
    L1_3 = L2_4
  end
  L2_4 = bm
  L2_4 = L2_4.get_imagepath
  L2_4 = L2_4()
  if not L1_3 then
    L2_4 = ""
  else
    L3_5 = string
    L3_5 = L3_5.lower
    L4_6 = L2_4
    L3_5 = L3_5(L4_6)
    L2_4 = L3_5
  end
  L3_5 = nil
  L4_6 = contains
  L5_7 = L2_4
  L6_8 = "w3wp.exe"
  L4_6 = L4_6(L5_7, L6_8)
  if L4_6 then
    L5_7 = L1_3
    L4_6 = L1_3.match
    L6_8 = "-ap \"(%w+)\""
    L4_6 = L4_6(L5_7, L6_8)
    L3_5 = L4_6
    if L3_5 then
      return L3_5
    end
  else
    L4_6 = checkParentCmdlineCaseInsensitive
    L5_7 = A0_2
    L6_8 = {L7_9}
    L7_9 = {"w3wp.exe", "-ap"}
    L7_9 = 15
    L6_8 = L4_6(L5_7, L6_8, L7_9)
    if L6_8 then
      L7_9 = string
      L7_9 = L7_9.lower
      L7_9 = L7_9(L6_8)
      L7_9 = L7_9.match
      L7_9 = L7_9(L7_9, "-ap \"(%w+)\"")
      L3_5 = L7_9
      if L3_5 then
        return L3_5
      end
    end
  end
  L4_6 = contains
  L5_7 = L2_4
  L6_8 = "sqlservr.exe"
  L4_6 = L4_6(L5_7, L6_8)
  if L4_6 then
    L5_7 = L1_3
    L4_6 = L1_3.match
    L6_8 = "-s([%w-._]+)"
    L4_6 = L4_6(L5_7, L6_8)
    L3_5 = L4_6
    if L3_5 then
      return L3_5
    end
  else
    L4_6 = checkParentCmdlineCaseInsensitive
    L5_7 = A0_2
    L6_8 = {L7_9}
    L7_9 = {
      "sqlservr.exe",
      "-s"
    }
    L7_9 = 15
    L6_8 = L4_6(L5_7, L6_8, L7_9)
    if L6_8 then
      L7_9 = string
      L7_9 = L7_9.lower
      L7_9 = L7_9(L6_8)
      L7_9 = L7_9.match
      L7_9 = L7_9(L7_9, "-s([%w-._]+)")
      L3_5 = L7_9
      if L3_5 then
        return L3_5
      end
    end
  end
  L4_6 = contains
  L5_7 = L2_4
  L6_8 = "java.exe"
  L4_6 = L4_6(L5_7, L6_8)
  if L4_6 then
    L5_7 = L1_3
    L4_6 = L1_3.match
    L6_8 = "-d([%w]+).home="
    L4_6 = L4_6(L5_7, L6_8)
    L3_5 = L4_6
    if L3_5 then
      return L3_5
    end
  else
    L4_6 = checkParentCmdlineCaseInsensitive
    L5_7 = A0_2
    L6_8 = {L7_9}
    L7_9 = {"\\java.exe", ".home"}
    L7_9 = 15
    L6_8 = L4_6(L5_7, L6_8, L7_9)
    if L6_8 then
      L7_9 = string
      L7_9 = L7_9.lower
      L7_9 = L7_9(L6_8)
      L7_9 = L7_9.match
      L7_9 = L7_9(L7_9, "-d([%w]+).home=")
      L3_5 = L7_9
      if L3_5 then
        return L3_5
      end
    end
  end
  L4_6 = contains
  L5_7 = L2_4
  L6_8 = "ruby.exe"
  L4_6 = L4_6(L5_7, L6_8)
  if L4_6 then
    L4_6 = MpCommon
    L4_6 = L4_6.StringRegExpSearch
    L5_7 = "(mongrel|httpd|thin|puma|rails)"
    L6_8 = L1_3
    L5_7 = L4_6(L5_7, L6_8)
    L3_5 = L5_7
    _ = L4_6
    if L3_5 then
      return L3_5
    end
  else
    L4_6 = {
      L5_7,
      L6_8,
      L7_9,
      {"ruby.exe", "puma"},
      {"ruby.exe", "rails"}
    }
    L5_7 = {L6_8, L7_9}
    L6_8 = "ruby.exe"
    L7_9 = "mongrel"
    L6_8 = {L7_9, "httpd"}
    L7_9 = "ruby.exe"
    L7_9 = {"ruby.exe", "thin"}
    L5_7 = checkParentCmdlineCaseInsensitive
    L6_8 = A0_2
    L7_9 = L4_6
    L7_9 = L5_7(L6_8, L7_9, 15)
    if L7_9 then
      L6_8, L3_5 = MpCommon.StringRegExpSearch("(mongrel|httpd|thin|puma|rails)", L7_9)
      if L3_5 then
        return L3_5
      end
    end
  end
  L4_6 = "unknown"
  return L4_6
end
getWebApplicationType = L0_0
function L0_0(A0_10, A1_11)
  local L2_12, L3_13, L4_14, L5_15, L6_16, L7_17
  if not A0_10 then
    return
  end
  A1_11 = A1_11 or 4
  L2_12 = {
    L3_13,
    L4_14,
    L5_15,
    L6_16,
    L7_17,
    {"apache", ""},
    {
      "java",
      ".home=.* start"
    },
    {"ruby", "mongrel"},
    {"ruby", "httpd"},
    {"ruby", "thin"},
    {"ruby", "puma"},
    {"ruby", "rails"}
  }
  L3_13 = {L4_14, L5_15}
  L4_14 = "httpd"
  L5_15 = ""
  L4_14 = {L5_15, L6_16}
  L5_15 = "tomcat"
  L5_15 = {L6_16, L7_17}
  L3_13 = MpCommon
  L3_13 = L3_13.GetImagePathFromPid
  L4_14 = A0_10
  L3_13 = L3_13(L4_14)
  L3_13 = L3_13 or ""
  L4_14 = string
  L4_14 = L4_14.lower
  L5_15 = L3_13
  L4_14 = L4_14(L5_15)
  L5_15 = L4_14
  L4_14 = L4_14.match
  L4_14 = L4_14(L5_15, L6_16)
  L4_14 = L4_14 or ""
  L5_15 = mp
  L5_15 = L5_15.GetProcessCommandLine
  L5_15 = L5_15(L6_16)
  L5_15 = L5_15 or ""
  L5_15 = L6_16
  for _FORV_9_, _FORV_10_ in L6_16(L7_17) do
    if contains(L4_14, _FORV_10_[1]) and L5_15:find(_FORV_10_[2]) then
      return true, _FORV_10_[1]
    end
  end
  if L6_16 then
    return true, L7_17
  end
  return false
end
IsAppomalyTrackedProcess = L0_0
function L0_0(A0_18)
  local L1_19, L2_20, L3_21, L4_22, L5_23, L6_24, L7_25, L8_26, L9_27, L10_28, L11_29, L12_30
  L1_19 = #A0_18
  if L1_19 > 1000 then
    L2_20 = A0_18
    L1_19 = A0_18.sub
    L3_21 = 1
    L4_22 = 1000
    L1_19 = L1_19(L2_20, L3_21, L4_22)
    A0_18 = L1_19
  end
  L1_19 = {}
  L2_20 = string
  L2_20 = L2_20.lower
  L3_21 = A0_18
  L2_20 = L2_20(L3_21)
  A0_18 = L2_20
  L2_20 = MpCommon
  L2_20 = L2_20.NormalizeString
  L3_21 = A0_18
  L4_22 = "CmdLineNormalizationStandard"
  L2_20 = L2_20(L3_21, L4_22)
  A0_18 = L2_20
  L3_21 = A0_18
  L2_20 = A0_18.gsub
  L4_22 = "(%w:\\[^\"']*)\\([^'\"%s\\]+)%.(exe)([\"'])"
  L5_23 = "FILEPATH\\%2.exe%4"
  L2_20 = L2_20(L3_21, L4_22, L5_23)
  A0_18 = L2_20
  L3_21 = A0_18
  L2_20 = A0_18.gsub
  L4_22 = "(%w:\\[^\"']*)\\([^'\"%s\\]+)%.(%w+)([\"'])"
  L5_23 = "FILEPATH\\FILENAME.%3%4"
  L2_20 = L2_20(L3_21, L4_22, L5_23)
  A0_18 = L2_20
  L3_21 = A0_18
  L2_20 = A0_18.gsub
  L4_22 = "(%w:\\[^\"'%s]*)\\([^'\"\\%s]+)%.(%w+)"
  L5_23 = "FILEPATH\\FILENAME.%3"
  L2_20 = L2_20(L3_21, L4_22, L5_23)
  A0_18 = L2_20
  L3_21 = A0_18
  L2_20 = A0_18.gsub
  L4_22 = "(%w:\\[^\"'%s]*)"
  L5_23 = "FILEPATH"
  L2_20 = L2_20(L3_21, L4_22, L5_23)
  A0_18 = L2_20
  L3_21 = A0_18
  L2_20 = A0_18.gsub
  L4_22 = "(%w:/[^/][^\"']*)/([^'\"%s/]+)%.(exe)([\"'])"
  L5_23 = "FILEPATH\\%2.exe%4"
  L2_20 = L2_20(L3_21, L4_22, L5_23)
  A0_18 = L2_20
  L3_21 = A0_18
  L2_20 = A0_18.gsub
  L4_22 = "(%w:/[^/][^\"']*)/([^'\"%s]+)%.(%w+)([\"'])"
  L5_23 = "FILEPATH\\FILENAME.%3%4"
  L2_20 = L2_20(L3_21, L4_22, L5_23)
  A0_18 = L2_20
  L3_21 = A0_18
  L2_20 = A0_18.gsub
  L4_22 = "(%w:/[^/][^\"'%s]*)/([^'\"/%s]+)%.(%w+)"
  L5_23 = "FILEPATH\\FILENAME.%3"
  L2_20 = L2_20(L3_21, L4_22, L5_23)
  A0_18 = L2_20
  L3_21 = A0_18
  L2_20 = A0_18.gsub
  L4_22 = "(%w:/[^/][^\"'%s]*)"
  L5_23 = "FILEPATH"
  L2_20 = L2_20(L3_21, L4_22, L5_23)
  A0_18 = L2_20
  L2_20 = {
    L3_21,
    L4_22,
    L5_23,
    L6_24,
    L7_25,
    L8_26,
    L9_27,
    L10_28,
    L11_29,
    L12_30,
    "%$",
    "%."
  }
  L3_21 = "%%"
  L4_22 = "%("
  L5_23 = "%)"
  L6_24 = "%["
  L12_30 = "%^"
  L3_21 = {
    L4_22,
    L5_23,
    L6_24,
    L7_25,
    L8_26,
    L9_27,
    L10_28,
    L11_29,
    L12_30,
    "^",
    "$",
    "."
  }
  L4_22 = "%"
  L5_23 = "("
  L6_24 = ")"
  L12_30 = "?"
  L4_22 = "((ftp|http[s]?):\\/\\/[^\"\\s']+)"
  L5_23 = MpCommon
  L5_23 = L5_23.StringRegExpSearch
  L6_24 = L4_22
  L6_24 = L5_23(L6_24, L7_25)
  if L5_23 then
    for L10_28, L11_29 in L7_25(L8_26) do
      L12_30 = L6_24.gsub
      L12_30 = L12_30(L6_24, L11_29, "%%" .. L3_21[L10_28])
      L6_24 = L12_30
    end
    A0_18 = L7_25
  end
  A0_18 = L8_26
  A0_18 = L8_26
  for L12_30 in L9_27(L10_28, L11_29) do
    if not L12_30:match("^%d+$") then
      table.insert(L8_26, L12_30)
    end
  end
  return L8_26
end
CommandLineTokenizer = L0_0
function L0_0(A0_31)
  local L1_32, L2_33, L3_34, L4_35, L5_36, L6_37, L7_38, L8_39, L9_40, L10_41
  L1_32 = {}
  L2_33 = 0
  L3_34 = {}
  L5_36 = A0_31
  L4_35 = A0_31.find
  L6_37 = "localhost"
  L7_38 = 1
  L8_39 = true
  L4_35 = L4_35(L5_36, L6_37, L7_38, L8_39)
  if not L4_35 then
    L5_36 = A0_31
    L4_35 = A0_31.find
    L6_37 = "127.0.0.1"
    L7_38 = 1
    L8_39 = true
    L4_35 = L4_35(L5_36, L6_37, L7_38, L8_39)
    if not L4_35 then
      L5_36 = A0_31
      L4_35 = A0_31.find
      L6_37 = "0.0.0.0"
      L7_38 = 1
      L8_39 = true
      L4_35 = L4_35(L5_36, L6_37, L7_38, L8_39)
    end
  elseif L4_35 then
    L4_35 = table
    L4_35 = L4_35.insert
    L5_36 = L3_34
    L6_37 = "URL_LOCALHOST"
    L4_35(L5_36, L6_37)
    L1_32.Url_Score = 0
    L1_32.Url_scoring_info = L3_34
    L4_35 = 0
    L5_36 = L1_32
    return L4_35, L5_36
  end
  L4_35 = mp
  L4_35 = L4_35.CheckUrl
  L5_36 = A0_31
  L5_36 = L4_35(L5_36)
  if L4_35 == 1 and L5_36 == 1 then
    L6_37 = table
    L6_37 = L6_37.insert
    L7_38 = L3_34
    L8_39 = "CheckURL_CLEAN"
    L6_37(L7_38, L8_39)
    L1_32.Url_Score = 0
    L1_32.Url_scoring_info = L3_34
    L6_37 = 0
    L7_38 = L1_32
    return L6_37, L7_38
  end
  L7_38 = A0_31
  L6_37 = A0_31.match
  L8_39 = "^%a+://([^:/]+)"
  L6_37 = L6_37(L7_38, L8_39)
  L7_38 = AnomalyTableCheck
  L8_39 = "Appomaly_Network_HOST_Global"
  L9_40 = L6_37
  L10_41 = 30
  L9_40 = L7_38(L8_39, L9_40, L10_41)
  if L7_38 == true and L8_39 == false then
    L2_33 = L2_33 + 20
    L10_41 = table
    L10_41 = L10_41.insert
    L10_41(L3_34, "AnomalousHost")
  end
  L10_41 = {}
  L10_41.SIG_CONTEXT = "Appomaly"
  L10_41.FILELESS = "true"
  L10_41.CMDLINE_URL = "true"
  if SafeGetUrlReputation({A0_31}, L10_41, false, 2000) and SafeGetUrlReputation({A0_31}, L10_41, false, 2000).urls[A0_31] and SafeGetUrlReputation({A0_31}, L10_41, false, 2000).urls[A0_31].determination == 1 and SafeGetUrlReputation({A0_31}, L10_41, false, 2000).urls[A0_31].confidence >= 90 then
    table.insert(L3_34, "UrlRepLookup_CLEAN")
    L1_32.Url_Score = 0
    L1_32.Url_scoring_info = L3_34
    return 0, L1_32
  end
  if SafeGetUrlReputation({A0_31}, L10_41, false, 2000) and SafeGetUrlReputation({A0_31}, L10_41, false, 2000).urls[A0_31] and SafeGetUrlReputation({A0_31}, L10_41, false, 2000).urls[A0_31].confidence >= 60 then
    L1_32.UrlRep_Confidence = SafeGetUrlReputation({A0_31}, L10_41, false, 2000).urls[A0_31].confidence
    L1_32.UrlRep_Determination = SafeGetUrlReputation({A0_31}, L10_41, false, 2000).urls[A0_31].determination
    if SafeGetUrlReputation({A0_31}, L10_41, false, 2000).urls[A0_31].determination ~= 1 then
      L2_33 = L2_33 + 20
      table.insert(L3_34, "BadUrlRep")
    end
  end
  if MpCommon.StringRegExpSearch(".(exe|dll|ps1|bat|rar|msi|torrent)", A0_31) then
    L2_33 = L2_33 + 20
    table.insert(L3_34, "Susfile_extension")
  end
  if string.find(A0_31, "%d+%.%d+%.%d+%.%d+") then
    L2_33 = L2_33 + 10
    table.insert(L3_34, "IP")
  end
  L1_32.Url_Score = L2_33
  L1_32.Url_scoring_info = L3_34
  return L2_33, L1_32
end
UrlGrader = L0_0
function L0_0(A0_42, A1_43, A2_44)
  local L3_45, L4_46, L5_47, L6_48
  A2_44 = A2_44 or 30
  L3_45 = MpCommon
  L3_45 = L3_45.AnomalyTableLookup
  L4_46 = A0_42
  L3_45 = L3_45(L4_46)
  L4_46, L5_47 = nil, nil
  L6_48 = {}
  L6_48.AnomalyTableName = A0_42
  L6_48.Key = A1_43
  if L3_45 then
    if L3_45.TableAge < 1440 * A2_44 then
      L4_46, L5_47 = pcall(MpCommon.AnomalyEventUpdate, A0_42, A1_43, 1, 1)
      if L4_46 then
        return true, true, L3_45
      else
        L6_48.Error = tostring(L5_47) .. "; Table age."
        bm.trigger_sig("AnomalyTable_Error", safeJsonSerialize(L6_48))
      end
    elseif not MpCommon.AnomalyEventLookup(A0_42, A1_43, 1) then
      return true, false, L3_45
    else
      return true, true, L3_45
    end
  else
    L4_46, L5_47 = pcall(MpCommon.AnomalyEventUpdate, A0_42, A1_43, 1, 1)
    if L4_46 then
      bm.trigger_sig("AnomalyTableMarker_Rcr", safeJsonSerialize(L6_48))
      return true, true, L3_45
    else
      L6_48.Error = tostring(L5_47) .. "; Failed to add a new record."
      bm.trigger_sig("AnomalyTable_Error", safeJsonSerialize(L6_48))
    end
  end
  return false, false, L3_45
end
AnomalyTableCheck = L0_0
function L0_0(A0_49)
  local L1_50, L2_51, L3_52, L4_53, L5_54, L6_55, L7_56, L8_57, L9_58, L10_59, L11_60
  L1_50 = hasBase64Content
  L2_51 = A0_49
  L1_50 = L1_50(L2_51)
  if L1_50 then
    L1_50 = Base64Grader
    L2_51 = A0_49
    return L1_50(L2_51)
  end
  L1_50 = #A0_49
  if L1_50 > 5000 then
    L2_51 = A0_49
    L1_50 = A0_49.sub
    L3_52 = 1
    L4_53 = 1000
    L1_50 = L1_50(L2_51, L3_52, L4_53)
    A0_49 = L1_50
  end
  L1_50 = string
  L1_50 = L1_50.lower
  L2_51 = A0_49
  L1_50 = L1_50(L2_51)
  A0_49 = L1_50
  L1_50 = 0
  L2_51 = {}
  L3_52 = {}
  L4_53 = "((?i)(ftp|http[s]?)://[^\\\"\\s\\']+)"
  L5_54 = MpCommon
  L5_54 = L5_54.StringRegExpSearch
  L6_55 = L4_53
  L7_56 = A0_49
  L6_55 = L5_54(L6_55, L7_56)
  if L5_54 then
    L7_56 = UrlGrader
    L7_56 = L7_56(L8_57)
    if L7_56 == 0 then
      return L9_58, L10_59
    end
    L1_50 = L7_56
    L3_52.Url = L6_55
    L11_60 = "url"
    L9_58(L10_59, L11_60)
    L2_51.Url_scoring_info = L8_57
  end
  L7_56 = {}
  L7_56["%[io.file%]::writeallbytes"] = 5
  L7_56["system.reflection.assembly"] = 5
  L7_56["iisy.invoke"] = 5
  L7_56.tcplistener = 5
  L7_56.accepttcpclient = 5
  L7_56.tcpclient = 5
  L7_56.downloadstring = 10
  L7_56["[^r]shell[^.]"] = 5
  L7_56.defender = 30
  L7_56.scriptblock = 5
  L7_56.webrequest = 5
  L7_56["user%-agent"] = 10
  L7_56.webclient = 5
  L7_56["unicode.getstring"] = 5
  L7_56.whoami = 1
  L7_56["net user"] = 1
  L7_56["bitsadmin.*http"] = 5
  L7_56["certutil.*http"] = 5
  L7_56["invoke%-webrequest"] = 5
  L7_56["invoke%-restmethod"] = 5
  L7_56.curl = 5
  L7_56.wget = 5
  L7_56["new%-localuser"] = 5
  L7_56["net group /add"] = 5
  L7_56["new%-localgroup"] = 5
  L7_56.icacls = 1
  L7_56["set%-acl"] = 1
  L7_56["set%-itemproperty"] = 1
  L7_56["set%-mppreference"] = 5
  L7_56.netstat = 1
  L7_56.nmap = 1
  L7_56.runas = 5
  L7_56["enable%-privilege"] = 5
  L7_56.psexec = 5
  L7_56["invoke%-command"] = 5
  L7_56.taskkill = 1
  L7_56["stop%-process"] = 5
  L7_56["reg add"] = 1
  L7_56["set%-itemproperty.*disable"] = 2
  for L11_60, _FORV_12_ in L8_57(L9_58) do
    if string.find(A0_49, L11_60) then
      L1_50 = L1_50 + _FORV_12_
      table.insert(L2_51, L11_60)
    end
  end
  L3_52.Evidence_L1 = L2_51
  L3_52.Score = L1_50
  return L8_57, L9_58
end
CommandLineGrader = L0_0
function L0_0(A0_61, A1_62)
  local L2_63, L3_64, L4_65, L5_66, L6_67, L7_68, L8_69, L9_70, L10_71, L11_72, L12_73, L13_74, L14_75, L15_76
  A1_62 = A1_62 or 1
  if A1_62 > 3 then
    return
  end
  L2_63 = ""
  L3_64 = nil
  L4_65 = 0
  L5_66 = {}
  L6_67 = {}
  L7_68 = MpCommon
  L7_68 = L7_68.StringRegExpSearch
  L8_69 = "(?i)(?:FromBase64String\\(\\s*['\"]+|\\s+-enc\\s+|\\s+-e\\s+|\\s+-encodedcommand\\s+)([^\\s'\"\\)]{35,})"
  L9_70 = A0_61
  L8_69 = L7_68(L8_69, L9_70)
  if L7_68 then
    L3_64 = L8_69
  else
    L9_70 = MpCommon
    L9_70 = L9_70.StringRegExpSearch
    L10_71 = "(?i)(?:FromBase64String\\(\\$)([\\w_]+)"
    L11_72 = A0_61
    L10_71 = L9_70(L10_71, L11_72)
    if L10_71 then
      L11_72 = "\\$"
      L11_72 = L11_72 .. L12_73 .. L13_74
      if L13_74 then
        L3_64 = L13_74
      else
        L15_76 = L10_71
        L11_72 = L14_75 .. L15_76 .. "%s*=%s*" .. "[^;]+"
        L15_76 = A0_61
        if L13_74 then
          L15_76 = L13_74
          if not L14_75 then
            L15_76 = L13_74
            if not L14_75 then
              L4_65 = L4_65 + 10
              L3_64 = L13_74
              L15_76 = L5_66
              L14_75(L15_76, "Obfuscated_FailedToDecode_Var")
            end
          end
        end
      end
    else
      L11_72 = table
      L11_72 = L11_72.insert
      L11_72(L12_73, L13_74)
      L6_67.Evidence = L5_66
      L6_67.Score = 0
      return L6_67
    end
  end
  if not L3_64 then
    return L6_67
  end
  L9_70 = #L3_64
  if L9_70 > 500 then
    L4_65 = L4_65 + 5
    L9_70 = table
    L9_70 = L9_70.insert
    L10_71 = L5_66
    L11_72 = "length_G500"
    L9_70(L10_71, L11_72)
  else
    L9_70 = #L3_64
    if L9_70 > 100 then
      L4_65 = L4_65 + 3
      L9_70 = table
      L9_70 = L9_70.insert
      L10_71 = L5_66
      L11_72 = "length_G100"
      L9_70(L10_71, L11_72)
    else
      L9_70 = table
      L9_70 = L9_70.insert
      L10_71 = L5_66
      L11_72 = "length_L100"
      L9_70(L10_71, L11_72)
      L6_67.Score = 0
      L6_67.Evidence = L5_66
      return L6_67
    end
  end
  L9_70 = MpCommon
  L9_70 = L9_70.Base64Decode
  L10_71 = L3_64
  L9_70 = L9_70(L10_71)
  if L9_70 then
    L10_71 = string
    L10_71 = L10_71.gsub
    L11_72 = L9_70
    L10_71 = L10_71(L11_72, L12_73, L13_74)
    L9_70 = L10_71
    L10_71 = string
    L10_71 = L10_71.gsub
    L11_72 = L9_70
    L10_71 = L10_71(L11_72, L12_73, L13_74)
    L9_70 = L10_71
    L10_71 = string
    L10_71 = L10_71.gsub
    L11_72 = L9_70
    L10_71 = L10_71(L11_72, L12_73, L13_74)
    L9_70 = L10_71
    L2_63 = L9_70
  else
    L4_65 = L4_65 + 10
    L10_71 = table
    L10_71 = L10_71.insert
    L11_72 = L5_66
    L10_71(L11_72, L12_73)
  end
  L10_71 = string
  L10_71 = L10_71.lower
  L11_72 = A0_61
  L10_71 = L10_71(L11_72)
  L11_72 = string
  L11_72 = L11_72.lower
  L11_72 = L11_72(L12_73)
  L10_71 = L10_71 .. L11_72
  L11_72 = {}
  L11_72["[io.file]::writeallbytes"] = 5
  L11_72["system.reflection.assembly"] = 5
  L11_72["iisy.invoke"] = 5
  L11_72.tcplistener = 5
  L11_72.accepttcpclient = 5
  L11_72.tcpclient = 5
  L11_72.downloadstring = 10
  L11_72["[^r]shell[^.]"] = 5
  L11_72["cmd.exe"] = 2
  L11_72.defender = 30
  L11_72.scriptblock = 5
  L11_72.webrequest = 5
  L11_72["user-agent"] = 10
  L11_72.webclient = 5
  L11_72["unicode.getstring"] = 5
  L11_72.whoami = 5
  L11_72["net user"] = 5
  for L15_76, _FORV_16_ in L12_73(L13_74) do
    if string.find(L10_71, L15_76) then
      L4_65 = L4_65 + _FORV_16_
      table.insert(L5_66, L15_76)
    end
  end
  L15_76 = L10_71
  if L13_74 then
    L15_76 = UrlGrader
    L15_76 = L15_76(L14_75)
    if L15_76 == 0 then
      return L6_67
    end
    L4_65 = L15_76
    L6_67.Url = L14_75
    table.insert(L5_66, "url")
    L5_66.Url_scoring_info = L15_76(L14_75)
  end
  L15_76 = "Evidence_L"
  L15_76 = L15_76 .. A1_62
  L6_67[L15_76] = L5_66
  L6_67.Score = L4_65
  L15_76 = CommandLineTokenizer
  L15_76 = L15_76(L2_63)
  L6_67.TokenizedCmdline = L15_76
  L15_76 = MpCommon
  L15_76 = L15_76.StringRegExpSearch
  L15_76 = L15_76("(?i)frombase64string", L2_63)
  if L15_76 then
    L4_65 = L4_65 + 10
    L15_76 = table
    L15_76 = L15_76.insert
    L15_76(L5_66, "MultilayerEncoding")
    L15_76 = MpCommon
    L15_76 = L15_76.StringRegExpSearch
    L15_76 = L15_76("(?i)frombase64string\\(\\s*['\"]+)?([^\\s'\"\\)]{35,}", L2_63)
    if L15_76 then
      L4_65 = L4_65 + 20
      L15_76 = table
      L15_76 = L15_76.insert
      L15_76(L5_66, "MultilayerEncodingChunk")
    end
    L15_76 = "Evidence_L"
    L15_76 = L15_76 .. A1_62
    L6_67[L15_76] = L5_66
    L6_67.Score = L4_65
    A1_62 = A1_62 + 1
    L15_76 = Base64Grader
    L15_76 = L15_76(L2_63, A1_62)
    if L15_76 and L15_76.Score and L15_76.Evidence then
      L6_67["Evidence_L" .. A1_62] = L15_76.Evidence
      L6_67.Score = L4_65 + L15_76.Score
    end
  end
  return L6_67
end
Base64Grader = L0_0
function L0_0(A0_77)
  return mp.get_mpattribute("MpCmdLineFoundB64") or MpCommon.StringRegExpSearch("(?i)(frombase64string|(powershell|pwsh)(.exe)?.*-e(nc|ncodedcommand)?\\s+(['\"]+)?([^'\"\\s;]{30,}))", A0_77)
end
hasBase64Content = L0_0
function L0_0(A0_78, A1_79, A2_80, A3_81)
  local L4_82, L5_83, L6_84, L7_85, L8_86, L9_87, L10_88, L11_89
  L4_82 = "Appomaly_InstalledApp1"
  L5_83 = 500
  L6_84 = {}
  L6_84.PFServers = 10
  L6_84.programfiles_Net = 30
  L6_84.programfiles = 20
  L6_84.generic = 50
  L7_85 = {}
  L7_85.PFServers = 180
  L7_85.programfiles_Net = 180
  L7_85.programfiles = 90
  L7_85.generic = 1
  L8_86 = L6_84[A2_80]
  if not L8_86 then
    L8_86 = false
    return L8_86
  end
  L8_86 = L7_85[A2_80]
  L9_87 = A3_81 or "PFAppTracked"
  L10_88 = MpCommon
  L10_88 = L10_88.DoesProcessHaveAttribute
  L11_89 = A0_78
  L10_88 = L10_88(L11_89, L9_87)
  if not L10_88 then
    L10_88 = MpCommon
    L10_88 = L10_88.DoesProcessHaveAttribute
    L11_89 = A0_78
    L10_88 = L10_88(L11_89, "inherit:" .. L9_87)
  elseif L10_88 then
    L10_88 = true
    L11_89 = {}
    return L10_88, L11_89
  end
  L10_88 = {}
  L11_89 = GetRollingQueueKeys
  L11_89 = L11_89(L4_82)
  L10_88.AllTrackedApps = L11_89
  L10_88.IsNewApp = false
  L11_89 = IsKeyValuePairInRollingQueue
  L11_89 = L11_89(L4_82, A2_80, A1_79)
  if not L11_89 then
    L11_89 = GetRollingQueueCountForKey
    L11_89 = L11_89(L4_82, A2_80)
    L11_89 = L11_89 or 0
    if L11_89 < L6_84[A2_80] then
      AppendToRollingQueue(L4_82, A2_80, A1_79, 86400 * L8_86, L5_83, 0)
      L10_88.IsNewApp = true
      L10_88.AppFirstSeen = MpCommon.GetCurrentTimeT()
    else
      L10_88.err = "Reached Max Number of Apps for tracking"
      L10_88.NumberOfTrackedApps = L11_89
      return false, L10_88
    end
  end
  L11_89 = {}
  L11_89.AppName = A1_79
  L11_89.Pid = A0_78
  L11_89.AppCategory = A2_80
  L11_89.Score = 0
  L10_88.AttributeValue = L11_89
  L10_88.AllTrackedApps = GetRollingQueueKeyValues(L4_82, A2_80)
  if not pcall(MpCommon.AddProcessAttribute, A0_78, L9_87, safeJsonSerialize(L11_89), true) then
    L10_88.err = pcall(MpCommon.AddProcessAttribute, A0_78, L9_87, safeJsonSerialize(L11_89), true)
    return false, L10_88
  end
  return true, L10_88
end
startTrackingApp = L0_0
function L0_0(A0_90, A1_91)
  local L2_92, L3_93, L4_94
  L2_92 = {}
  L3_93 = A1_91 or "PFAppTracked"
  L4_94 = MpCommon
  L4_94 = L4_94.GetProcessAttributeValue
  L4_94 = L4_94(A0_90, L3_93)
  if not L4_94 then
    L4_94 = MpCommon
    L4_94 = L4_94.GetProcessAttributeValue
    L4_94 = L4_94(A0_90, "inherit:" .. L3_93)
  end
  if not L4_94 then
    return false, L2_92
  end
  if not safeJsonDeserialize(L4_94) then
    return false, {}
  end
  if safeJsonDeserialize(L4_94).Reason and #safeJsonDeserialize(L4_94).Reason > 1 then
    MpCommon.BmTriggerSig(A0_90, "AnomalyMultiStage", L4_94)
    return true
  end
  if safeJsonDeserialize(L4_94).Score and safeJsonDeserialize(L4_94).Score > 35 then
    MpCommon.BmTriggerSig(A0_90, "AnomalyMultiStage", L4_94)
    return true
  end
  return false
end
isAnomalousProcess = L0_0
function L0_0(A0_95)
  local L1_96, L2_97, L3_98, L4_99, L5_100, L6_101
  L1_96 = mp
  L1_96 = L1_96.enum_mpattributesubstring
  L1_96 = L1_96(L2_97)
  if L1_96 then
    if L2_97 > 0 then
      for L5_100, L6_101 in L2_97(L3_98) do
        bm.add_related_string("RelatedBMAppomalyHits", L6_101, bm.RelatedStringBMReport)
      end
    end
  end
  return
end
add_related_anomalydetections = L0_0
function L0_0()
  local L0_102, L1_103
  L0_102 = {}
  L1_103 = mp
  L1_103 = L1_103.GetParentProcInfo
  L1_103 = L1_103()
  while L1_103 and L1_103.ppid and L1_103.image_path do
    table.insert(L0_102, {
      key = L1_103.image_path,
      value = MpCommon.IsFriendlyProcess(L1_103.ppid)
    })
    L1_103 = mp.GetParentProcInfo(L1_103.ppid)
  end
  return L0_102
end
add_parents_mp = L0_0
function L0_0(A0_104, A1_105, A2_106, A3_107)
  local L4_108, L5_109, L6_110, L7_111, L8_112
  L4_108 = A3_107 or "PFAppTracked"
  L5_109 = MpCommon
  L5_109 = L5_109.GetProcessAttributeValue
  L6_110 = A0_104
  L7_111 = L4_108
  L5_109 = L5_109(L6_110, L7_111)
  if not L5_109 then
    L6_110 = MpCommon
    L6_110 = L6_110.GetProcessAttributeValue
    L7_111 = A0_104
    L8_112 = "inherit:"
    L8_112 = L8_112 .. L4_108
    L6_110 = L6_110(L7_111, L8_112)
    L5_109 = L6_110
    L6_110 = "inherit:"
    L7_111 = L4_108
    L4_108 = L6_110 .. L7_111
  end
  if not L5_109 then
    L6_110 = 0
    L7_111 = {}
    return L6_110, L7_111
  end
  L6_110 = safeJsonDeserialize
  L7_111 = L5_109
  L6_110 = L6_110(L7_111)
  if not L6_110 then
    L7_111 = mp
    L7_111 = L7_111.CLEAN
    return L7_111
  end
  L7_111 = L6_110.Score
  L7_111 = L7_111 + A1_105
  L6_110.Score = L7_111
  L7_111 = L6_110.Reason
  if not L7_111 then
    L7_111 = {}
    L6_110.Reason = L7_111
  end
  L7_111 = table
  L7_111 = L7_111.insert
  L8_112 = L6_110.Reason
  L7_111 = L7_111(L8_112, A2_106)
  L6_110.Reason = L7_111
  L7_111 = pcall
  L8_112 = MpCommon
  L8_112 = L8_112.AddProcessAttribute
  L8_112 = L7_111(L8_112, A0_104, L4_108, safeJsonSerialize(L6_110), true)
  if not L7_111 then
    MpCommon.BmTriggerSig(A0_104, "IncreaseProcAttribScoreError", safeJsonSerialize(L6_110))
    return false, L8_112
  end
  isAnomalousProcess(A0_104)
  return true, L6_110
end
IncreaseProcessAnomalyScore = L0_0
function L0_0(A0_113)
  local L1_114, L2_115, L3_116, L4_117, L5_118, L6_119, L7_120
  L1_114 = A0_113 or L1_114()
  L2_115 = MpCommon
  L2_115 = L2_115.GetImagePathFromPid
  L3_116 = L1_114
  L2_115 = L2_115(L3_116)
  while L1_114 and L2_115 do
    L3_116 = MpCommon
    L3_116 = L3_116.StringRegExpSearch
    L4_117 = "(?i)(?:\\\\program\\sfiles(?:\\s\\(x86\\))?)\\\\([^\\\\]+)(\\\\[^\\\\]+\\\\)?"
    L5_118 = L2_115
    L5_118 = L3_116(L4_117, L5_118)
    if L3_116 then
      L6_119 = L4_117 or ""
      L7_120 = L6_119
      L7_120 = L7_120 .. (L5_118 or "")
      if L7_120 ~= "" then
        return true, L7_120
      end
    end
    L6_119 = mp
    L6_119 = L6_119.GetParentProcInfo
    L7_120 = L1_114
    L6_119 = L6_119(L7_120)
    if not L6_119 then
      L7_120 = false
      return L7_120
    end
    L1_114 = L6_119.ppid
    L2_115 = L6_119.image_path
  end
  L3_116 = false
  return L3_116
end
isInstalledApp = L0_0
