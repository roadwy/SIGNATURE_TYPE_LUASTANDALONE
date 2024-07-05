local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L0_0 = 805306513
L1_1 = MpDetection
L1_1 = L1_1.GetCurrentThreat
L1_1 = L1_1()
for L5_5, L6_6 in L2_2(L3_3) do
  L7_7 = L6_6.Schema
  if L7_7 == "file" then
    L7_7 = crypto
    L7_7 = L7_7.bitand
    L8_8 = L6_6.Type
    L9_9 = MpCommon
    L9_9 = L9_9.MPRESOURCE_TYPE_CONCRETE
    L7_7 = L7_7(L8_8, L9_9)
    L8_8 = MpCommon
    L8_8 = L8_8.MPRESOURCE_TYPE_CONCRETE
    if L7_7 == L8_8 then
      L7_7 = Infrastructure_DetectionReportFolder
      L8_8 = L0_0
      L9_9 = L6_6.Path
      L7_7(L8_8, L9_9, true)
    end
  end
end
if L2_2 ~= nil then
  for L6_6, L7_7 in L3_3(L4_4) do
    L8_8 = L7_7
    L9_9 = "\\System Healer\\"
    L8_8 = L8_8 .. L9_9
    L9_9 = L8_8
    L9_9 = L9_9 .. "Languages\\English.json"
    if sysio.IsFileExists(L9_9) then
      Infrastructure_DetectionReportFolder(L0_0, L9_9, true)
      MpDetection.ReportResource("folder", L8_8, L0_0, false)
    end
  end
end
if L3_3 ~= nil then
  L6_6 = L4_4
  if L5_5 then
    L6_6 = L0_0
    L7_7 = L4_4
    L8_8 = true
    L5_5(L6_6, L7_7, L8_8)
  end
end
if L3_3 ~= nil then
  L6_6 = L4_4
  if L5_5 then
    L6_6 = "file"
    L7_7 = L4_4
    L8_8 = L0_0
    L9_9 = false
    L5_5(L6_6, L7_7, L8_8, L9_9)
  end
end
L6_6 = "System Healer"
L4_4(L5_5, L6_6)
