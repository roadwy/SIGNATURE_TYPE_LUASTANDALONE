if mp.getfilesize() > 2000000 or mp.getfilesize() < 4000 then
  return mp.CLEAN
end
if mp.get_mpattribute("PEPCODE:HasDigitalSignature") then
  return mp.CLEAN
end
if MpCommon.PathToWin32Path(mp.getfilename(mp.FILEPATH_QUERY_FULL)):lower():find("program files", 1, true) then
  return mp.CLEAN
end
return mp.INFECTED
