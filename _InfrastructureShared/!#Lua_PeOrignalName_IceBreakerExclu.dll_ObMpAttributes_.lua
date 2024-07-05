if pe.get_versioninfo() ~= nil and pe.get_versioninfo().OriginalFilename ~= nil and string.lower(pe.get_versioninfo().OriginalFilename):find("icebreaker", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
