if mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN or mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  if string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME)) ~= "smalled.fon" then
    return mp.CLEAN
  end
  if string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH)) ~= "c:\\windows\\fonts" then
    return mp.CLEAN
  end
  return mp.INFECTED
end
return mp.CLEAN
