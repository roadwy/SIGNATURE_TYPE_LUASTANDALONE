if mp.UfsGetMetadataBool("Lua:MsWordExt", true) ~= 0 or not mp.UfsGetMetadataBool("Lua:MsWordExt", true) then
  return mp.CLEAN
end
return mp.INFECTED
