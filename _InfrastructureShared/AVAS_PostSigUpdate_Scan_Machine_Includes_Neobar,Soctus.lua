local L0_0, L1_1, L2_2
L0_0 = {}
L1_1 = pcall
L2_2 = Infrastructure_NeobarReportPathExclusions
L2_2 = L1_1(L2_2, "HKLM\\SOFTWARE\\Policies\\Microsoft\\Windows Defender\\Exclusions\\Paths")
if not L1_1 then
  L0_0.NeobarReportPathExclusions_Policies = L2_2
  if L2_2 == "Scanning aborted by the user!" then
    error(MpCommon.JsonSerialize(L0_0))
  end
end
L1_1, L2_2 = pcall(Infrastructure_NeobarReportPathExclusions, "HKLM\\SOFTWARE\\Microsoft\\Windows Defender\\Exclusions\\Paths")
if not L1_1 then
  L0_0.NeobarReportPathExclusions = L2_2
  if L2_2 == "Scanning aborted by the user!" then
    error(MpCommon.JsonSerialize(L0_0))
  end
end
L1_1, L2_2 = pcall(Infrastructure_SoctuseerReportPathExclusions, "HKLM\\SOFTWARE\\Policies\\Microsoft\\Windows Defender\\Exclusions\\Paths")
if not L1_1 then
  L0_0.SoctuseerReportPathExclusions_Policies = L2_2
  if L2_2 == "Scanning aborted by the user!" then
    error(MpCommon.JsonSerialize(L0_0))
  end
end
L1_1, L2_2 = pcall(Infrastructure_SoctuseerReportPathExclusions, "HKLM\\SOFTWARE\\Microsoft\\Windows Defender\\Exclusions\\Paths")
if not L1_1 then
  L0_0.SoctuseerReportPathExclusions = L2_2
  if L2_2 == "Scanning aborted by the user!" then
    error(MpCommon.JsonSerialize(L0_0))
  end
end
L1_1, L2_2 = pcall(Infrastructure_ScanWDFirewallBlockRules)
if not L1_1 then
  L0_0.ScanWDFirewallBlockRules = L2_2
  if L2_2 == "Scanning aborted by the user!" then
    error(MpCommon.JsonSerialize(L0_0))
  end
end
L1_1, L2_2 = pcall(Infrastructure_AntiTamperingCheckAndRepair)
if not L1_1 then
  L0_0.AntiTamperingCheckAndRepair = L2_2
  if L2_2 == "Scanning aborted by the user!" then
    error(MpCommon.JsonSerialize(L0_0))
  end
end
L1_1, L2_2 = pcall(Infrastructure_ScanEFISystemPartitions)
if not L1_1 then
  L0_0.ScanEFISystemPartitions = L2_2
  if L2_2 == "Scanning aborted by the user!" then
    error(MpCommon.JsonSerialize(L0_0))
  end
end
L1_1, L2_2 = pcall(Infrastructure_FirstTimeAT)
if not L1_1 then
  L0_0.FirstTimeAT = L2_2
  if L2_2 == "Scanning aborted by the user!" then
    error(MpCommon.JsonSerialize(L0_0))
  end
end
L1_1, L2_2 = pcall(Infrastructure_ScanLeviathon)
if not L1_1 then
  L0_0.ScanLeviathon = L2_2
  if L2_2 == "Scanning aborted by the user!" then
    error(MpCommon.JsonSerialize(L0_0))
  end
end
L1_1, L2_2 = pcall(Infrastructure_ScanCFABootProtState)
if not L1_1 then
  L0_0.ScanCFABootProtState = L2_2
  if L2_2 == "Scanning aborted by the user!" then
    error(MpCommon.JsonSerialize(L0_0))
  end
end
L1_1, L2_2 = pcall(Infrastructure_ScanMpEtwPublisher)
if not L1_1 then
  L0_0.ScanMpEtwPublisher = L2_2
  if L2_2 == "Scanning aborted by the user!" then
    error(MpCommon.JsonSerialize(L0_0))
  end
end
L1_1, L2_2 = pcall(Infrastructure_DLAMTelemetry)
if not L1_1 then
  L0_0.DLAMTelemetry = L2_2
  if L2_2 == "Scanning aborted by the user!" then
    error(MpCommon.JsonSerialize(L0_0))
  end
end
L1_1, L2_2 = pcall(Infrastructure_ExclusionTelemetry)
if not L1_1 then
  L0_0.ExclusionTelemetry = L2_2
  if L2_2 == "Scanning aborted by the user!" then
    error(MpCommon.JsonSerialize(L0_0))
  end
end
L1_1, L2_2 = pcall(Infrastructure_AsrLinkScan, "postsig")
if not L1_1 then
  L0_0.AsrLinkScan = L2_2
  if L2_2 == "Scanning aborted by the user!" then
    error(MpCommon.JsonSerialize(L0_0))
  end
end
if next(L0_0) ~= nil then
  error(MpCommon.JsonSerialize(L0_0))
end
