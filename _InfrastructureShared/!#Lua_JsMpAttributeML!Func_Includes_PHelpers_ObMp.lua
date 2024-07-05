local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 <= 1000 or L0_0 > 1000000 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.getfilename
L2_2 = mp
L2_2 = L2_2.bitor
L2_2 = L2_2(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE)
L2_2 = L1_1(L2_2, L2_2(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE))
if string.sub(L2_2, -3) ~= ".js" and string.sub(L2_2, -4) ~= ".jse" then
  return mp.CLEAN
end
if true == IsInternetCache(L1_1) or true == IsLowConfNPath(L1_1) then
  return mp.CLEAN
end
if L1_1:find("\\program files\\", 1, true) or L1_1:find("\\node_modules\\", 1, true) or L1_1:find("\\crx_install\\", 1, true) or L1_1:find("\\resources\\app\\shared\\", 1, true) or L1_1:find("\\user data\\default\\extensions\\", 1, true) or L1_1:find("\\clientaccess\\owa\\prem\\", 1, true) or L1_1:find(":\\windows\\", 1, true) or L1_1:find(":\\program files (x86)\\", 1, true) or L1_1:find("\\google\\chrome\\user data\\default\\extensions\\", 1, true) or L1_1:find("\\google\\chrome\\user data\\profile", 1, true) or L1_1:find("\\device\\harddiskvolume", 1, true) or L1_1:find(":\\inetpub\\", 1, true) or L1_1:find("\\netlogon\\", 1, true) or L1_1:find("\\device\\vhdharddisk", 1, true) or L1_1:find(":\\programdata\\microsoft\\grouppolicy\\users\\", 1, true) or L1_1:find("\\mozilla\\firefox\\profiles\\", 1, true) or L1_1:find("\\programdata\\lenovo\\userguide", 1, true) or L1_1:find("\\appdata\\roaming\\aida\\", 1, true) or L1_1:find("\\newos\\windows\\system32\\", 1, true) or L1_1:find("\\sentinel\\cache\\", 1, true) or L1_1:find("\\backup\\", 1, true) then
  return mp.CLEAN
end
if L2_2:find("login_settings_gpc30.vbs", 1, true) or L1_1:find("toc13.js", 1, true) or L1_1:find("mcafeecertinstall_slt.vbs", 1, true) then
  return mp.CLEAN
end
mp.set_mpattribute("Lua:JsMpAttributeML")
return mp.CLEAN
