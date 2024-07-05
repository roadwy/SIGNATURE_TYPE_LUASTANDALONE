if not mp.get_mpattribute("AndroidOS:HSTR:AndroidElf") then
  return mp.CLEAN
end
if mp.get_mpattribute("PEPCODE:HasDigitalSignature") then
  return mp.CLEAN
end
if mp.get_mpattribute("CMN:HSTR:InstallerFile") then
  return mp.CLEAN
end
if mp.getfilesize() > 700000 or mp.getfilesize() < 4000 then
  return mp.CLEAN
end
if mp.getfilename(mp.bitor(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE)):find("adbcopy", 1, true) then
  return mp.CLEAN
end
if mp.getfilename(mp.bitor(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE)):find("libbaiduzeus", 1, true) then
  return mp.CLEAN
end
if mp.getfilename(mp.bitor(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE)):find("libmiui", 1, true) then
  return mp.CLEAN
end
if mp.getfilename(mp.bitor(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE)):find("liboctvm", 1, true) then
  return mp.CLEAN
end
if mp.getfilename(mp.bitor(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE)):find("getdbfile", 1, true) then
  return mp.CLEAN
end
if mp.getfilename(mp.bitor(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE)):find("\\atcid", 1, true) then
  return mp.CLEAN
end
if mp.getfilename(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE)):find("root", 1, true) then
  return mp.CLEAN
end
return mp.INFECTED
