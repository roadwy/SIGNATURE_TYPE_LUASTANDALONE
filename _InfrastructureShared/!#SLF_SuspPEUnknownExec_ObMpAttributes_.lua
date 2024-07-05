if mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  if mp.getfilesize() > 1048576 then
    return mp.CLEAN
  end
  if mp.getfilename(mp.bitor(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE)):find("cache\\", 1, true) or mp.getfilename(mp.bitor(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE)):find(".json", 1, true) or mp.getfilename(mp.bitor(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE)):find(".pyd", 1, true) or mp.getfilename(mp.bitor(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE)):find(".xml", 1, true) or mp.getfilename(mp.bitor(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE)):find(".lng", 1, true) then
    return mp.CLEAN
  end
  if mp.getfilename(mp.bitor(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE)):find("appdata", 1, true) or mp.getfilename(mp.bitor(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE)):find("programdata", 1, true) or mp.get_contextdata(mp.CONTEXT_DATA_HAS_MOTW_ADS) == true and mp.GetMOTWZone() >= 3 then
    if epcode[1] == 232 or epcode[1] == 233 or epcode[1] == 85 and (epcode[2] == 139 or epcode[2] == 137) or epcode[1] == 75 and epcode[2] == 131 or epcode[1] == 106 and epcode[2] == 96 or epcode[3] == 85 and epcode[1] == 139 or epcode[1] == 131 then
      return mp.CLEAN
    end
    if pe.get_versioninfo() ~= nil then
      return mp.CLEAN
    end
    return mp.INFECTED
  end
end
return mp.CLEAN
