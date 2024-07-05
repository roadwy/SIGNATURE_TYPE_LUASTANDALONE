local L0_0, L1_1
function L0_0(A0_2)
  local L1_3, L2_4
  L1_3 = {}
  L1_3.exe = 1
  L1_3.dll = 1
  L1_3.scr = 1
  L1_3.ocx = 1
  L1_3.com = 1
  L1_3.js = 2
  L1_3.vbs = 2
  L1_3.hta = 2
  L1_3.cmd = 2
  L1_3.jar = 2
  L1_3.jse = 2
  L1_3.pif = 2
  L1_3.vbe = 2
  L1_3.wsc = 2
  L1_3.wsf = 2
  L1_3.wsh = 2
  L1_3.bat = 2
  L2_4 = L1_3[A0_2]
  if L2_4 == 1 then
    return mp.get_mpattribute("BM_MZ_FILE")
  elseif L2_4 == 2 then
    return true
  end
  return false
end
IsSuspiciousFileExt = L0_0
function L0_0(A0_5)
  local L1_6
  L1_6 = {}
  L1_6.zip = true
  L1_6.cab = true
  L1_6.rar = true
  L1_6["7z"] = true
  if L1_6[A0_5] == nil then
    return false
  end
  return true
end
IsArchiveFileExt = L0_0
function L0_0()
  local L0_7
  L0_7 = mp
  L0_7 = L0_7.IOAVGetDownloadUrl
  L0_7 = L0_7()
  if L0_7 == nil or string.len(L0_7) < 15 then
    return false
  end
  if L0_7:match("https?://([%w%.-]+)/"):lower() == nil then
    return false
  end
  if L0_7:match("https?://([%w%.-]+)/"):lower():find("mail.google", 1, true) ~= nil or L0_7:match("https?://([%w%.-]+)/"):lower():find("mail-attachment", 1, true) ~= nil or L0_7:match("https?://([%w%.-]+)/"):lower():find("attachment.outlook.", 1, true) ~= nil or L0_7:match("https?://([%w%.-]+)/"):lower():find("dl-mail.ymail", 1, true) ~= nil or L0_7:match("https?://([%w%.-]+)/"):lower():find(".yahoomail.", 1, true) ~= nil then
    return true
  end
  return false
end
IsWebmailDownloadURL = L0_0
function L0_0()
  local L0_8, L1_9, L2_10, L3_11, L4_12, L5_13, L6_14, L7_15
  L0_8 = mp
  L0_8 = L0_8.IOAVGetDownloadUrl
  L0_8 = L0_8()
  if L0_8 ~= nil then
    L1_9 = #L0_8
  elseif L1_9 < 10 then
    L1_9 = mp
    L1_9 = L1_9.GetMOTWHostUrl
    L1_9 = L1_9()
    L0_8 = L1_9
    if L0_8 ~= nil then
      L1_9 = #L0_8
    elseif L1_9 < 10 then
      L1_9 = false
      return L1_9
    end
  end
  L2_10 = L0_8
  L1_9 = L0_8.match
  L1_9 = L1_9(L2_10, L3_11)
  if L1_9 then
    L2_10 = L1_9.lower
    L2_10 = L2_10(L3_11)
    L1_9 = L2_10
  end
  L2_10 = {
    L3_11,
    L4_12,
    L5_13,
    L6_14,
    L7_15
  }
  L6_14 = "outlook-sdf."
  L7_15 = "attachment"
  for L6_14, L7_15 in L3_11(L4_12) do
    if L1_9:find(L7_15, 1, true) then
      return true
    end
  end
  return L3_11
end
IsWebmailDownloadURLNew = L0_0
function L0_0(A0_16)
  local L1_17, L2_18, L3_19, L4_20, L5_21, L6_22, L7_23, L8_24
  L1_17 = {}
  L2_18 = {L3_19, L4_20}
  L3_19 = "\\temporary internet files\\content.outlook\\"
  L1_17["outlook.exe"] = L2_18
  L2_18 = string
  L2_18 = L2_18.lower
  L3_19 = mp
  L3_19 = L3_19.get_contextdata
  L8_24 = L3_19(L4_20)
  L2_18 = L2_18(L3_19, L4_20, L5_21, L6_22, L7_23, L8_24, L3_19(L4_20))
  L3_19 = L1_17[L2_18]
  if L3_19 == nil then
    return L4_20
  end
  for L7_23, L8_24 in L4_20(L5_21) do
    if A0_16:find(L8_24, 1, true) ~= nil then
      return true
    end
  end
  return L4_20
end
IsEmailCachePath = L0_0
