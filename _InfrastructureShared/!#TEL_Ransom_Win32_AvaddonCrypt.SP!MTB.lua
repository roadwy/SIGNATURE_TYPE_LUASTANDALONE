if peattributes.hasappendeddata == false or peattributes.x86_image == false or peattributes.isexe == false or peattributes.no_security == true then
  return mp.CLEAN
end
if peattributes.isdriver == true then
  return mp.CLEAN
end
if peattributes.packed == true then
  return mp.CLEAN
end
if peattributes.packersigmatched == true then
  return mp.CLEAN
end
if mp.getfilesize() < 1433600 or mp.getfilesize() > 1843200 then
  return mp.CLEAN
end
if pe.get_versioninfo() == nil then
  return mp.CLEAN
end
if pe.get_versioninfo().FileVersion == nil then
  return mp.CLEAN
end
if pe.get_versioninfo().FileDescription ~= "AVG Virus scanner" then
  return mp.CLEAN
end
if pe.get_versioninfo().InternalName ~= "aswQuick.exe" then
  return mp.CLEAN
end
if pe.get_versioninfo().LegalCopyright ~= "Copyright (C) 2014 AVG Technologies CZ, s.r.o." then
  return mp.CLEAN
end
return mp.INFECTED
