if not peattributes.isexe then
  return mp.CLEAN
end
if pe.get_versioninfo() == nil then
  return mp.CLEAN
end
if string.find(pe.get_versioninfo().ProductName, "MacaulyMoDzs Private Skype Tool", 1, true) ~= nil or string.find(pe.get_versioninfo().ProductName, "MacaulyMoDzs_Final_Skype_Tool", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
