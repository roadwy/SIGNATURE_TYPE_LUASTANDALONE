if mp.get_mpattribute("Lua:FnameAttr!ffmpeg.dll") then
  return mp.INFECTED
end
return mp.CLEAN
