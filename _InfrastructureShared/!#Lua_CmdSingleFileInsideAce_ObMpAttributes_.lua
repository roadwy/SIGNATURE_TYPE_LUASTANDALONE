if mp.UfsGetMetadataBool("Lua:SingleFileInACE!ufs", true) ~= 0 or not mp.UfsGetMetadataBool("Lua:SingleFileInACE!ufs", true) then
  return mp.CLEAN
end
if mp.get_contextdata(mp.CONTEXT_DATA_HAS_MOTW_ADS) == true and mp.GetMOTWZone() >= 3 then
  mp.set_mpattribute("Lua:CmdSingleFileInsideAceWithMotw")
end
return mp.INFECTED
