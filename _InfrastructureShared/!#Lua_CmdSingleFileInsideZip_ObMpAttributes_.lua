if mp.UfsGetMetadataBool("Lua:FileInZip", true) ~= 0 or not mp.UfsGetMetadataBool("Lua:FileInZip", true) then
  return mp.CLEAN
end
if mp.UfsGetMetadataBool("Lua:SingleFileInZip", true) ~= 0 or not mp.UfsGetMetadataBool("Lua:SingleFileInZip", true) then
  return mp.CLEAN
end
return mp.INFECTED
