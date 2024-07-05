if string.match(mp.getfilename(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE)), "kali%-linux%-%d%d%d%d%.%d%d?%-installer.*%.iso") ~= nil then
  return mp.CLEAN
end
if #mp.enum_mpattributesubstring("SCPT:GoalPackD1") == 1 and #mp.enum_mpattributesubstring("SCPT:GoalPackA") >= 2 and #mp.enum_mpattributesubstring("SCPT:GoalPackB") > 3 then
  return mp.INFECTED
end
return mp.CLEAN
