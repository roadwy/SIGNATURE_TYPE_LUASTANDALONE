if peattributes.isdll then
  return mp.CLEAN
end
if mp.get_mpattribute("pea_isdriver") then
  return mp.CLEAN
end
if not mp.get_mpattribute("Lua:VirTool:Win32/VMProtect.A") then
  return mp.CLEAN
end
if mp.getfilesize() < 5242880 then
  return mp.CLEAN
end
if mp.getfilename(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE)) == "generator.exe" or mp.getfilename(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE)) == "g1.exe" then
  mp.set_mpattribute("HSTR:GGenerator.D")
end
if mp.getfilename(mp.bitor(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE)):find("\\g1\\", 1, true) then
  mp.set_mpattribute("HSTR:GGenerator.D")
end
if mp.getfilename(mp.bitor(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE)):find("\\g1-beta\\", 1, true) then
  return mp.INFECTED
end
if mp.getfilename(mp.bitor(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE)):find("g1\\generator\\", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
