local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.bitor
L1_1 = L1_1(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE)
L1_1 = L0_0(L1_1, L1_1(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE))
if L0_0 == nil or #L0_0 < 40 or L1_1 == nil then
  return mp.CLEAN
end
if string.find(L1_1, "->", 1, true) == nil then
  return mp.CLEAN
end
if (string.find(L0_0, "\\appdata\\local\\packages\\microsoft.windowscommunicationsapps_8wekyb3d8bbwe\\localstate\\files", 1, true) ~= nil or string.find(L0_0, "\\appdata\\local\\microsoft\\windows\\inetcache\\content.outlook", 1, true) ~= nil) and (string.find(L1_1, "/embeddings/oleobject", 1, true) ~= nil and string.find(L1_1, ".bin->(ole stream", 1, true) ~= nil or string.find(L1_1, "->ole stream", 1, true) ~= nil and string.find(L1_1, ")->", 1, true) ~= nil or string.find(L1_1, "->(rtf0", 1, true) ~= nil and string.find(L1_1, ")->", 1, true) ~= nil) and (string.sub(L1_1, #L1_1 - 3, #L1_1 - 3) == "." or string.sub(L1_1, #L1_1 - 2, #L1_1 - 2) == ".") then
  return mp.INFECTED
end
return mp.CLEAN
