if pe.get_versioninfo() ~= nil and (pe.get_versioninfo().ProductName ~= nil and pe.get_versioninfo().ProductName:find("C5.Client", 1, true) == 1 or pe.get_versioninfo().FileDescription ~= nil and pe.get_versioninfo().FileDescription:find("C5.Client", 1, true) == 1) then
  return mp.INFECTED
end
return mp.CLEAN
