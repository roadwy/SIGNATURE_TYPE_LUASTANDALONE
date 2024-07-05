local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.bitor(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
if L0_0 == nil or L0_0 == "" then
  return mp.CLEAN
end
if string.find(L0_0, "\\windows\\system32\\inetsrv\\", 1, true) == nil and string.find(L0_0, "\\windows\\syswow64\\inetsrv\\", 1, true) == nil then
  return mp.CLEAN
end
return mp.INFECTED