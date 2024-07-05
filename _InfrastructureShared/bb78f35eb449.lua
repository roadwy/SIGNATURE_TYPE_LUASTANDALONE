if mp.getfilename(mp.FILEPATH_QUERY_FNAME):lower():find("blackbone", 1, true) then
  return mp.CLEAN
end
return mp.INFECTED
