if mp.UfsGetMetadataBool("Lua:FileInZip", true) ~= 0 or not mp.UfsGetMetadataBool("Lua:FileInZip", true) then
  return mp.CLEAN
end
if mp.IOAVGetDownloadUrl() ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
