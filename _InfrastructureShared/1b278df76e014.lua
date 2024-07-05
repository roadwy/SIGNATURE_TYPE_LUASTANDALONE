if not mp.get_mpattribute("RPF:TopLevelFile") then
  return mp.CLEAN
end
if mp.get_mpattribute("CMN:HSTR:InstallerFile") then
  return mp.CLEAN
end
if mp.getfilesize() > 1800000 or mp.getfilesize() < 4000 then
  return mp.CLEAN
end
if mp.get_mpattribute("PEPCODE:HasDigitalSignature") then
  return mp.CLEAN
end
if MpCommon.PathToWin32Path(mp.getfilename(mp.FILEPATH_QUERY_FULL)):lower():find("program files", 1, true) then
  return mp.CLEAN
end
if MpCommon.PathToWin32Path(mp.getfilename(mp.FILEPATH_QUERY_FULL)):lower():find("system32", 1, true) then
  return mp.CLEAN
end
if MpCommon.PathToWin32Path(mp.getfilename(mp.FILEPATH_QUERY_FULL)):lower():find("\\appdata\\local\\", 1, true) then
  return mp.CLEAN
end
return mp.INFECTED
