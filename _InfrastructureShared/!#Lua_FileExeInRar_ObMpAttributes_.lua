if mp.UfsGetMetadataBool("Lua:FileInRar", true) ~= 0 or not mp.UfsGetMetadataBool("Lua:FileInRar", true) then
  return mp.CLEAN
end
return mp.INFECTED
