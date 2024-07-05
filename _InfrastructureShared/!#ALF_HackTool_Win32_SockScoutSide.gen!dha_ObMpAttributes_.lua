local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
if L0_0 ~= "config.txt" then
  return mp.CLEAN
end
if mp.getfilesize() > 1024 then
  return mp.CLEAN
end
if #mp.enum_mpattributesubstring("SCPT:SockScoutSide") >= 3 then
  mp.set_mpattribute("MpNonPIIFileType")
  return mp.INFECTED
end
return mp.CLEAN
