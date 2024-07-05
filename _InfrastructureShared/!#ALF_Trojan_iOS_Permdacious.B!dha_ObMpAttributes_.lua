local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.bitor(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
if L0_0:find("exploit", 1, true) or L0_0:find("payloads", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
