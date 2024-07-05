if mp.getfilesize() > 51200 then
  return mp.CLEAN
end
if not mp.getfilename(mp.bitor(mp.FILEPATH_QUERY_PATH, mp.FILEPATH_QUERY_LOWERCASE)):find("\\wp-content", 1, true) then
  return mp.CLEAN
end
if #mp.enum_mpattributesubstring("SCPT:WildPancake") >= 2 then
  return mp.INFECTED
end
return mp.CLEAN
