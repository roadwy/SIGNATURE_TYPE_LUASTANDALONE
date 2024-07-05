local L0_0, L1_1, L2_2
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
if L0_0 then
  L1_1 = L0_0.ppid
elseif not L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = MpCommon
L1_1 = L1_1.GetProcessAttributeValue
L2_2 = L0_0.ppid
L1_1 = L1_1(L2_2, "PFApp_Parent")
if not L1_1 then
  L2_2 = MpCommon
  L2_2 = L2_2.GetProcessAttributeValue
  L2_2 = L2_2(L0_0.ppid, "inherit:PFApp_Parent")
  L1_1 = L2_2
end
if not L1_1 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = GetRollingQueueCountForKey
L2_2 = L2_2("PFApp_Parent_FileDropped", L1_1)
if L2_2 == 0 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = GetRollingQueueKeyValues
L2_2 = L2_2("PFApp_Parent_FileDropped", L1_1)
for _FORV_6_, _FORV_7_ in ipairs(L2_2) do
  bm.add_related_string("Shellcode", _FORV_7_.value, bm.RelatedStringBMReport)
  bm.add_related_file(_FORV_7_.value)
end
bm.add_related_string("SrvName", L1_1, bm.RelatedStringBMReport)
bm.add_related_string("AppName", getWebApplicationType(L0_0.ppid), bm.RelatedStringBMReport)
reportSessionInformation()
add_parents()
reportRelevantUntrustedEntities(0)
if this_sigattrlog[1].matched then
  bm.add_related_string("DetectorID", "LolBinsWin", bm.RelatedStringBMReport)
elseif this_sigattrlog[2].matched then
  bm.add_related_string("DetectorID", "ExploratoryCommands", bm.RelatedStringBMReport)
elseif this_sigattrlog[3].matched then
  bm.add_related_string("DetectorID", "InterestingPSCommands", bm.RelatedStringBMReport)
elseif this_sigattrlog[4].matched then
  bm.add_related_string("DetectorID", "InterestingCmdArgs", bm.RelatedStringBMReport)
end
if bm.get_current_process_startup_info() then
  IncreaseProcessAnomalyScore(bm.get_current_process_startup_info().ppid, 5, "AnomalousFileDropExploratoryCmd", "PFApp_Parent")
end
return mp.INFECTED
