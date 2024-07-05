if mp.UfsGetMetadataBool("Lua:ExcelExt", true) ~= 0 or not mp.UfsGetMetadataBool("Lua:ExcelExt", true) then
  return mp.CLEAN
end
return mp.INFECTED
