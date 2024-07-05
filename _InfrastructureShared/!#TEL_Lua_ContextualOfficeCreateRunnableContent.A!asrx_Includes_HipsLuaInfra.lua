local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
if L0_0 ~= L1_1 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_NEWLYCREATEDHINT
L0_0 = L0_0(L1_1)
if L0_0 ~= true then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = GetCtxOfficeProc
L0_0 = L0_0()
if L0_0 ~= "productivity2" then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = {}
L0_0[".bat"] = true
L0_0[".cmd"] = true
L0_0[".com"] = true
L0_0[".dll"] = true
L0_0[".exe"] = true
L0_0[".hta"] = true
L0_0[".jar"] = true
L0_0[".js"] = true
L0_0[".jse"] = true
L0_0[".lnk"] = true
L0_0[".ocx"] = true
L0_0[".pif"] = true
L0_0[".ps1"] = true
L0_0[".psc1"] = true
L0_0[".scr"] = true
L0_0[".sys"] = true
L0_0[".vbe"] = true
L0_0[".vbs"] = true
L0_0[".wsc"] = true
L0_0[".wsf"] = true
L0_0[".wsh"] = true
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_FILENAME
L1_1 = L1_1(L2_2)
if L1_1 == nil then
  L2_2 = ""
else
  L2_2 = L2_2 or L1_1
end
L3_3 = L2_2
L2_2 = L2_2.lower
L2_2 = L2_2(L3_3)
L1_1 = L2_2
L3_3 = L1_1
L2_2 = L1_1.sub
L4_4 = -5
L2_2 = L2_2(L3_3, L4_4)
L3_3 = L2_2
L2_2 = L2_2.match
L4_4 = "(%.%w+)$"
L2_2 = L2_2(L3_3, L4_4)
if L2_2 == nil then
  L3_3 = ""
  L2_2 = L3_3 or L2_2
end
L3_3 = L0_0[L2_2]
if L3_3 ~= true then
  L3_3 = mp
  L3_3 = L3_3.getfilename
  L3_3 = L3_3()
  L4_4 = MpCommon
  L4_4 = L4_4.GetPersistContext
  L5_5 = L3_3
  L4_4 = L4_4(L5_5)
  if L4_4 then
    L5_5 = table
    L5_5 = L5_5.insert
    L6_6 = L4_4
    L7_7 = "contextualofficecreaterunnablecontent"
    L5_5(L6_6, L7_7)
  else
    L5_5 = {L6_6}
    L6_6 = "contextualofficecreaterunnablecontent"
    L4_4 = L5_5
  end
  L5_5 = MpCommon
  L5_5 = L5_5.SetPersistContext
  L6_6 = L3_3
  L7_7 = L4_4
  L5_5(L6_6, L7_7, 0)
  L5_5 = mp
  L5_5 = L5_5.set_mpattribute
  L6_6 = "MpDisableCaching"
  L5_5(L6_6)
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L3_3 = MpCommon
L3_3 = L3_3.PathToWin32Path
L4_4 = mp
L4_4 = L4_4.get_contextdata
L5_5 = mp
L5_5 = L5_5.CONTEXT_DATA_FILEPATH
L7_7 = L4_4(L5_5)
L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7, L4_4(L5_5))
if L3_3 == nil then
  L4_4 = ""
else
  L4_4 = L4_4 or L3_3
end
L5_5 = L4_4
L4_4 = L4_4.lower
L4_4 = L4_4(L5_5)
L3_3 = L4_4
L4_4 = mp
L4_4 = L4_4.ContextualExpandEnvironmentVariables
L5_5 = "%appdata%"
L4_4 = L4_4(L5_5)
if L4_4 == nil then
  L5_5 = ""
else
  L5_5 = L5_5 or L4_4
end
L6_6 = L5_5
L5_5 = L5_5.lower
L5_5 = L5_5(L6_6)
L4_4 = L5_5
L5_5 = mp
L5_5 = L5_5.ContextualExpandEnvironmentVariables
L6_6 = "%localappdata%"
L5_5 = L5_5(L6_6)
if L5_5 == nil then
  L6_6 = ""
else
  L6_6 = L6_6 or L5_5
end
L7_7 = L6_6
L6_6 = L6_6.lower
L6_6 = L6_6(L7_7)
L5_5 = L6_6
L6_6 = MpCommon
L6_6 = L6_6.ExpandEnvironmentVariables
L7_7 = "%systemdrive%"
L6_6 = L6_6(L7_7)
if L6_6 == nil then
  L7_7 = ""
else
  L7_7 = L7_7 or L6_6
end
L7_7 = L7_7.lower
L7_7 = L7_7(L7_7)
L6_6 = L7_7
L7_7 = MpCommon
L7_7 = L7_7.ExpandEnvironmentVariables
L7_7 = L7_7("%systemroot%")
L7_7 = (L7_7 == nil and "" or L7_7):lower()
if L2_2 == ".lnk" then
  if L3_3:find(L4_4 .. "\\microsoft\\office\\", 1, true) ~= nil then
    return mp.CLEAN
  end
  if L3_3:find(L4_4 .. "\\microsoft\\excel\\", 1, true) ~= nil then
    return mp.CLEAN
  end
  if L3_3:find(L4_4 .. "\\microsoft\\onenote\\", 1, true) ~= nil then
    return mp.CLEAN
  end
  if L3_3:find(L4_4 .. "\\microsoft\\outlook\\", 1, true) ~= nil then
    return mp.CLEAN
  end
  if L3_3:find(L4_4 .. "\\microsoft\\powerpoint\\", 1, true) ~= nil then
    return mp.CLEAN
  end
  if L3_3:find(L4_4 .. "\\microsoft\\word\\", 1, true) ~= nil then
    return mp.CLEAN
  end
  if L3_3:find(L4_4 .. "\\microsoft\\internet explorer\\quick launch", 1, true) ~= nil then
    return mp.CLEAN
  end
  if L3_3 == L4_4 .. "\\microsoft\\windows\\start menu\\programs\\startup" and L1_1 == "send to onenote.lnk" then
    return mp.CLEAN
  end
  if L3_3:find(L5_5 .. "\\invincea\\enterprise\\", 1, true) ~= nil then
    return mp.CLEAN
  end
  if L3_3:find(L6_6 .. "\\appsensevirtual\\", 1, true) ~= nil then
    return mp.CLEAN
  end
  if L3_3:find(L7_7 .. "\\syswow64\\config\\systemprofile\\appdata\\roaming\\microsoft\\office\\", 1, true) ~= nil then
    return mp.CLEAN
  end
elseif L2_2 == ".dll" then
  if L3_3:find(L5_5 .. "\\assembly\\tmp\\", 1, true) ~= nil then
    return mp.CLEAN
  end
  if L3_3 == L4_4 .. "\\microsoft\\msoidentitycrl\\production" then
    return mp.CLEAN
  end
elseif L2_2 == ".js" then
  if L3_3:find(L5_5 .. "\\microsoft\\windows\\inetcache\\ie\\", 1, true) ~= nil then
    return mp.CLEAN
  end
  if L3_3:find(L5_5 .. "\\microsoft\\windows\\temporary internet files\\content.ie5\\", 1, true) ~= nil then
    return mp.CLEAN
  end
elseif L2_2 == ".com" and L3_3 == L5_5 .. "\\microsoft\\forms" then
  return mp.CLEAN
end
return mp.INFECTED
