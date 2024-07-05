if mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) ~= mp.SCANREASON_ONOPEN then
  return mp.CLEAN
end
if string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME)) ~= "extrac32.exe" then
  return mp.CLEAN
end
return mp.INFECTED
