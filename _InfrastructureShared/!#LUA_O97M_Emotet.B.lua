local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
if string.find(L0_0, "emotet_e1_", 1, true) ~= nil or string.find(L0_0, "emotet_e2_", 1, true) ~= nil or string.find(L0_0, "emotet_e3_", 1, true) ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
