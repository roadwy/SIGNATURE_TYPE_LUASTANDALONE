local L0_0, L1_1, L2_2, L3_3
L0_0 = MpDetection
L0_0 = L0_0.ScanResource
L1_1 = "rootcert://"
L0_0(L1_1)
L0_0 = {}
L1_1 = pcall
L2_2 = Infrastructure_ScanFileLessMalware
L2_2 = L1_1(L2_2)
if not L1_1 then
  L0_0.ScanFileLessMalware = L2_2
  if L2_2 == "Scanning aborted by the user!" then
    L3_3 = error
    L3_3(MpCommon.JsonSerialize(L0_0))
  end
end
L3_3 = pcall
L2_2, L3_3 = Infrastructure_ScanEvotobExclusion, L3_3(Infrastructure_ScanEvotobExclusion)
L1_1 = L3_3
if not L1_1 then
  L0_0.ScanEvotobExclusion = L2_2
  if L2_2 == "Scanning aborted by the user!" then
    L3_3 = error
    L3_3(MpCommon.JsonSerialize(L0_0))
  end
end
L3_3 = pcall
L2_2, L3_3 = Infrastructure_ScanDetrahere, L3_3(Infrastructure_ScanDetrahere)
L1_1 = L3_3
if not L1_1 then
  L0_0.ScanDetrahere = L2_2
  if L2_2 == "Scanning aborted by the user!" then
    L3_3 = error
    L3_3(MpCommon.JsonSerialize(L0_0))
  end
end
L3_3 = pcall
L2_2, L3_3 = MpDetection.ScanResource, L3_3(MpDetection.ScanResource, "regkeyvalue://hklm\\software\\policies\\microsoft\\windows\\windowsupdate\\\\WUServer")
L1_1 = L3_3
if not L1_1 then
  L0_0.ScanResource_WUServer = L2_2
  if L2_2 == "Scanning aborted by the user!" then
    L3_3 = error
    L3_3(MpCommon.JsonSerialize(L0_0))
  end
end
L3_3 = pcall
L2_2, L3_3 = MpDetection.ScanResource, L3_3(MpDetection.ScanResource, "regkeyvalue://hklm\\system\\currentcontrolset\\services\\\\rpcsrv")
L1_1 = L3_3
if not L1_1 then
  L0_0.ScanResource_rpcsrv = L2_2
  if L2_2 == "Scanning aborted by the user!" then
    L3_3 = error
    L3_3(MpCommon.JsonSerialize(L0_0))
  end
end
L3_3 = pcall
L2_2, L3_3 = MpDetection.ScanResource, L3_3(MpDetection.ScanResource, "file://%ProgramData%\\Deliver\\sclm.dll")
L1_1 = L3_3
if not L1_1 then
  L0_0.ScanResource_sclm = L2_2
  if L2_2 == "Scanning aborted by the user!" then
    L3_3 = error
    L3_3(MpCommon.JsonSerialize(L0_0))
  end
end
L3_3 = pcall
L2_2, L3_3 = MpDetection.ScanResource, L3_3(MpDetection.ScanResource, "regkeyvalue://hklm\\system\\currentcontrolset\\control\\secureboot\\state\\\\policypublisher")
L1_1 = L3_3
if not L1_1 then
  L0_0.ScanResource_policypublisher = L2_2
  if L2_2 == "Scanning aborted by the user!" then
    L3_3 = error
    L3_3(MpCommon.JsonSerialize(L0_0))
  end
end
L3_3 = pcall
L2_2, L3_3 = Infrastructure_ScanBITSJobs, L3_3(Infrastructure_ScanBITSJobs)
L1_1 = L3_3
if not L1_1 then
  L0_0.ScanBITSJobs = L2_2
  if L2_2 == "Scanning aborted by the user!" then
    L3_3 = error
    L3_3(MpCommon.JsonSerialize(L0_0))
  end
end
L3_3 = pcall
L2_2, L3_3 = Infrastructure_ScanSuweezy, L3_3(Infrastructure_ScanSuweezy, "HKLM\\SOFTWARE\\Microsoft\\Windows Defender\\Exclusions\\Paths")
L1_1 = L3_3
if not L1_1 then
  L0_0.ScanSuweezy_Defender = L2_2
  if L2_2 == "Scanning aborted by the user!" then
    L3_3 = error
    L3_3(MpCommon.JsonSerialize(L0_0))
  end
end
L3_3 = pcall
L2_2, L3_3 = Infrastructure_ScanSuweezy, L3_3(Infrastructure_ScanSuweezy, "HKLM\\SOFTWARE\\Microsoft\\Microsoft Antimalware\\Exclusions\\Paths")
L1_1 = L3_3
if not L1_1 then
  L0_0.ScanSuweezy_Antimalware = L2_2
  if L2_2 == "Scanning aborted by the user!" then
    L3_3 = error
    L3_3(MpCommon.JsonSerialize(L0_0))
  end
end
L3_3 = pcall
L2_2, L3_3 = Infrastructure_NeobarReportPathExclusions, L3_3(Infrastructure_NeobarReportPathExclusions, "HKLM\\SOFTWARE\\Policies\\Microsoft\\Windows Defender\\Exclusions\\Paths")
L1_1 = L3_3
if not L1_1 then
  L0_0.NeobarReportPathExclusions_Policies = L2_2
  if L2_2 == "Scanning aborted by the user!" then
    L3_3 = error
    L3_3(MpCommon.JsonSerialize(L0_0))
  end
end
L3_3 = pcall
L2_2, L3_3 = Infrastructure_NeobarReportPathExclusions, L3_3(Infrastructure_NeobarReportPathExclusions, "HKLM\\SOFTWARE\\Microsoft\\Windows Defender\\Exclusions\\Paths")
L1_1 = L3_3
if not L1_1 then
  L0_0.NeobarReportPathExclusions = L2_2
  if L2_2 == "Scanning aborted by the user!" then
    L3_3 = error
    L3_3(MpCommon.JsonSerialize(L0_0))
  end
end
L3_3 = pcall
L2_2, L3_3 = Infrastructure_SoctuseerReportPathExclusions, L3_3(Infrastructure_SoctuseerReportPathExclusions, "HKLM\\SOFTWARE\\Policies\\Microsoft\\Windows Defender\\Exclusions\\Paths")
L1_1 = L3_3
if not L1_1 then
  L0_0.SoctuseerReportPathExclusions_Policies = L2_2
  if L2_2 == "Scanning aborted by the user!" then
    L3_3 = error
    L3_3(MpCommon.JsonSerialize(L0_0))
  end
end
L3_3 = pcall
L2_2, L3_3 = Infrastructure_SoctuseerReportPathExclusions, L3_3(Infrastructure_SoctuseerReportPathExclusions, "HKLM\\SOFTWARE\\Microsoft\\Windows Defender\\Exclusions\\Paths")
L1_1 = L3_3
if not L1_1 then
  L0_0.SoctuseerReportPathExclusions = L2_2
  if L2_2 == "Scanning aborted by the user!" then
    L3_3 = error
    L3_3(MpCommon.JsonSerialize(L0_0))
  end
end
function L3_3()
  local L0_4, L1_5, L2_6, L3_7, L4_8
  L0_4 = MpCommon
  L0_4 = L0_4.QueryDynamicConfigString
  L0_4 = L0_4(L1_5)
  for L4_8 in L1_5(L2_6, L3_7) do
    MpDetection.ScanResource(L4_8)
  end
end
L1_1, L2_2 = pcall(L3_3)
if not L1_1 then
  L0_0.ScanExtraAseps = L2_2
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
L1_1, L2_2 = pcall(Infrastructure_ScanKryptomixASEPKeyPath)
if not L1_1 then
  L0_0.ScanKryptomixASEPKeyPath = L2_2
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
L1_1, L2_2 = pcall(Infrastructure_MSRTDASTelemetry)
if not L1_1 then
  L0_0.MSRTDASTelemetry = L2_2
  if L2_2 == "Scanning aborted by the user!" then
    error(MpCommon.JsonSerialize(L0_0))
  end
end
L1_1, L2_2 = pcall(Infrastructure_ScanMpCfgDefaults)
if not L1_1 then
  L0_0.ScanMpCfgDefaults = L2_2
  if L2_2 == "Scanning aborted by the user!" then
    error(MpCommon.JsonSerialize(L0_0))
  end
end
L1_1, L2_2 = pcall(Infrastructure_ScanEmotetV5)
if not L1_1 then
  L0_0.ScanEmotetV5 = L2_2
  if L2_2 == "Scanning aborted by the user!" then
    error(MpCommon.JsonSerialize(L0_0))
  end
end
L1_1, L2_2 = pcall(Infrastructure_ScanADFSPath)
if not L1_1 then
  L0_0.ScanADFSPath = L2_2
  if L2_2 == "Scanning aborted by the user!" then
    error(MpCommon.JsonSerialize(L0_0))
  end
end
L1_1, L2_2 = pcall(Infrastructure_NewmanScan)
if not L1_1 then
  L0_0.NewmanScan = L2_2
  if L2_2 == "Scanning aborted by the user!" then
    error(MpCommon.JsonSerialize(L0_0))
  end
end
L1_1, L2_2 = pcall(Infrastructure_3CXScan)
if not L1_1 then
  L0_0["3CXScan"] = L2_2
  if L2_2 == "Scanning aborted by the user!" then
    error(MpCommon.JsonSerialize(L0_0))
  end
end
L1_1, L2_2 = pcall(Infrastructure_ScanUefiEnvironmentVariables)
if not L1_1 then
  L0_0.ScanUefiEnvironmentVariables = L2_2
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
L1_1, L2_2 = pcall(Infrastructure_AsrLinkScan, "qscanmachine")
if not L1_1 then
  L0_0.Infrastructure_AsrLinkScan = L2_2
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
L1_1, L2_2 = pcall(Infrastructure_FirstTimeAT)
if not L1_1 then
  L0_0.FirstTimeAT = L2_2
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
L1_1, L2_2 = pcall(Infrastructure_MicrosoftIRScan)
if not L1_1 then
  L0_0.MicrosoftIRScan = L2_2
  if L2_2 == "Scanning aborted by the user!" then
    error(MpCommon.JsonSerialize(L0_0))
  end
end
if next(L0_0) ~= nil then
  error(MpCommon.JsonSerialize(L0_0))
end
