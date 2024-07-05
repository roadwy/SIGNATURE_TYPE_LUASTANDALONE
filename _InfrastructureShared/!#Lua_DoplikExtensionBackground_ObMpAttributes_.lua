local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.bitor(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE))
if L0_0 == nil or #L0_0 <= 1 then
  return mp.CLEAN
end
if L0_0(mp.bitor(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE)) == nil then
  return mp.CLEAN
end
if L0_0(mp.bitor(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE)) == "background.js" and string.find(L0_0, "appdata\\\\local\\\\", 1, true) and string.find(L0_0, "chrome_", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
