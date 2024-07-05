if mp.get_contextdata(mp.CONTEXT_DATA_HAS_MOTW_ADS) == true and mp.GetMOTWZone() >= 3 then
  mp.UfsSetMetadataBool("LUA:ZipRar7ZWithMotw", true)
  mp.set_mpattribute("//LUA:ZipRar7ZWithMotw.A")
  return mp.INFECTED
end
return mp.CLEAN
