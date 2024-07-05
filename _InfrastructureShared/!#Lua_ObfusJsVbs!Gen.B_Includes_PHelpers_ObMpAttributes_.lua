local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONOPEN
if L0_0 ~= L1_1 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 <= 300 or L0_0 > 500000 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = MpCommon
L1_1 = L1_1.PathToWin32Path
L1_1 = L1_1(mp.getfilename(mp.bitor(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE)))
if L1_1 == nil or string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME)) == nil then
  return mp.CLEAN
end
if true == IsInternetCache(L1_1) or true == IsLowConfNPath(L1_1) then
  return mp.CLEAN
end
if L1_1:find("\\program files\\", 1, true) or L1_1:find("\\clientaccess\\owa\\prem\\", 1, true) or L1_1:find(":\\windows\\", 1, true) or L1_1:find(":\\program files (x86)\\", 1, true) or L1_1:find("\\google\\chrome\\user data\\default\\extensions\\", 1, true) or L1_1:find("\\google\\chrome\\user data\\profile", 1, true) or L1_1:find("\\device\\harddiskvolume", 1, true) or L1_1:find(":\\inetpub\\", 1, true) or L1_1:find("\\netlogon\\", 1, true) or L1_1:find(":\\programdata\\microsoft\\grouppolicy\\users\\", 1, true) or L1_1:find("\\mozilla\\firefox\\profiles\\", 1, true) or L1_1:find("\\programdata\\lenovo\\userguide", 1, true) or L1_1:find("\\google\\chrome\\user data\\default\\extensions", 1, true) or L1_1:find("\\appdata\\roaming\\aida\\", 1, true) then
  return mp.CLEAN
end
if string.find(L1_1, "^\\\\[^\\]+\\") then
  return mp.CLEAN
end
if string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME)):find("support_menu.vbs", 1, true) or L1_1:find("bku_plus_connect.vbs", 1, true) or L1_1:find("replaceagent.vbs", 1, true) or L1_1:find("install.vbs", 1, true) or L1_1:find("setdefaultappbyprotocol.vbs", 1, true) or L1_1:find("gis-admin_cfg_", 1, true) or L1_1:find("mk_inventory.vbs", 1, true) then
  return mp.CLEAN
end
if mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME):lower() ~= nil then
  if mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME):lower():match("[^\\]+$") ~= nil and ({
    ["wscript.exe"] = "",
    ["cscript.exe"] = "",
    ["explorer.exe"] = ""
  })[mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME):lower():match("[^\\]+$")] then
    return mp.INFECTED
  end
end
return mp.CLEAN
