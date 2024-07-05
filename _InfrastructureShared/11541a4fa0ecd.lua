if pe.get_versioninfo() == nil then
  return mp.CLEAN
end
if string.lower(pe.get_versioninfo().CompanyName) == "microsoft corporation" then
  return mp.INFECTED
end
if string.lower(pe.get_versioninfo().CompanyName) == "adobe corporation" then
  return mp.INFECTED
end
if string.lower(pe.get_versioninfo().CompanyName) == "pfu limited" then
  return mp.INFECTED
end
if string.lower(pe.get_versioninfo().CompanyName) == " scriptlogic corporation" then
  return mp.INFECTED
end
return mp.CLEAN
