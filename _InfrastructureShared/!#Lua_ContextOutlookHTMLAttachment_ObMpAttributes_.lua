local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH))
if L0_0:find("\\appdata\\local\\microsoft\\windows\\inetcache\\content.outlook\\", 1, true) ~= nil and string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME)) == "outlook.exe" then
  return mp.INFECTED
end
return mp.CLEAN
