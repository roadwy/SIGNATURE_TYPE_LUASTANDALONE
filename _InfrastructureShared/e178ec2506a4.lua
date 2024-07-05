if pe.get_versioninfo().OriginalFilename == "rclone.exe" then
  return mp.INFECTED
end
return mp.CLEAN
