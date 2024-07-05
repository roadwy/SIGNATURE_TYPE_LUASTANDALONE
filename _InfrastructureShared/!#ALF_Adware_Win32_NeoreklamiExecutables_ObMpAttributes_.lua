local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.bitor(mp.bitor(mp.FILEPATH_QUERY_PATH, mp.FILEPATH_QUERY_FNAME), mp.FILEPATH_QUERY_LOWERCASE))
if #L0_0(mp.bitor(mp.bitor(mp.FILEPATH_QUERY_PATH, mp.FILEPATH_QUERY_FNAME), mp.FILEPATH_QUERY_LOWERCASE)) ~= 20 then
  return mp.CLEAN
end
if mp.getfilesize() < 6291456 or mp.getfilesize() > 8388608 then
  return mp.CLEAN
end
if L0_0:find("\\windows\\temp\\", 1, true) ~= nil and L0_0:match("temp\\([^\\]+)$") ~= nil and #L0_0:match("temp\\([^\\]+)$") == 16 then
  return mp.INFECTED
end
return mp.CLEAN
