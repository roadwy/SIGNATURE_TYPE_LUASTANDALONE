if mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONMODIFIEDHANDLECLOSE and mp.get_contextdata(mp.CONTEXT_DATA_NEWLYCREATEDHINT) == true then
  if not peattributes.isexe or peattributes.isdriver or peattributes.no_security == false or peattributes.no_fixups == false then
    return mp.CLEAN
  end
  if mp.getfilesize() < 262144 or mp.getfilesize() > 1048576 then
    return mp.CLEAN
  end
  if mp.getfilename(mp.bitor(mp.bitor(mp.FILEPATH_QUERY_PATH, mp.FILEPATH_QUERY_FNAME), mp.FILEPATH_QUERY_LOWERCASE)):find("\\temp\\", 1, true) == nil then
    return mp.CLEAN
  end
  if ({
    ["exename.exe"] = true
  })[mp.getfilename(mp.bitor(mp.bitor(mp.FILEPATH_QUERY_PATH, mp.FILEPATH_QUERY_FNAME), mp.FILEPATH_QUERY_LOWERCASE))] then
    return mp.INFECTED
  end
  if mp.getfilename(mp.bitor(mp.bitor(mp.FILEPATH_QUERY_PATH, mp.FILEPATH_QUERY_FNAME), mp.FILEPATH_QUERY_LOWERCASE)):find("^rad%x%x%x%x%x%.tmp%.exe$") then
    return mp.INFECTED
  end
end
return mp.CLEAN
