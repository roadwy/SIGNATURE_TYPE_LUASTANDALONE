if mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) ~= mp.SCANREASON_ONOPEN then
  return mp.CLEAN
end
if not mp.get_contextdata(mp.CONTEXT_DATA_OPEN_CREATEPROCESS_HINT) then
  return mp.CLEAN
end
if string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME)) ~= "nsservice.exe" then
  return mp.CLEAN
end
if string.lower(string.match(mp.getfilename(), "(%.[^%.]+)$")) ~= ".vbs" then
  return mp.CLEAN
end
return mp.INFECTED
