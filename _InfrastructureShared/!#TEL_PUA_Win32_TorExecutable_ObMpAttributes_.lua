local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
if L0_0 ~= nil and L0_0:find("tor.exe", 1, true) then
  return mp.CLEAN
end
return mp.INFECTED
