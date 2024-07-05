local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.bitor(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
if string.find(L0_0, "\\windows\\inetcache\\ie\\", 1, true) or string.find(L0_0, "\\content.ie5\\", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
