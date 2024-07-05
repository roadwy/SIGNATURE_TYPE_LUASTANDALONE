local L0_0
L0_0 = mp
L0_0 = L0_0.GetResmgrBasePlugin
L0_0 = L0_0()
if L0_0 ~= "Taskscheduler" then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.bitor(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
if string.find(L0_0, ":\\windows\\system32", 1, true) ~= nil or string.find(L0_0, ":\\windows\\syswow64", 1, true) ~= nil or string.find(L0_0, ":\\windows\\tasks", 1, true) ~= nil then
  return mp.CLEAN
end
if mp.IsKnownFriendlyFile(L0_0, true, false) then
  return mp.CLEAN
end
return mp.INFECTED
