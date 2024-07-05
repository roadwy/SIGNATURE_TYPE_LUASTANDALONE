local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18
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
L18_18 = L1_1(L2_2, L3_3)
L1_1 = L0_0(L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L1_1(L2_2, L3_3))
if L1_1 == nil or L0_0 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.get_contextdata
L3_3 = mp
L3_3 = L3_3.CONTEXT_DATA_PROCESS_PPID
L2_2 = L2_2(L3_3)
if L2_2 ~= nil then
  L3_3 = IsKeyInRollingQueue
  L4_4 = "ArchivesWithMotW"
  L5_5 = L2_2
  L3_3 = L3_3(L4_4, L5_5)
elseif not L3_3 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = "FilesFromArchiveswithMotw"
L4_4 = MpCommon
L4_4 = L4_4.PathToWin32Path
L5_5 = L0_0
L6_6 = "\\"
L5_5 = L5_5 .. L6_6 .. L7_7
L4_4 = L4_4(L5_5)
L5_5 = IsKeyInRollingQueue
L6_6 = L3_3
L5_5 = L5_5(L6_6, L7_7)
if L5_5 then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = GetRollingQueueKeyValues
L6_6 = "ArchivesWithMotW"
L5_5 = L5_5(L6_6, L7_7)
if L5_5 == nil then
  L6_6 = mp
  L6_6 = L6_6.CLEAN
  return L6_6
end
L6_6 = nil
for L10_10, L11_11 in L7_7(L8_8) do
  L12_12 = L11_11.value
  L13_13 = L12_12
  L12_12 = L12_12.match
  L14_14 = "([^\\]+)%."
  L12_12 = L12_12(L13_13, L14_14)
  L14_14 = L0_0
  L13_13 = L0_0.find
  L15_15 = L12_12
  L16_16 = 1
  L17_17 = true
  L13_13 = L13_13(L14_14, L15_15, L16_16, L17_17)
  if L13_13 ~= nil then
    L6_6 = L11_11.value
    break
  end
end
if L6_6 == nil then
  return L7_7
end
L10_10 = L4_4
L11_11 = L6_6
L12_12 = L7_7
L13_13 = 32
L8_8(L9_9, L10_10, L11_11, L12_12, L13_13)
L10_10 = L6_6
if L8_8 then
  L10_10 = pcall
  L11_11 = mp
  L11_11 = L11_11.GetMOTWReferrerUrl
  L11_11 = L10_10(L11_11)
  L12_12 = mp
  L12_12 = L12_12.get_contextdata
  L13_13 = mp
  L13_13 = L13_13.CONTEXT_DATA_PROCESSDEVICEPATH
  L12_12 = L12_12(L13_13)
  L12_12 = L12_12 or ""
  L13_13 = mp
  L13_13 = L13_13.get_contextdata
  L14_14 = mp
  L14_14 = L14_14.CONTEXT_DATA_PROCESSNAME
  L13_13 = L13_13(L14_14)
  L13_13 = L13_13 or ""
  L14_14 = MpCommon
  L14_14 = L14_14.PathToWin32Path
  L15_15 = L12_12
  L14_14 = L14_14(L15_15)
  L12_12 = L14_14
  L15_15 = L12_12
  L14_14 = L12_12.lower
  L14_14 = L14_14(L15_15)
  L12_12 = L14_14
  L15_15 = L13_13
  L14_14 = L13_13.lower
  L14_14 = L14_14(L15_15)
  L13_13 = L14_14
  L14_14 = L12_12
  L15_15 = "\\"
  L16_16 = L13_13
  L14_14 = L14_14 .. L15_15 .. L16_16
  L15_15 = MpCommon
  L15_15 = L15_15.GetCurrentTimeT
  L15_15 = L15_15()
  L16_16 = 31536000
  L17_17 = mp
  L17_17 = L17_17.getfilesize
  L17_17 = L17_17()
  L18_18 = {}
  L18_18.type = "EFMRU"
  L18_18.ProcessImagePath = L14_14
  L18_18.ProcessPID = L2_2
  L18_18.timestamp = L15_15
  L18_18.FileName = L4_4
  L18_18.FileSize = L17_17
  L18_18.motwhosturl = L9_9 or ""
  L18_18.parent = L6_6
  L18_18.motwreferrerurl = L11_11 or ""
  L18_18.score = 1
  mp.set_mpattribute("BM_FilesFromArchivesWithMotw")
  AppendToRollingQueue("CC_filelist", L4_4, safeJsonSerialize(L18_18), L16_16, 32)
end
L8_8(L9_9)
return L8_8
