if pe.get_versioninfo() ~= nil and pe.get_versioninfo().CompanyName == "Alpha programming team" and pe.get_versioninfo().ProductName == "Dragon" then
  return mp.INFECTED
end
return mp.CLEAN
