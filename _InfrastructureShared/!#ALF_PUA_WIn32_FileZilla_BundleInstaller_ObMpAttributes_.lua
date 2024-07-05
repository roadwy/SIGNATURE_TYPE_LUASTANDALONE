if mp.UfsGetMetadataBool("LUAUFS:NSISHasFileZillaCert", true) == 0 and mp.UfsGetMetadataBool("LUAUFS:NSISHasFileZillaCert", true) then
  if not mp.get_mpattribute("Lua:IsPUA") then
    mp.set_mpattribute("LUA:FileZilla_BundleInstaller:NonBundleCert")
    return mp.CLEAN
  end
  return mp.INFECTED
end
return mp.CLEAN
