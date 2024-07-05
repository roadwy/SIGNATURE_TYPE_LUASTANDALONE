if pe.get_versioninfo().OriginalFilename == "winscp.exe" then
  return mp.INFECTED
end
return mp.CLEAN
