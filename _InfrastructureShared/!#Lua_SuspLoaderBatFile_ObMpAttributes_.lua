if mp.getfilesize() < 100000 then
  return mp.CLEAN
end
if mp.getfilename(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE)) == "loader.bat" then
  return mp.INFECTED
end
return mp.CLEAN
