if mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN or mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  if mp.getfilesize() > 1024 then
    return mp.CLEAN
  end
  if string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME)):match("Security Center Update - [0-9]+.job") and string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH)):match("C:WINDOWSTasks") then
    mp.set_mpattribute("LUA:SuspiciousJobFile")
  end
end
return mp.CLEAN
