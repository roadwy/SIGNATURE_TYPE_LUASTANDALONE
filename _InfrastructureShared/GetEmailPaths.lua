local L0_0, L1_1
function L0_0(A0_2)
  local L1_3
  if A0_2 == nil or A0_2 == "" then
    L1_3 = nil
    return L1_3
  end
  L1_3 = {}
  L1_3["eudora.exe"] = {
    "%program_files%\\eudora\\attach\\",
    "%program_files%\\eudora data\\attach\\",
    "%program_files%\\qualcomm\\eudora\\attach\\",
    "appdata\\roaming\\qualcomm\\eudora\\attach\\",
    "appdata\\roaming\\qualcomm\\eudora\\attachments\\"
  }
  L1_3["imapp.exe"] = {
    "message store\\attachments\\",
    "message store\\messages\\"
  }
  L1_3["incmail.exe"] = {
    "microsoft\\windows\\inetcache\\ie\\",
    "message store\\attachments\\"
  }
  L1_3["mailbird.exe"] = {
    "appdata\\local\\mailbird\\store\\a\\",
    "appdata\\local\\mailbird\\attachments\\"
  }
  L1_3["msimn.exe"] = {
    "microsoft\\windows\\inetcache\\ie\\"
  }
  L1_3["operamail.exe"] = {
    "appdata\\local\\opera mail\\mail\\cache\\",
    "appdata\\local\\opera mail\\opera mail\\cache\\",
    "appdata\\local\\opera mail\\opera mail\\store\\"
  }
  L1_3["outlook.exe"] = {
    "%internet_cache%\\content.outlook\\",
    "microsoft\\windows\\temporary internet files\\content.outlook\\",
    "microsoft\\windows\\inetcache\\ie\\",
    "microsoft\\windows\\inetcache\\content.outlook\\"
  }
  L1_3["waol.exe"] = {
    "microsoft\\windows\\temporary internet files\\content.ie5\\",
    "microsoft\\windows\\inetcache\\ie\\"
  }
  L1_3["wlmail.exe"] = {
    "%internet_cache%\\content.ie5\\",
    "%internet_cache%\\ie\\",
    "microsoft\\windows\\temporary internet files\\content.ie5\\",
    "microsoft\\windows\\inetcache\\ie\\",
    "\\downloads"
  }
  L1_3["hxmail.exe"] = {
    "appdata\\local\\packages\\microsoft.windowscommunicationsapps"
  }
  L1_3["hxtsr.exe"] = {
    "appdata\\local\\packages\\microsoft.windowscommunicationsapps"
  }
  L1_3["runtimebroker.exe"] = {
    "appdata\\local\\packages\\microsoft.windowscommunicationsapps_8wekyb3d8bbwe\\localstate\\files\\s0\\"
  }
  return L1_3[A0_2:lower()]
end
getCachePaths = L0_0
function L0_0(A0_4)
  local L1_5, L2_6, L3_7, L4_8
  L1_5 = A0_4 or L1_5(L2_6)
  if L1_5 == nil then
    return
  end
  L2_6 = string
  L2_6 = L2_6.lower
  L3_7 = L1_5
  L2_6 = L2_6(L3_7)
  L1_5 = L2_6
  if L1_5 == "outlook.exe" or L1_5 == "olk.exe" then
    L2_6 = mp
    L2_6 = L2_6.set_mpattribute
    L3_7 = "BM_OutlookProcessOlk"
    L2_6(L3_7)
    L2_6 = true
    return L2_6
  elseif L1_5 == "msedgewebview2.exe" then
    L2_6 = mp
    L2_6 = L2_6.get_contextdata
    L3_7 = mp
    L3_7 = L3_7.CONTEXT_DATA_PROCESS_PPID
    L2_6 = L2_6(L3_7)
    if L2_6 == nil then
      L3_7 = false
      return L3_7
    end
    L3_7 = string
    L3_7 = L3_7.lower
    L4_8 = mp
    L4_8 = L4_8.GetProcessCommandLine
    L4_8 = L4_8(L2_6)
    L3_7 = L3_7(L4_8, L4_8(L2_6))
    if L3_7 ~= nil then
      L4_8 = #L3_7
    elseif L4_8 <= 25 then
      L4_8 = false
      return L4_8
    end
    L4_8 = string
    L4_8 = L4_8.lower
    L4_8 = L4_8(string.gsub(L3_7, " ", ""))
    if string.match(L4_8, "%-%-webview%-exe%-name=olk%.exe") then
      mp.set_mpattribute("BM_OutlookProcessWebView")
      return true
    end
  end
  L2_6 = false
  return L2_6
end
isOutlookProcess = L0_0
function L0_0(A0_9)
  local L1_10
  if A0_9 == nil then
    L1_10 = false
    return L1_10
  end
  L1_10 = string
  L1_10 = L1_10.len
  L1_10 = L1_10(A0_9)
  if L1_10 > 34 then
    L1_10 = A0_9.find
    L1_10 = L1_10(A0_9, "_task=mail&_action=get&_mbox=inbox", 1, true)
    if L1_10 ~= nil then
      L1_10 = true
      return L1_10
    end
  end
  L1_10 = A0_9.match
  L1_10 = L1_10(A0_9, "https?://([%w%.-]+)")
  if L1_10 == nil then
    return false
  end
  L1_10 = L1_10:lower()
  if string.len(L1_10) > 11 and L1_10:find("mail.google", 1, true) ~= nil or string.len(L1_10) > 16 and L1_10:find("mail-attachment", 1, true) ~= nil or string.len(L1_10) > 19 and L1_10:find("attachment.outlook.", 1, true) ~= nil or string.len(L1_10) > 13 and L1_10:find("dl-mail.ymail", 1, true) ~= nil or string.len(L1_10) > 18 and L1_10:find("attachments.office", 1, true) ~= nil or string.len(L1_10) > 11 and L1_10:find(".yahoomail.", 1, true) ~= nil or string.len(L1_10) > 16 and L1_10:find(".outlook.office.", 1, true) ~= nil or string.len(L1_10) > 23 and L1_10:find("docs.googleusercontent.", 1, true) ~= nil then
    return true
  end
  return false
end
IsWebmailDownloadURL = L0_0
function L0_0(A0_11)
  local L1_12
  if A0_11 == nil then
    L1_12 = false
    return L1_12
  end
  L1_12 = A0_11.match
  L1_12 = L1_12(A0_11, "https?://([%w%.-]+)")
  if L1_12 == nil then
    return false
  end
  L1_12 = L1_12:lower()
  if string.len(L1_12) > 25 and L1_12:find("download.spaces.hightail.", 1, true) ~= nil or string.len(L1_12) > 20 and L1_12:find("download.wetransfer.", 1, true) ~= nil or string.len(L1_12) > 22 and L1_12:find("dl.dropboxusercontent.", 1, true) ~= nil or string.len(L1_12) > 14 and L1_12:find("onedrive.live.", 1, true) ~= nil then
    return true
  end
  return false
end
IsCommonFileSharingURL = L0_0
