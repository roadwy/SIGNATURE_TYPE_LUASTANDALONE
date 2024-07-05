local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = 805306512
L1_1 = MpDetection
L1_1 = L1_1.GetCurrentThreat
L1_1 = L1_1()
for L5_5, L6_6 in L2_2(L3_3) do
  L7_7 = L6_6.Schema
  if L7_7 == "file" then
    L7_7 = crypto
    L7_7 = L7_7.bitand
    L8_8 = L6_6.Type
    L7_7 = L7_7(L8_8, MpCommon.MPRESOURCE_TYPE_CONCRETE)
    L8_8 = MpCommon
    L8_8 = L8_8.MPRESOURCE_TYPE_CONCRETE
    if L7_7 == L8_8 then
      L7_7 = Infrastructure_DetectionReportFolder
      L8_8 = L0_0
      L7_7(L8_8, L6_6.Path, true)
    end
  end
end
if L2_2 ~= nil then
  for L7_7, L8_8 in L4_4(L5_5) do
    if sysio.IsFileExists(L3_3) then
      Infrastructure_DetectionReportFolder(L0_0, L3_3, true)
    end
  end
end
L3_3(L4_4, L5_5)
L7_7 = false
L3_3(L4_4, L5_5, L6_6, L7_7)
