if mp.getfilesize() < 35000 then
  return mp.CLEAN
end
if mp.getfilename(mp.bitor(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE)):find("messages", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
