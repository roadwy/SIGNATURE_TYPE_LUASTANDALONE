if mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) ~= mp.SCANREASON_ONOPEN and mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) ~= mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  return mp.CLEAN
end
if string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME)) == nil or #string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME)) < 4 then
  return mp.CLEAN
end
if string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH)):match("\\\\%?\\volume") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
