local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.bitor(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
if L0_0 == nil or L0_0 == "" then
  return mp.CLEAN
end
if L0_0:find("\\inetcache\\content.outlook\\", 1, true) ~= nil and string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME)) == "outlook.exe" then
  return mp.INFECTED
end
return mp.CLEAN
