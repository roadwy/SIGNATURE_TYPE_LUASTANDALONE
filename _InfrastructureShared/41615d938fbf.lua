if mp.getfilesize() > 5120 then
  return mp.CLEAN
end
if string.lower(mp.getfilename(mp.FILEPATH_QUERY_FNAME)) == "cnqmutil.dll" then
  return mp.INFECTED
end
return mp.CLEAN
