if mp.UfsGetMetadataBool("Lua:FileInZip", true) ~= 0 or not mp.UfsGetMetadataBool("Lua:FileInZip", true) then
  return mp.CLEAN
end
if mp.get_contextdata(mp.CONTEXT_DATA_HAS_MOTW_ADS) == true and mp.GetMOTWZone() >= 3 then
  return mp.INFECTED
end
return mp.CLEAN
