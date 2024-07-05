local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.bitor(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
if L0_0:find("\\windows\\system32\\ime\\", 1, true) then
  return mp.INFECTED
end
if L0_0:find("\\loadertest", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
