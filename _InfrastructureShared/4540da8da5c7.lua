if mp.get_mpattribute("PEPCODE:HasDigitalSignature") then
  return mp.CLEAN
end
if mp.getfilesize() > 1500000 or mp.getfilesize() < 8000 then
  return mp.CLEAN
end
if mp.getfilename(mp.bitor(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE)):find("program files", 1, true) then
  return mp.CLEAN
end
if mp.getfilename(mp.bitor(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE)):find("system32", 1, true) then
  return mp.CLEAN
end
if mp.getfilename(mp.bitor(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE)):find("syswow64", 1, true) then
  return mp.CLEAN
end
return mp.INFECTED