local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_PROCESSNAME
L0_0 = L0_0(L1_1)
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L2_2 = L0_0
L1_1 = L0_0.lower
L1_1 = L1_1(L2_2)
L0_0 = L1_1
L1_1 = {
  L2_2,
  L3_3,
  L4_4,
  L5_5,
  L6_6,
  L7_7
}
L2_2 = "winrar.exe"
L3_3 = "7zg.exe"
L4_4 = "7za.exe"
L5_5 = "7z.exe"
L6_6 = "winzip64.exe"
L7_7 = "winzip32.exe"
L2_2 = contains
L3_3 = L0_0
L4_4 = L1_1
L2_2 = L2_2(L3_3, L4_4)
if not L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.getfilename
L3_3 = mp
L3_3 = L3_3.bitor
L4_4 = mp
L4_4 = L4_4.FILEPATH_QUERY_FULL
L5_5 = mp
L5_5 = L5_5.FILEPATH_QUERY_LOWERCASE
L13_13 = L3_3(L4_4, L5_5)
L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L3_3(L4_4, L5_5))
if L2_2 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.get_contextdata
L4_4 = mp
L4_4 = L4_4.CONTEXT_DATA_PROCESS_PPID
L3_3 = L3_3(L4_4)
if L3_3 == nil then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = IsKeyValuePairInRollingQueue
L5_5 = "CC_filelist"
L6_6 = L3_3
L7_7 = L2_2
L4_4 = L4_4(L5_5, L6_6, L7_7)
if not L4_4 then
  L4_4 = pcall
  L5_5 = mp
  L5_5 = L5_5.GetMOTWHostUrl
  L5_5 = L4_4(L5_5)
  L6_6 = pcall
  L7_7 = mp
  L7_7 = L7_7.GetMOTWReferrerUrl
  L7_7 = L6_6(L7_7)
  L8_8 = IsCommonFileSharingURL
  L9_9 = L5_5
  L8_8 = L8_8(L9_9)
  if not L8_8 then
    L8_8 = IsWebmailDownloadURL
    L9_9 = L5_5
    L8_8 = L8_8(L9_9)
    if not L8_8 then
      L8_8 = IsWebmailDownloadURL
      L9_9 = L7_7
      L8_8 = L8_8(L9_9)
    end
  elseif L8_8 then
    L8_8 = mp
    L8_8 = L8_8.CLEAN
    return L8_8
  end
  L8_8 = mp
  L8_8 = L8_8.get_contextdata
  L9_9 = mp
  L9_9 = L9_9.CONTEXT_DATA_PROCESSDEVICEPATH
  L8_8 = L8_8(L9_9)
  L8_8 = L8_8 or ""
  L9_9 = MpCommon
  L9_9 = L9_9.PathToWin32Path
  L10_10 = L8_8
  L9_9 = L9_9(L10_10)
  L8_8 = L9_9
  L10_10 = L8_8
  L9_9 = L8_8.lower
  L9_9 = L9_9(L10_10)
  L8_8 = L9_9
  L9_9 = L8_8
  L10_10 = "\\"
  L11_11 = L0_0
  L9_9 = L9_9 .. L10_10 .. L11_11
  L10_10 = MpCommon
  L10_10 = L10_10.GetCurrentTimeT
  L10_10 = L10_10()
  L11_11 = 31536000
  L12_12 = mp
  L12_12 = L12_12.getfilesize
  L12_12 = L12_12()
  L13_13 = {}
  L13_13.type = "WARCH"
  L13_13.ProcessImagePath = L9_9
  L13_13.ProcessPID = L3_3
  L13_13.timestamp = L10_10
  L13_13.FileName = L2_2
  L13_13.FileSize = L12_12
  L13_13.motwhosturl = L5_5 or ""
  L13_13.parent = ""
  L13_13.motwreferrerurl = ""
  L13_13.score = 1
  AppendToRollingQueue("CC_filelist", L2_2, safeJsonSerialize(L13_13), L11_11, 32)
end
L4_4 = "ArchivesWithMotW"
L5_5 = IsKeyValuePairInRollingQueue
L6_6 = L4_4
L7_7 = L3_3
L8_8 = L2_2
L5_5 = L5_5(L6_6, L7_7, L8_8)
if not L5_5 then
  L5_5 = 600
  L6_6 = 32
  L7_7 = AppendToRollingQueue
  L8_8 = L4_4
  L9_9 = L3_3
  L10_10 = L2_2
  L11_11 = L5_5
  L12_12 = L6_6
  L13_13 = 0
  L7_7(L8_8, L9_9, L10_10, L11_11, L12_12, L13_13)
  L7_7 = mp
  L7_7 = L7_7.set_mpattribute
  L8_8 = "MpDisableCaching"
  L7_7(L8_8)
  L7_7 = mp
  L7_7 = L7_7.INFECTED
  return L7_7
end
L5_5 = mp
L5_5 = L5_5.CLEAN
return L5_5
