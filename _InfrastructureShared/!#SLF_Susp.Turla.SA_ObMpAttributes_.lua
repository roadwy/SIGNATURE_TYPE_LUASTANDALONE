local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
if L0_0 == "msmime.dll" or L0_0 == "schedctl.dll" then
  return mp.INFECTED
end
return mp.CLEAN
