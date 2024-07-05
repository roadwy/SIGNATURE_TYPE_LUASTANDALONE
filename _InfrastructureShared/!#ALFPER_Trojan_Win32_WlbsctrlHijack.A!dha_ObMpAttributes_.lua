if mp.getfilesize() < 300000 and mp.getfilename(mp.bitor(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE)):find("\\system32\\wlbsctrl", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
