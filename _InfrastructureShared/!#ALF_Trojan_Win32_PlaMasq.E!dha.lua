if pe.get_versioninfo() ~= nil and pe.get_versioninfo().CompanyName ~= nil and pe.get_versioninfo().CompanyName:find("Mizollo", 1, true) == 1 then
  return mp.INFECTED
end
return mp.CLEAN
