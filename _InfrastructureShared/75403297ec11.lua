if pe.get_versioninfo().OriginalFilename:lower() ~= "sharpshares.exe" then
  return mp.CLEAN
end
return mp.INFECTED
