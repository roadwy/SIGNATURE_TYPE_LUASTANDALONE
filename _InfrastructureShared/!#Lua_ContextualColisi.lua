if (mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN or mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONMODIFIEDHANDLECLOSE) and mp.get_contextdata(mp.CONTEXT_DATA_NEWLYCREATEDHINT) == true then
  if not peattributes.isdll then
    return mp.CLEAN
  end
  if string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME)) ~= "googleupdate.dll" and string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME)) ~= "googleupdatehelper.dll" then
    return mp.CLEAN
  end
  if string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH)):sub(-26) ~= "\\google\\chrome\\application" then
    return mp.CLEAN
  end
  if string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH)):find("\\program files", 1, true) == nil then
    return mp.CLEAN
  end
  return mp.INFECTED
end
return mp.CLEAN
