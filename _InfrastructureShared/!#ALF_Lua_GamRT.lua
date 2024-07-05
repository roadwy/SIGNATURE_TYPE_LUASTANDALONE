if not peattributes.isdriver then
  return mp.CLEAN
end
if mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN or mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  if mp.get_contextdata(mp.CONTEXT_DATA_FILENAME):len() ~= 20 then
    return mp.CLEAN
  end
  if mp.get_contextdata(mp.CONTEXT_DATA_FILENAME):sub(-4) ~= ".sys" then
    return mp.CLEAN
  end
  if mp.get_contextdata(mp.CONTEXT_DATA_FILENAME):find("^%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%.sys$") and string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH)):find("\\windows\\system32\\drivers$") and string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME)) == "msiexec.exe" then
    return mp.INFECTED
  end
end
return mp.CLEAN
