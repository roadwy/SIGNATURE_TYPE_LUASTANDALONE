if mp.getfilesize() > 1536000 then
  return mp.CLEAN
end
if mp.getfilename(mp.bitor(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE)):find("->word/_rels/", 1, true) or mp.getfilename(mp.bitor(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE)):find("/drawings/_rels/", 1, true) or mp.getfilename(mp.bitor(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE)):find("/worksheets/_rels/", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
