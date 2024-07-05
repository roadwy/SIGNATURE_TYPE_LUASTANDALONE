local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
if L0_0 == "downloadmanager.exe" or L0_0:find("^dmgr2%..+%.exe$") then
  return mp.INFECTED
end
return mp.CLEAN
