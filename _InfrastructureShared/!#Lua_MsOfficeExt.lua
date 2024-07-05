if mp.get_mpattribute("Lua:MsWordExt") then
  mp.UfsSetMetadataBool("Lua:MsWordExt", true)
  return mp.INFECTED
elseif mp.get_mpattribute("Lua:MsExcelExt") then
  mp.UfsSetMetadataBool("Lua:MsExcelExt", true)
  return mp.INFECTED
elseif mp.get_mpattribute("Lua:MsPowerpntExt") then
  mp.UfsSetMetadataBool("Lua:MsPowerpntExt", true)
  return mp.INFECTED
end
return mp.CLEAN
