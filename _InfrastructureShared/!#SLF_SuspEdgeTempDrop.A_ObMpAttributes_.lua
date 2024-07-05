local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
if L0_0 == "tmp504e.tmp" and string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME)) == "msedge.exe" then
  return mp.INFECTED
end
return mp.CLEAN
