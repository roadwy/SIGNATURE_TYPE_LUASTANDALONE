local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
if L0_0 == nil or string.len(L0_0) < 4 or string.len(L0_0) > 1000 then
  return mp.CLEAN
end
mp.set_mpattribute("Lua:PSInServerSystemRoot.S01")
if L0_0 == "msinp.ps1" then
  return mp.INFECTED
end
return mp.CLEAN
