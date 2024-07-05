local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.bitor(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
if L0_0:find("program files", 1, true) then
  return mp.CLEAN
end
if L0_0:find("sheedselfprotection", 1, true) then
  return mp.CLEAN
end
return mp.INFECTED
