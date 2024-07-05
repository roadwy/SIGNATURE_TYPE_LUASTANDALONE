local L0_0, L1_1
L0_0 = MpCommon
L0_0 = L0_0.PathToWin32Path
L1_1 = mp
L1_1 = L1_1.getfilename
L1_1 = L1_1(mp.bitor(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
L0_0 = L0_0(L1_1, L1_1(mp.bitor(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE)))
L1_1 = string
L1_1 = L1_1.lower
L1_1 = L1_1(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME))
if L0_0 == nil or L1_1 == nil then
  return mp.CLEAN
end
if L0_0:find("\\tools\\", 1, true) and L1_1:find("init.ps1", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
