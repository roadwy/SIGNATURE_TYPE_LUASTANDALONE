local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.bitor(mp.FILEPATH_QUERY_PATH, mp.FILEPATH_QUERY_LOWERCASE))
if L0_0 == nil or L0_0 == "" then
  return mp.CLEAN
end
if string.find(L0_0, "/tmp/", 1, true) or string.find(L0_0, "/dev/shm/", 1, true) == 1 then
  return mp.INFECTED
end
return mp.CLEAN
