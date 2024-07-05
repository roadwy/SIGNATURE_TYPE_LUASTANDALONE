if not peattributes.isexe then
  return mp.CLEAN
end
if (mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN or mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONMODIFIEDHANDLECLOSE) and mp.get_contextdata(mp.CONTEXT_DATA_NEWLYCREATEDHINT) == true then
  if mp.get_contextdata(mp.CONTEXT_DATA_FILENAME):len() > 14 then
    return mp.CLEAN
  end
  if mp.get_contextdata(mp.CONTEXT_DATA_FILENAME):sub(-4) ~= ".exe" then
    return mp.CLEAN
  end
  if mp.get_contextdata(mp.CONTEXT_DATA_FILENAME):find("^%l%l%l+%.exe$") and string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH)):find("\\users\\[^\\]+$") and string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME)) == "msiexec.exe" then
    return mp.INFECTED
  end
end
return mp.CLEAN
