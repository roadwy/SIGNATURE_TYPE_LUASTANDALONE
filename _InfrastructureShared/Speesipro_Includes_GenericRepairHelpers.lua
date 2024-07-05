local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18
function L0_0(A0_19, A1_20)
  if A1_20 == nil or A0_19 == nil then
    return
  end
  A1_20 = string.gsub(string.lower(A1_20), "^\\\\%?\\", "")
  if string.match(A1_20, "%a:\\program files\\.*\\.*%.exe") then
    Infrastructure_DetectionReportFolder(A0_19, A1_20, true)
    if Infrastructure_SplitThreatPath(A1_20) ~= nil then
      return Infrastructure_SplitThreatPath(A1_20)
    end
  end
  if string.match(A1_20, "\\appdata\\roaming\\.*\\.*%.exe") then
    Infrastructure_DetectionReportFolder(A0_19, A1_20, true)
  end
  return nil
end
L1_1 = {}
L1_1["Advancedpccare.com"] = 1
L2_2 = 805306515
L3_3 = MpDetection
L3_3 = L3_3.GetCurrentThreat
L3_3 = L3_3()
for L7_7, L8_8 in L4_4(L5_5) do
  L9_9 = L8_8.Schema
  if L9_9 == "file" then
    L9_9 = crypto
    L9_9 = L9_9.bitand
    L10_10 = L8_8.Type
    L11_11 = MpCommon
    L11_11 = L11_11.MPRESOURCE_TYPE_CONCRETE
    L9_9 = L9_9(L10_10, L11_11)
    L10_10 = MpCommon
    L10_10 = L10_10.MPRESOURCE_TYPE_CONCRETE
    if L9_9 == L10_10 then
      L9_9 = L0_0
      L10_10 = L2_2
      L11_11 = L8_8.Path
      L9_9 = L9_9(L10_10, L11_11)
      if L9_9 then
        L1_1[L9_9] = 1
      end
    end
  end
end
for L7_7, L8_8 in L4_4(L5_5) do
  L9_9 = Infrastructure_ReportSoftwareRegistryByKey
  L10_10 = L2_2
  L11_11 = L7_7
  L9_9(L10_10, L11_11)
  L9_9 = MpCommon
  L9_9 = L9_9.ExpandEnvironmentVariables
  L10_10 = "%ALLUSERSPROFILE%"
  L9_9 = L9_9(L10_10)
  L10_10 = L9_9
  L11_11 = "\\"
  L12_12 = L7_7
  L10_10 = L10_10 .. L11_11 .. L12_12 .. L13_13
  L11_11 = sysio
  L11_11 = L11_11.IsFolderExists
  L12_12 = L10_10
  L11_11 = L11_11(L12_12)
  if L11_11 then
    L11_11 = Infrastructure_DetectionReportFolder
    L12_12 = L2_2
    L11_11(L12_12, L13_13, L14_14)
  end
  L11_11 = L9_9
  L12_12 = "\\Microsoft\\Windows\\Start Menu\\Programs\\"
  L11_11 = L11_11 .. L12_12 .. L13_13 .. L14_14
  L12_12 = sysio
  L12_12 = L12_12.IsFolderExists
  L12_12 = L12_12(L13_13)
  if L12_12 then
    L12_12 = Infrastructure_DetectionReportFolder
    L12_12(L13_13, L14_14, L15_15)
  end
  L12_12 = L9_9
  L11_11 = L12_12 .. L13_13 .. L14_14 .. L15_15
  L12_12 = sysio
  L12_12 = L12_12.IsFolderExists
  L12_12 = L12_12(L13_13)
  if L12_12 then
    L12_12 = Infrastructure_DetectionReportFolder
    L12_12(L13_13, L14_14, L15_15)
  end
  L12_12 = sysio
  L12_12 = L12_12.ExpandFilePath
  L12_12 = L12_12(L13_13, L14_14)
  if L12_12 ~= nil then
    for L16_16, L17_17 in L13_13(L14_14) do
      L18_18 = L17_17
      L18_18 = L18_18 .. "\\" .. L7_7 .. "\\"
      if sysio.IsFolderExists(L18_18) then
        Infrastructure_DetectionReportFolder(L2_2, L18_18, true)
      end
    end
  end
end
L4_4(L5_5, L6_6)
L4_4(L5_5, L6_6)
L4_4(L5_5, L6_6)
L4_4(L5_5, L6_6)
