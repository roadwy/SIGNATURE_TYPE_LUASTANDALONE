local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.bitor(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
if string.find(L0_0, "\\spool\\drivers\\color\\", 1, true) ~= nil and (L0_0:sub(-4) == ".exe" or L0_0:sub(-4) == ".dll") then
  return mp.INFECTED
end
return mp.CLEAN
