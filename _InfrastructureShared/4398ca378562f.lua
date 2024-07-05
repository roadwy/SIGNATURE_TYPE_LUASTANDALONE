if mp.getfilesize() > 8000000 or mp.getfilesize() < 10000 then
  return mp.CLEAN
end
if mp.getfilename(mp.bitor(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE)):find("mkvie-porting-working", 1, true) then
  return mp.CLEAN
end
return mp.INFECTED
