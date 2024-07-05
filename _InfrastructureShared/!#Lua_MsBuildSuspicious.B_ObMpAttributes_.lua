local L0_0
L0_0 = mp
L0_0 = L0_0.get_contextdata
L0_0 = L0_0(mp.CONTEXT_DATA_SCANREASON)
if L0_0 ~= mp.SCANREASON_ONOPEN then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.bitor(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
if not string.find(L0_0, "\\temp\\", 1, true) then
  return mp.CLEAN
end
if string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME)) ~= "msbuild.exe" and string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME)) ~= "installutil.exe" then
  return mp.CLEAN
end
return mp.INFECTED
