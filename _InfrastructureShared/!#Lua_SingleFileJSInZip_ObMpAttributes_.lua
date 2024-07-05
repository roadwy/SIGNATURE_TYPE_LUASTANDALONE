if mp.UfsGetMetadataBool("Lua:SingleFileInZip", true) ~= 0 or not mp.UfsGetMetadataBool("Lua:SingleFileInZip", true) then
  if mp.UfsGetMetadataBool("Lua:FileInZip", true) == 0 and mp.UfsGetMetadataBool("Lua:FileInZip", true) then
    mp.set_mpattribute("Lua:FileJSInZip")
  end
  return mp.CLEAN
end
return mp.INFECTED
