if mp.get_mpattribute("SCPT:SuspAnyDeskConfig.A") and mp.getfilename(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE)) ~= nil and mp.getfilename(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE)):find("system.conf", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
