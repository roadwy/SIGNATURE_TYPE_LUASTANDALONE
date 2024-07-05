local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_HAS_MOTW_ADS
L0_0 = L0_0(L1_1)
if L0_0 ~= true then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pcall
L1_1 = mp
L1_1 = L1_1.GetMOTWReferrerUrl
L1_1 = L0_0(L1_1)
if L1_1 == nil or L1_1 == "" then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L3_3 = L1_1
L2_2 = L1_1.lower
L2_2 = L2_2(L3_3)
L1_1 = L2_2
L2_2 = StringStartsWith
L3_3 = L1_1
L4_4 = "http"
L2_2 = L2_2(L3_3, L4_4)
if not L2_2 then
  L2_2 = StringStartsWith
  L3_3 = L1_1
  L4_4 = "www"
  L2_2 = L2_2(L3_3, L4_4)
else
  if L2_2 then
    L2_2 = mp
    L2_2 = L2_2.set_mpattribute
    L3_3 = "FileHasMotwReferrerUrl_web"
    L2_2(L3_3)
end
else
  L2_2 = mp
  L2_2 = L2_2.set_mpattribute
  L3_3 = "FileHasMotwReferrerUrl_file"
  L2_2(L3_3)
  L2_2 = mp
  L2_2 = L2_2.get_mpattribute
  L3_3 = "LUA:FileSizeGT500M.A"
  L2_2 = L2_2(L3_3)
  if L2_2 then
    L2_2 = sysio
    L2_2 = L2_2.IsFileExists
    L3_3 = L1_1
    L2_2 = L2_2(L3_3)
    if L2_2 then
      L2_2 = mp
      L2_2 = L2_2.getfilesize
      L2_2 = L2_2()
      L3_3 = sysio
      L3_3 = L3_3.GetFileSize
      L4_4 = L1_1
      L3_3 = L3_3(L4_4)
      L4_4 = 80
      if L3_3 > 0 then
        L5_5 = L2_2 / L3_3
        if L4_4 < L5_5 then
          L5_5 = mp
          L5_5 = L5_5.set_mpattribute
          L6_6 = "Lua:HighlyCompressedFileFromArchiveWithMotw"
          L5_5(L6_6)
          L5_5 = mp
          L5_5 = L5_5.get_contextdata
          L6_6 = mp
          L6_6 = L6_6.CONTEXT_DATA_PROCESSDEVICEPATH
          L5_5 = L5_5(L6_6)
          L6_6 = mp
          L6_6 = L6_6.get_contextdata
          L7_7 = mp
          L7_7 = L7_7.CONTEXT_DATA_PROCESS_PPID
          L6_6 = L6_6(L7_7)
          L7_7 = mp
          L7_7 = L7_7.get_contextdata
          L8_8 = mp
          L8_8 = L8_8.CONTEXT_DATA_PROCESSNAME
          L7_7 = L7_7(L8_8)
          L8_8 = mp
          L8_8 = L8_8.getfilename
          L9_9 = mp
          L9_9 = L9_9.bitor
          L10_10 = mp
          L10_10 = L10_10.FILEPATH_QUERY_FULL
          L11_11 = mp
          L11_11 = L11_11.FILEPATH_QUERY_LOWERCASE
          L11_11 = L9_9(L10_10, L11_11)
          L8_8 = L8_8(L9_9, L10_10, L11_11, L9_9(L10_10, L11_11))
          if L5_5 ~= nil and L7_7 ~= nil and L6_6 ~= nil and L8_8 ~= nil then
            L9_9 = MpCommon
            L9_9 = L9_9.PathToWin32Path
            L10_10 = L5_5
            L9_9 = L9_9(L10_10)
            L10_10 = L9_9
            L9_9 = L9_9.lower
            L9_9 = L9_9(L10_10)
            L5_5 = L9_9
            L9_9 = MpCommon
            L9_9 = L9_9.GetCurrentTimeT
            L9_9 = L9_9()
            L10_10 = "EFMRU::ProcessImagePath="
            L11_11 = L5_5
            L10_10 = L10_10 .. L11_11 .. "\\" .. L7_7:lower() .. ";pid=" .. L6_6 .. ";timestamp=" .. L9_9 .. ";FilePath=" .. L8_8 .. ";motwReferrerURL=" .. L1_1 .. ";ParentSize=" .. L3_3
            L11_11 = mp
            L11_11 = L11_11.set_mpattribute
            L11_11(string.format("MpInternal_researchdata=LargeFileData=%s", L10_10))
            L11_11 = IsKeyInRollingQueue
            L11_11 = L11_11("CC_filelist", L1_1)
            if L11_11 then
              L11_11 = 31536000
              AppendToRollingQueue("CC_filelist", L8_8, L10_10, L11_11, 32)
            end
          end
          L9_9 = mp
          L9_9 = L9_9.INFECTED
          return L9_9
        end
      end
    end
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
