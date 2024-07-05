if not mp.getfilename(mp.FILEPATH_QUERY_FULL):lower():find("assets/", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
