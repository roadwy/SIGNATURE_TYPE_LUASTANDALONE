local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = "sensitive_cat_redirection"
L1_1 = bm
L1_1 = L1_1.get_current_process_startup_info
L1_1 = L1_1()
if L1_1 ~= nil then
  L2_2 = L1_1.ppid
  if L2_2 ~= nil then
    L2_2 = L1_1.ppid
  end
elseif L2_2 == "" then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.GetParentProcInfo
L3_3 = L1_1.ppid
L2_2 = L2_2(L3_3)
if L2_2 ~= nil then
  L3_3 = L2_2.ppid
elseif L3_3 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = string
L3_3 = L3_3.lower
L4_4 = bm
L4_4 = L4_4.get_imagepath
L6_6 = L4_4()
L3_3 = L3_3(L4_4, L5_5, L6_6, L4_4())
L4_4 = string
L4_4 = L4_4.lower
L5_5 = L2_2.image_path
L4_4 = L4_4(L5_5)
L5_5 = L1_1.command_line
L6_6 = mp
L6_6 = L6_6.GetProcessCommandLine
L6_6 = L6_6(L2_2.ppid)
if string.find(L6_6, "/tmp/.SummitLxAssetAgent.users.tmp", 1, true) ~= nil then
  return mp.CLEAN
end
AppendToRollingQueue(L0_0, "scr_image_path", L3_3)
AppendToRollingQueue(L0_0, "scr_process_cmdline", L5_5)
AppendToRollingQueue(L0_0, "scr_parent_image_path", L4_4)
AppendToRollingQueue(L0_0, "scr_parent_process_cmdline", L6_6)
TrackPidAndTechniqueBM("BM", "T1074", "Collection_Redirection_mt2023", 300)
reportRelatedBmHits()
return mp.INFECTED
