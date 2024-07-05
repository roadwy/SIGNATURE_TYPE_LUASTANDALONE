local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = 805306511
L1_1 = ""
L2_2 = MpDetection
L2_2 = L2_2.GetCurrentThreat
L2_2 = L2_2()
for L6_6, _FORV_7_ in L3_3(L4_4) do
  if _FORV_7_.Schema == "file" and crypto.bitand(_FORV_7_.Type, MpCommon.MPRESOURCE_TYPE_CONCRETE) == MpCommon.MPRESOURCE_TYPE_CONCRETE then
    Infrastructure_DetectionReportFolder(L0_0, _FORV_7_.Path, true)
    L1_1 = _FORV_7_.Path
  end
end
if L3_3 ~= nil then
  if L4_4 then
    L6_6 = L3_3
    L4_4(L5_5, L6_6, L0_0, false)
  end
  L6_6 = "Smart Monitor\\ReviverSoftSmartMonitorService.exe"
  L6_6 = L4_4
  if L5_5 then
    L6_6 = L0_0
    L5_5(L6_6, L4_4, true)
  end
end
if L4_4 ~= nil then
  L6_6 = "\\ReviverSoft\\"
  L6_6 = L5_5
  L6_6 = L6_6 .. "PC Reviver\\PCReviver.ini"
  if sysio.IsFileExists(L6_6) then
    Infrastructure_DetectionReportFolder(L0_0, L6_6, true)
    MpDetection.ReportResource("folder", L5_5, L0_0, false)
  end
  L6_6 = L5_5 .. "PC Reviver\\PC Reviver.lnk"
  if sysio.IsFileExists(L6_6) then
    Infrastructure_DetectionReportFolder(L0_0, L6_6, true)
    MpDetection.ReportResource("folder", L5_5, L0_0, false)
  end
end
L6_6 = L0_0
L5_5(L6_6, "ReviverSoftSmartMonitorService.exe")
L6_6 = L0_0
L5_5(L6_6, "SmartAlertsService.exe")
