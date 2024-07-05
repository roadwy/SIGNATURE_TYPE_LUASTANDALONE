local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.bitor
L1_1 = L1_1(mp.bitor(mp.FILEPATH_QUERY_PATH, mp.FILEPATH_QUERY_FNAME), mp.FILEPATH_QUERY_LOWERCASE)
L1_1 = L0_0(L1_1, L1_1(mp.bitor(mp.FILEPATH_QUERY_PATH, mp.FILEPATH_QUERY_FNAME), mp.FILEPATH_QUERY_LOWERCASE))
if string.sub(L1_1, 1, 17) == "google chrome.lnk" and (L0_0:find("\\microsoft\\internet explorer\\quick launch", 1, true) ~= nil or string.sub(L0_0, -20) == "\\start menu\\programs" or string.sub(L0_0, -8) == "\\desktop") then
  return mp.INFECTED
end
return mp.CLEAN
