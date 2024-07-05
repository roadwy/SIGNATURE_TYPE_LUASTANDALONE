if not mp.get_mpattribute("Lua:LastFolder0!c:") then
  return mp.CLEAN
end
if mp.getfilename(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE)) == "program.exe" then
  return mp.INFECTED
end
return mp.CLEAN
