if mp.getfilesize() <= 300 or mp.getfilesize() > 100000 then
  return mp.CLEAN
end
if mp.getfilename(mp.bitor(mp.FILEPATH_QUERY_PATH, mp.FILEPATH_QUERY_LOWERCASE)) == nil then
  return mp.CLEAN
end
if mp.getfilename(mp.bitor(mp.FILEPATH_QUERY_PATH, mp.FILEPATH_QUERY_LOWERCASE)):find("\\program files\\", 1, true) or mp.getfilename(mp.bitor(mp.FILEPATH_QUERY_PATH, mp.FILEPATH_QUERY_LOWERCASE)):find("\\clientaccess\\owa\\prem\\", 1, true) or mp.getfilename(mp.bitor(mp.FILEPATH_QUERY_PATH, mp.FILEPATH_QUERY_LOWERCASE)):find(":\\windows\\", 1, true) or mp.getfilename(mp.bitor(mp.FILEPATH_QUERY_PATH, mp.FILEPATH_QUERY_LOWERCASE)):find(":\\program files (x86)\\", 1, true) or mp.getfilename(mp.bitor(mp.FILEPATH_QUERY_PATH, mp.FILEPATH_QUERY_LOWERCASE)):find("\\google\\chrome\\user data\\default\\extensions\\", 1, true) or mp.getfilename(mp.bitor(mp.FILEPATH_QUERY_PATH, mp.FILEPATH_QUERY_LOWERCASE)):find("\\google\\chrome\\user data\\profile", 1, true) or mp.getfilename(mp.bitor(mp.FILEPATH_QUERY_PATH, mp.FILEPATH_QUERY_LOWERCASE)):find("\\device\\harddiskvolume", 1, true) or mp.getfilename(mp.bitor(mp.FILEPATH_QUERY_PATH, mp.FILEPATH_QUERY_LOWERCASE)):find(":\\inetpub\\", 1, true) or mp.getfilename(mp.bitor(mp.FILEPATH_QUERY_PATH, mp.FILEPATH_QUERY_LOWERCASE)):find("\\netlogon\\", 1, true) or mp.getfilename(mp.bitor(mp.FILEPATH_QUERY_PATH, mp.FILEPATH_QUERY_LOWERCASE)):find("\\device\\vhdharddisk", 1, true) or mp.getfilename(mp.bitor(mp.FILEPATH_QUERY_PATH, mp.FILEPATH_QUERY_LOWERCASE)):find(":\\programdata\\microsoft\\grouppolicy\\users\\", 1, true) or mp.getfilename(mp.bitor(mp.FILEPATH_QUERY_PATH, mp.FILEPATH_QUERY_LOWERCASE)):find("\\backup\\", 1, true) then
  return mp.CLEAN
end
mp.set_mpattribute("Lua:JSExcelSiorML.Throttle")
return mp.CLEAN
