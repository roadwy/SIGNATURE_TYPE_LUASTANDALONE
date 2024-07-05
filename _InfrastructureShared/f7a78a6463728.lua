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
if mp.get_mpattribute("pea_ismsil") then
  return mp.CLEAN
end
if mp.get_mpattribute("pea_isdriver") then
  return mp.CLEAN
end
if #mp.enum_mpattributesubstring("Exploit:") > 0 then
  return mp.CLEAN
end
if 0 < #mp.enum_mpattributesubstring("TEL:Exploit:") then
  return mp.CLEAN
end
if MpCommon.PathToWin32Path(mp.getfilename(mp.FILEPATH_QUERY_FULL)):lower():find("\\immunity", 1, true) or MpCommon.PathToWin32Path(mp.getfilename(mp.FILEPATH_QUERY_FULL)):lower():find("\\canvas", 1, true) then
  mp.set_mpattribute("HSTR:ImmunityCanvasFile")
  return mp.CLEAN
end
if MpCommon.PathToWin32Path(mp.getfilename(mp.FILEPATH_QUERY_FULL)):lower():find("program files", 1, true) then
  return mp.CLEAN
end
if MpCommon.PathToWin32Path(mp.getfilename(mp.FILEPATH_QUERY_FULL)):lower():find("system32", 1, true) then
  return mp.CLEAN
end
if MpCommon.PathToWin32Path(mp.getfilename(mp.FILEPATH_QUERY_FULL)):lower():find("\\matlab\\", 1, true) then
  return mp.CLEAN
end
if MpCommon.PathToWin32Path(mp.getfilename(mp.FILEPATH_QUERY_FULL)):lower():find("picus", 1, true) then
  return mp.CLEAN
end
if MpCommon.PathToWin32Path(mp.getfilename(mp.FILEPATH_QUERY_FULL)):lower():find("syswow64", 1, true) then
  return mp.CLEAN
end
if MpCommon.PathToWin32Path(mp.getfilename(mp.FILEPATH_QUERY_FULL)):lower():find("\\cylance", 1, true) then
  return mp.CLEAN
end
if MpCommon.PathToWin32Path(mp.getfilename(mp.FILEPATH_QUERY_FULL)):lower():find("libclang", 1, true) then
  return mp.CLEAN
end
if MpCommon.PathToWin32Path(mp.getfilename(mp.FILEPATH_QUERY_FULL)):lower():find("introum_steal_token", 1, true) then
  return mp.CLEAN
end
if MpCommon.PathToWin32Path(mp.getfilename(mp.FILEPATH_QUERY_FULL)):lower():find("metasploit", 1, true) then
  return mp.CLEAN
end
if MpCommon.PathToWin32Path(mp.getfilename(mp.FILEPATH_QUERY_FULL)):lower():find("softwaredistribution", 1, true) then
  return mp.CLEAN
end
return mp.INFECTED
