if mp.get_mpattribute("Lua:BINExt") and mp.get_mpattribute("LUA:FileSizeLE50KB.B") then
  return mp.INFECTED
end
return mp.CLEAN
