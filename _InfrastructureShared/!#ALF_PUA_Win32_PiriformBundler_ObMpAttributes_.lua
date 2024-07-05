if mp.UfsGetMetadataBool("LUAUFS:NSISHasPiriformCert", true) == 0 and mp.UfsGetMetadataBool("LUAUFS:NSISHasPiriformCert", true) then
  if not mp.get_mpattribute("Lua:IsPUA") then
    mp.set_mpattribute("LUA:PiriformAvastBundler")
    return mp.CLEAN
  end
  return mp.INFECTED
end
return mp.CLEAN
