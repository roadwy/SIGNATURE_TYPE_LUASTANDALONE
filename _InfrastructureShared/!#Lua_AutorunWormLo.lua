if mp.GetResmgrBasePlugin() ~= "AutorunInf" then
  return mp.CLEAN
end
if not mp.get_mpattribute("Win32/AutoIt") and not mp.get_mpattribute("Win32/AutoIt_HSTR1") and not mp.get_mpattribute("Win32/AutoIt_HSTR2") and peattributes.isvbnative ~= true and peattributes.isvbpcode ~= true then
  return mp.CLEAN
end
return mp.INFECTED
