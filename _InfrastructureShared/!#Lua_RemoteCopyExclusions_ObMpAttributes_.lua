local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.bitor
L2_2 = mp
L2_2 = L2_2.bitor
L3_3 = mp
L3_3 = L3_3.FILEPATH_QUERY_FNAME
L2_2 = L2_2(L3_3, mp.FILEPATH_QUERY_PATH)
L3_3 = mp
L3_3 = L3_3.FILEPATH_QUERY_LOWERCASE
L3_3 = L1_1(L2_2, L3_3)
L1_1 = L0_0(L1_1, L2_2, L3_3, L1_1(L2_2, L3_3))
L2_2 = mp
L2_2 = L2_2.getfilesize
L2_2 = L2_2()
L3_3 = L1_1.sub
L3_3 = L3_3(L1_1, -3)
if ("tmf|emf|wmf|ost|spl|off|bak|m4a|mp4|mp3|bmp|avi|kgx|idx|etl|log|ico|ttf|qml|bak|dat|"):find(L3_3, 1, true) then
  return mp.INFECTED
end
if mp.get_mpattribute("Lua:PeInExcludedOsPath") then
  return mp.INFECTED
end
if mp.get_mpattribute("Lua:TTExclusion") then
  return mp.INFECTED
end
if L2_2 > 268435456 then
  return mp.INFECTED
end
if ("cachedata|moduleanalysiscache|ntbtlog.txt|remcomsvc.exe|install_fsprocsvc.exe|remoteauditservice.exe|fsprocsvc.exe|citrix workspace.lnk|user work log.lnk|oa user work log.lnk|.ses|local state|"):find(L1_1) then
  return mp.INFECTED
end
if ("idc_database.sqlite-journal|startupprofiledata-noninteractive|default.vg1|isbew64.exe|dismhost.exe|mighost.exe|qdaw3v01.exe|logmeinrescue.exe|isagenix.domainobjects.resources.dll|microsoft.win32.taskscheduler.resources.dll"):find(L1_1) then
  return mp.INFECTED
end
if L1_1:find("av%-%d%d%d?%d?%d?-%d%d?%d?%d?-%d%d?%d?%d?") or L1_1:match("^%.pyd") or L1_1:match("pdq.+%.exe") then
  return mp.INFECTED
end
if L1_1 == "moduleanalysiscache" or L1_1:find("powershell_analysiscacheentry", 1, true) or L1_1:find("psscriptpolicytest", 1, true) then
  return mp.INFECTED
end
if L1_1:find("citrix workspace", 1, true) or L1_1:find("user work log", 1, true) then
  return mp.INFECTED
end
if L1_1:match("%.store_?n?e?w?$") or L1_1:match("wk.+%.---$") then
  return mp.INFECTED
end
if L1_1:match("zam.+%.trace$") then
  return mp.INFECTED
end
if L0_0:find("windows\\ccm", 1, true) then
  return mp.INFECTED
end
if L0_0:find("windows.~bt\\newos\\", 1, true) then
  return mp.INFECTED
end
if L0_0:match("\\appdata\\.+\\google\\chrome\\user data\\") then
  return mp.INFECTED
end
if L0_0:match("\\appdata\\.+\\microsoft\\edge\\user data\\") then
  return mp.INFECTED
end
if L0_0:find("\\~bromium\\", 1, true) then
  return mp.INFECTED
end
if L0_0:find("\\service worker\\cachestorage\\", 1, true) then
  return mp.INFECTED
end
if L0_0:find("\\appdata\\", 1, true) and (L2_2 < 54 or L2_2 > 1048575) then
  return mp.INFECTED
end
if L0_0:find("\\riskserver\\riskserver\\", 1, true) then
  return mp.INFECTED
end
if L0_0:find("\\production-qa6\\webservices\\", 1, true) then
  return mp.INFECTED
end
if L0_0:find("\\production-qa4\\webservices\\", 1, true) then
  return mp.INFECTED
end
if L0_0:find("\\pdqinventory-scanner\\", 1, true) then
  return mp.INFECTED
end
if L0_0:find("\\pdqdeployrunner\\", 1, true) then
  return mp.INFECTED
end
if L0_0:find("\\datacaptor interface server\\", 1, true) then
  return mp.INFECTED
end
if L0_0:find("\\nsrconsole\\", 1, true) then
  return mp.INFECTED
end
if L0_0:find("\\technicalsolutions\\riskserver\\", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
