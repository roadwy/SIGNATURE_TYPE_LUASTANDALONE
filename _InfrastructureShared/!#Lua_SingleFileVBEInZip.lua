if not mp.get_mpattribute("PACKED_WITH:(EncScript)") then
  return mp.CLEAN
end
if mp.UfsGetMetadataBool("Lua:SingleFileInZip", true) ~= 0 or not mp.UfsGetMetadataBool("Lua:SingleFileInZip", true) then
  return mp.CLEAN
end
return mp.INFECTED
