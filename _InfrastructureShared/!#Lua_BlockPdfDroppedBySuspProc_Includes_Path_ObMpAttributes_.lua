local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONOPEN
if L0_0 ~= L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.getfilename
L2_2 = mp
L2_2 = L2_2.bitor
L3_3 = mp
L3_3 = L3_3.FILEPATH_QUERY_FULL
L4_4 = mp
L4_4 = L4_4.FILEPATH_QUERY_LOWERCASE
L5_5 = L2_2(L3_3, L4_4)
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L2_2(L3_3, L4_4))
L2_2 = string
L2_2 = L2_2.find
L3_3 = L1_1
L4_4 = "\\device\\"
L5_5 = 1
L2_2 = L2_2(L3_3, L4_4, L5_5, true)
if L2_2 then
  L2_2 = MpCommon
  L2_2 = L2_2.PathToWin32Path
  L3_3 = L1_1
  L2_2 = L2_2(L3_3)
  L1_1 = L2_2
end
if L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = "Lua:PdfDroppedBySuspProc"
L3_3 = MpCommon
L3_3 = L3_3.QueryPersistContext
L4_4 = L1_1
L5_5 = L2_2
L3_3 = L3_3(L4_4, L5_5)
if not L3_3 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = "global_marker"
L5_5 = "big_lnk_file_with_ps"
L3_3 = MpCommon.QueryPersistContextNoPath(L4_4, L5_5)
if not L3_3 then
  return mp.CLEAN
end
return mp.INFECTED
