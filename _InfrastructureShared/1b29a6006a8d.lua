local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.bitor(mp.bitor(mp.FILEPATH_QUERY_PATH, mp.FILEPATH_QUERY_FNAME), mp.FILEPATH_QUERY_LOWERCASE))
if L0_0 == nil then
  return mp.CLEAN
end
if string.match(L0_0, "extensions") ~= nil or string.match(L0_0, "temp") ~= nil or string.match(L0_0, "apps%-helper") ~= nil or string.match(L0_0, "app%-helper") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN