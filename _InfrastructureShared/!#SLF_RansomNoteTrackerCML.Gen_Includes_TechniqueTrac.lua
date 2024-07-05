local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_PROCESSNAME
L0_0 = L0_0(L1_1)
if L0_0 == nil or L0_0 == "" then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L2_2 = L0_0
L1_1 = L1_1(L2_2)
L0_0 = L1_1
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_PROCESS_PPID
L1_1 = L1_1(L2_2)
L2_2 = mp
L2_2 = L2_2.getfilename
L3_3 = mp
L3_3 = L3_3.bitor
L4_4 = mp
L4_4 = L4_4.bitor
L5_5 = mp
L5_5 = L5_5.FILEPATH_QUERY_FNAME
L6_6 = mp
L6_6 = L6_6.FILEPATH_QUERY_PATH
L4_4 = L4_4(L5_5, L6_6)
L5_5 = mp
L5_5 = L5_5.FILEPATH_QUERY_LOWERCASE
L10_10 = L3_3(L4_4, L5_5)
L3_3 = L2_2(L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L3_3(L4_4, L5_5))
if L2_2 == nil or L2_2 == "" then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
if L3_3 == nil or L3_3 == "" then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L5_5 = L2_2
L4_4 = L2_2.sub
L6_6 = 1
L7_7 = 8
L4_4 = L4_4(L5_5, L6_6, L7_7)
if L4_4 == "\\device\\" then
  L4_4 = MpCommon
  L4_4 = L4_4.PathToWin32Path
  L5_5 = L2_2
  L4_4 = L4_4(L5_5)
  L2_2 = L4_4
end
L4_4 = mp
L4_4 = L4_4.getfilesize
L4_4 = L4_4()
if L4_4 < 256 then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = "RansomNoteTrackerCML"
L6_6 = 3600
L7_7 = 100
L8_8 = "|"
L9_9 = L1_1
L10_10 = L8_8
L9_9 = L9_9 .. L10_10 .. L0_0 .. L8_8 .. L3_3 .. L8_8 .. L4_4
L10_10 = GetRollingQueueKeyValues
L10_10 = L10_10(L5_5, L9_9)
if L10_10 then
  for _FORV_14_, _FORV_15_ in ipairs(L10_10) do
    if _FORV_15_ and _FORV_15_.value == L2_2 then
      return mp.CLEAN
    end
  end
  AppendToRollingQueue(L5_5, L9_9, L2_2, L6_6, L7_7, 0)
  if #L10_10 == 8 then
    MpCommon.BmTriggerSig(L1_1, "BM_GenRansomNoteTrackerCML", safeJsonSerialize(L10_10))
    mp.set_mpattribute("Lua:RansomNoteTrackerCML.Gen")
    return mp.INFECTED
  end
else
  AppendToRollingQueue(L5_5, L9_9, L2_2, L6_6, L7_7, 0)
end
return mp.CLEAN
