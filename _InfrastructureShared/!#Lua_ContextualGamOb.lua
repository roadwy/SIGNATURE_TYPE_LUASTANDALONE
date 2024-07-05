if not peattributes.isexe then
  return mp.CLEAN
end
if mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN or mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  if mp.get_contextdata(mp.CONTEXT_DATA_FILENAME):sub(-4) ~= ".exe" then
    return mp.CLEAN
  end
  if mp.get_contextdata(mp.CONTEXT_DATA_FILENAME):find("^ob%w+%.exe", 1, false) and (string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH)):sub(-10) == "\\all users" or string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH)):sub(-12) == "\\programdata" or string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH)):sub(-17) == "\\application data" or string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH)):sub(-16) == "\\appdata\\roaming") and (string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME)) == "rundll32.exe" or string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME)) == "msiexec.exe") then
    return mp.INFECTED
  end
end
return mp.CLEAN
