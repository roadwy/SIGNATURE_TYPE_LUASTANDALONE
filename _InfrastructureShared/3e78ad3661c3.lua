if mp.getfilesize() ~= nil and mp.getfilesize() > 2048000 then
  return mp.CLEAN
end
if pe.get_versioninfo() ~= nil and pe.get_versioninfo().OriginalFilename ~= nil and pe.get_versioninfo().OriginalFilename:lower() == "sync.exe" and pe.get_versioninfo().InternalName ~= nil and pe.get_versioninfo().InternalName:lower() == "sync.exe" and pe.get_versioninfo().ProductVersion ~= nil and pe.get_versioninfo().ProductVersion:lower() == "0.0.0.0" then
  return mp.INFECTED
end
return mp.CLEAN
