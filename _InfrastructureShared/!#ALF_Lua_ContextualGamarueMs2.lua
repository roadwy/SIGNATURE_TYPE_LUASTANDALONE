if not peattributes.isexe then
  return mp.CLEAN
end
if mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONMODIFIEDHANDLECLOSE and mp.get_contextdata(mp.CONTEXT_DATA_NEWLYCREATEDHINT) == true then
  if mp.get_contextdata(mp.CONTEXT_DATA_FILENAME):sub(-4) ~= ".exe" then
    return mp.CLEAN
  end
  if string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH)):sub(-10) == "\\all users" or string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH)):sub(-12) == "\\programdata" or string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH)):sub(-17) == "\\application data" or string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH)):sub(-16) == "\\appdata\\roaming" then
    if #mp.get_contextdata(mp.CONTEXT_DATA_FILENAME) < 9 or #mp.get_contextdata(mp.CONTEXT_DATA_FILENAME) > 16 then
      return mp.CLEAN
    end
    if mp.get_contextdata(mp.CONTEXT_DATA_FILENAME):find("^ms[%p%w]+%.exe$") ~= nil and string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME)) == "msiexec.exe" then
      return mp.INFECTED
    end
  end
end
return mp.CLEAN
