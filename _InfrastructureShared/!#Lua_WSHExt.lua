if mp.get_mpattribute("Lua:JSExt") or mp.get_mpattribute("Lua:VBSExt") or mp.get_mpattribute("Lua:WSFExt") then
  mp.UfsSetMetadataBool("Lua:WSHExt", true)
  return mp.INFECTED
elseif mp.UfsGetMetadataBool("Lua:WSHExt", true) == 0 and mp.UfsGetMetadataBool("Lua:WSHExt", true) then
  return mp.INFECTED
end
return mp.CLEAN
