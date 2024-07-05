local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.bitor
L2_2 = mp
L2_2 = L2_2.bitor
L3_3 = mp
L3_3 = L3_3.FILEPATH_QUERY_FNAME
L4_4 = mp
L4_4 = L4_4.FILEPATH_QUERY_PATH
L2_2 = L2_2(L3_3, L4_4)
L3_3 = mp
L3_3 = L3_3.FILEPATH_QUERY_LOWERCASE
L4_4 = L1_1(L2_2, L3_3)
L1_1 = L0_0(L1_1, L2_2, L3_3, L4_4, L1_1(L2_2, L3_3))
if L0_0 ~= nil then
  L2_2 = #L0_0
elseif L2_2 > 2 or L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = L0_0
L3_3 = "\\"
L4_4 = L1_1
L2_2 = L2_2 .. L3_3 .. L4_4
L3_3 = MpCommon
L3_3 = L3_3.GetMountedFileBackingFilePath
L4_4 = L2_2
L3_3 = L3_3(L4_4)
if L3_3 == nil then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = IsKeyInRollingQueue
L4_4 = L4_4("CC_filelist", L3_3)
if L4_4 then
  L4_4 = sysio
  L4_4 = L4_4.GetFileAttributes
  L4_4 = L4_4(L2_2)
  if mp.bitand(L4_4, 2) == 2 then
    return mp.INFECTED
  end
end
L4_4 = mp
L4_4 = L4_4.CLEAN
return L4_4
