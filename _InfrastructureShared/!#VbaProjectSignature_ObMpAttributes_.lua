local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
if not L0_0 then
  return mp.CLEAN
end
if string.find(L0_0, "vbaprojectsignature", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
