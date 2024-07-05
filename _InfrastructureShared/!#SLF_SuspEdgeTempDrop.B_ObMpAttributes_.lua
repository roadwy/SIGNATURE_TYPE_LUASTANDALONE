local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.bitor(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
if L0_0:match("\\windows\\temp\\[^\\]+.tmp$") and string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME)) == "msedge.exe" then
  return mp.INFECTED
end
return mp.CLEAN
