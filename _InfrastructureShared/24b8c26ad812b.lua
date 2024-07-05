local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
if L0_0 == nil or L0_0 == "" or string.find(L0_0, "/ism_ux_", 1, true) then
  return mp.CLEAN
end
return mp.INFECTED
