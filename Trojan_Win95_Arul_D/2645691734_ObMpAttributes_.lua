local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
if L0_0 == "google_update_checker.js" then
  return mp.INFECTED
end
if L0_0 == "local_update_checker.js" then
  return mp.INFECTED
end
return mp.CLEAN
