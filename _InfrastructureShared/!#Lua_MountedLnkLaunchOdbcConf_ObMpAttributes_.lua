local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.bitor
L1_1 = L1_1(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE)
L1_1 = L0_0(L1_1, L1_1(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE))
if L0_0 == nil or #L0_0 > 2 or L1_1 == nil then
  return mp.CLEAN
end
if MpCommon.GetMountedFileBackingFilePath(L0_0 .. "\\" .. L1_1) ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
