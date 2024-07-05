if peattributes.isdll then
  return mp.CLEAN
end
if peattributes.isdamaged then
  return mp.CLEAN
end
if mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONMODIFIEDHANDLECLOSE and mp.get_contextdata(mp.CONTEXT_DATA_NEWLYCREATEDHINT) == true and string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH)):find("\\downloads$") then
  return mp.INFECTED
end
return mp.CLEAN
