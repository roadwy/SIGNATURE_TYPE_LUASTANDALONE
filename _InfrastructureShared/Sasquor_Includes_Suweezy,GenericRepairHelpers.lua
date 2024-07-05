local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10
L0_0 = 805306494
L1_1 = SuweezyReportExclusionLatents
L2_2 = L0_0
L1_1(L2_2)
L1_1, L2_2 = nil, nil
L3_3 = MpDetection
L3_3 = L3_3.GetCurrentThreat
L3_3 = L3_3()
for L7_7, L8_8 in L4_4(L5_5) do
  L9_9 = L8_8.Schema
  if L9_9 == "file" then
    L9_9 = crypto
    L9_9 = L9_9.bitand
    L10_10 = L8_8.Type
    L9_9 = L9_9(L10_10, MpCommon.MPRESOURCE_TYPE_CONCRETE)
    L10_10 = MpCommon
    L10_10 = L10_10.MPRESOURCE_TYPE_CONCRETE
    if L9_9 == L10_10 then
      L9_9 = Infrastructure_SplitThreatPath
      L10_10 = L8_8.Path
      L10_10 = L9_9(L10_10)
      if L9_9(L10_10) == "dll" or L9_9(L10_10) == "exe" then
        Infrastructure_DetectionReportFolder(L0_0, L8_8.Path, true)
        if string.sub(string.lower(L8_8.Path), -18) == "qqbrowserframe.dll" then
          L1_1 = L8_8.Path
        end
        if string.sub(string.lower(L8_8.Path), -10) == "update.dll" then
          L2_2 = L8_8.Path
        end
      end
    end
  end
end
if L1_1 ~= nil then
  L8_8 = sysio
  L8_8 = L8_8.IsFileExists
  L9_9 = L4_4
  L10_10 = "\\QQBrowser.exe"
  L9_9 = L9_9 .. L10_10
  L8_8 = L8_8(L9_9)
  if L8_8 then
    L8_8 = MpDetection
    L8_8 = L8_8.ReportResource
    L9_9 = "file"
    L10_10 = L4_4
    L10_10 = L10_10 .. "\\QQBrowser.exe"
    L8_8(L9_9, L10_10, L0_0, false)
  end
end
if L2_2 ~= nil then
  L8_8 = sysio
  L8_8 = L8_8.IsFileExists
  L9_9 = L4_4
  L10_10 = "\\BaofengUpdate_U.exe"
  L9_9 = L9_9 .. L10_10
  L8_8 = L8_8(L9_9)
  if L8_8 then
    L8_8 = MpDetection
    L8_8 = L8_8.ReportResource
    L9_9 = "file"
    L10_10 = L4_4
    L10_10 = L10_10 .. "\\BaofengUpdate_U.exe"
    L8_8(L9_9, L10_10, L0_0, false)
  end
end
if L4_4 ~= nil then
  for L8_8, L9_9 in L5_5(L6_6) do
    L10_10 = L9_9
    L10_10 = L10_10 .. "\\SNARER\\Snarer.dll"
    if sysio.IsFileExists(L10_10) then
      Infrastructure_DetectionReportFolder(L0_0, L10_10, true)
    end
    L10_10 = L9_9 .. "\\NPASRE\\Snare.dll"
    if sysio.IsFileExists(L10_10) then
      Infrastructure_DetectionReportFolder(L0_0, L10_10, true)
    end
  end
end
L5_5(L6_6, L7_7)
L8_8 = "SNARER"
L5_5(L6_6, L7_7, L8_8)
L5_5(L6_6, L7_7)
L8_8 = "NPASRE"
L5_5(L6_6, L7_7, L8_8)
L8_8 = "\\MIO\\MIO.exe"
if L6_6 then
  L8_8 = L5_5
  L9_9 = "\\MIO\\MIO.exe"
  L8_8 = L8_8 .. L9_9
  L9_9 = true
  L6_6(L7_7, L8_8, L9_9)
end
L8_8 = L6_6
L9_9 = "\\MIO\\MIO.exe"
L8_8 = L8_8 .. L9_9
if L7_7 then
  L8_8 = L0_0
  L9_9 = L6_6
  L10_10 = "\\MIO\\MIO.exe"
  L9_9 = L9_9 .. L10_10
  L10_10 = true
  L7_7(L8_8, L9_9, L10_10)
end
L8_8 = L0_0
L9_9 = "GoogleUpdate.exe"
L7_7(L8_8, L9_9)
L8_8 = L0_0
L9_9 = "GoogleUpdaterService.exe"
L7_7(L8_8, L9_9)
L8_8 = L0_0
L9_9 = "WinArcher"
L7_7(L8_8, L9_9)
L8_8 = L0_0
L9_9 = "ourluckysitesSoftware"
L7_7(L8_8, L9_9)
