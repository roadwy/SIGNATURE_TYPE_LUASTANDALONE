local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.bitor(mp.bitor(mp.FILEPATH_QUERY_PATH, mp.FILEPATH_QUERY_FNAME), mp.FILEPATH_QUERY_LOWERCASE))
if string.match(L0_0, "\\amazon\\codedeploy\\bin") ~= nil and L0_0(mp.bitor(mp.bitor(mp.FILEPATH_QUERY_PATH, mp.FILEPATH_QUERY_FNAME), mp.FILEPATH_QUERY_LOWERCASE)) == "winagent.exe" or string.match(L0_0, "\\spiceworks") ~= nil and L0_0(mp.bitor(mp.bitor(mp.FILEPATH_QUERY_PATH, mp.FILEPATH_QUERY_FNAME), mp.FILEPATH_QUERY_LOWERCASE)) == "spiceworks_safemode.exe" then
  return mp.CLEAN
end
return mp.INFECTED
