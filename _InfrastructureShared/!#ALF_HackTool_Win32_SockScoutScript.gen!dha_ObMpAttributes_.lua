if mp.getfilesize() < 100 then
  return mp.CLEAN
end
if #mp.enum_mpattributesubstring("SCPT:SockScoutScript") < 3 then
  return mp.CLEAN
end
if pcall(mp.getfilename, mp.FILEPATH_QUERY_PATH) then
  if not pcall(mp.getfilename, mp.FILEPATH_QUERY_PATH):find("\\Scripts", 1, true) then
    return mp.CLEAN
  else
    mp.set_mpattribute("MpNonPIIFileType")
    return mp.INFECTED
  end
end
return mp.CLEAN
