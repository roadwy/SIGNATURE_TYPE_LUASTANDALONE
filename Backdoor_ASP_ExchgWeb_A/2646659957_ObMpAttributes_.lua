local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.bitor(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
if L0_0 == nil or L0_0 == "" then
  return mp.CLEAN
end
if string.match(L0_0, "\\microsoft\\exchange server\\v%d%d\\frontend\\") ~= nil or string.find(L0_0, "\\frontend\\httpproxy\\owa\\", 1, true) ~= nil or string.match(L0_0, "\\microsoft\\exchange server\\v%d%d\\clientaccess\\") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
