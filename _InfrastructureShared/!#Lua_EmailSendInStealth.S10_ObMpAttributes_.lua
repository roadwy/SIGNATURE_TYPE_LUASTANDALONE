local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.bitor(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
if L0_0 == nil or string.len(L0_0) < 30 or string.len(L0_0) > 1000 then
  return mp.CLEAN
end
if string.find(L0_0, "\\transportroles\\pickup\\msg", 1, true) == nil then
  return mp.CLEAN
end
return mp.INFECTED
