if pe.get_versioninfo() ~= nil and pe.get_versioninfo().ProductName == "Amnesia Haze" then
  return mp.INFECTED
end
return mp.CLEAN
