if peattributes.no_security and peattributes.ismsil and pe.get_versioninfo().CompanyName == "" then
  return mp.INFECTED
end
return mp.CLEAN
