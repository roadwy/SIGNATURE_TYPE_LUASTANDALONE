if mp.UfsGetMetadataBool("Lua:SingleFileIn7Z!ufs", true) ~= 0 or not mp.UfsGetMetadataBool("Lua:SingleFileIn7Z!ufs", true) then
  return mp.CLEAN
end
if mp.get_contextdata(mp.CONTEXT_DATA_HAS_MOTW_ADS) == true and mp.GetMOTWZone() >= 3 then
  mp.set_mpattribute("Lua:HtaSingleFileInside7zipWithMotw")
end
return mp.INFECTED
