if pe.get_versioninfo().OriginalFilename:lower() ~= "veeamp.exe" then
  return mp.CLEAN
end
return mp.INFECTED
