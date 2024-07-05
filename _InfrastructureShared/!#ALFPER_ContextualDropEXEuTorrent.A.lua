if peattributes.isdll then
  return mp.CLEAN
end
if peattributes.isdamaged then
  return mp.CLEAN
end
if mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONMODIFIEDHANDLECLOSE and string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH)):find("\\downloads\\", 1, true) and (string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME)) == "utorrent.exe" or string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME)) == "utweb.exe") then
  return mp.INFECTED
end
return mp.CLEAN
