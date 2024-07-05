if mp.UfsGetMetadataBool("Lua:SingleFileInRar", true) ~= 0 or not mp.UfsGetMetadataBool("Lua:SingleFileInRar", true) then
  return mp.CLEAN
end
if mp.get_contextdata(mp.CONTEXT_DATA_HAS_MOTW_ADS) == true and mp.GetMOTWZone() >= 3 then
  mp.set_mpattribute("Lua:CmdSingleFileInsideRarWithMotw")
end
return mp.INFECTED
