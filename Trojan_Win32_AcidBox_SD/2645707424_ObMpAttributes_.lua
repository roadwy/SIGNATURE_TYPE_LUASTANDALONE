local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
if L0_0 == "msv1_1.dll" or L0_0 == "pku.dll" or L0_0 == "windigest.dll" then
  return mp.INFECTED
end
return mp.CLEAN
