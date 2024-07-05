if pe.get_versioninfo().OriginalFilename ~= nil and pe.get_versioninfo().OriginalFilename:lower() == "schedctl.dll" then
  return mp.INFECTED
end
return mp.CLEAN
