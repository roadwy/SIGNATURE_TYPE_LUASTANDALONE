if mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) ~= mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  return mp.CLEAN
end
if mp.get_contextdata(mp.CONTEXT_DATA_NEWLYCREATEDHINT) ~= true then
  return mp.CLEAN
end
if not peattributes.isdll and peattributes.no_exports then
  return mp.CLEAN
end
if mp.getfilename(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE)) ~= "perfc.dat" then
  return mp.CLEAN
end
if pe.get_exports() > 1 then
  return mp.CLEAN
end
if pe.get_exports() == 0 then
  return mp.INFECTED
end
if pe.get_exports()[1].ordinal ~= 1 then
  return mp.CLEAN
end
return mp.INFECTED
