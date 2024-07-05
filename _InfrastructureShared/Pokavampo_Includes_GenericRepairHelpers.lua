local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14
L0_0 = MpDetection
L0_0 = L0_0.GetCurrentThreat
L0_0 = L0_0()
if L1_1 == "SoftwareBundler:Win32/Pokavampo" then
  for L4_4, L5_5 in L1_1(L2_2) do
    L6_6 = L5_5.Schema
    if L6_6 == "file" then
      L6_6 = crypto
      L6_6 = L6_6.bitand
      L7_7 = L5_5.Type
      L8_8 = MpCommon
      L8_8 = L8_8.MPRESOURCE_TYPE_CONCRETE
      L6_6 = L6_6(L7_7, L8_8)
      L7_7 = MpCommon
      L7_7 = L7_7.MPRESOURCE_TYPE_CONCRETE
      if L6_6 == L7_7 then
        L6_6 = Infrastructure_DetectionReportUninstallEntriesFromFolder
        L7_7 = 805306499
        L8_8 = L5_5.Path
        L6_6(L7_7, L8_8)
        L6_6 = Infrastructure_DetectionReportFolder
        L7_7 = 805306499
        L8_8 = L5_5.Path
        L6_6(L7_7, L8_8, L9_9)
        L6_6 = Infrastructure_GetEnvironmentPath
        L7_7 = "%common_appdata%"
        L6_6 = L6_6(L7_7)
        if L6_6 then
          L7_7 = MpDetection
          L7_7 = L7_7.ScanResource
          L8_8 = "folder://"
          L8_8 = L8_8 .. L9_9 .. L10_10
          L7_7(L8_8)
        end
        L7_7 = MpCommon
        L7_7 = L7_7.ExpandEnvironmentVariables
        L8_8 = "%program_files%"
        L7_7 = L7_7(L8_8)
        if L7_7 then
          L8_8 = sysio
          L8_8 = L8_8.FindFolders
          L8_8 = L8_8(L9_9, L10_10, L11_11)
          for L12_12, L13_13 in L9_9(L10_10) do
            L14_14 = MpDetection
            L14_14 = L14_14.ScanResource
            L14_14("folder://" .. L13_13)
          end
        end
        L8_8 = MpCommon
        L8_8 = L8_8.ExpandEnvironmentVariables
        L8_8 = L8_8(L9_9)
        if L8_8 then
          for L13_13, L14_14 in L10_10(L11_11) do
            MpDetection.ScanResource("folder://" .. L14_14)
          end
        end
      end
    end
  end
end
