local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = sysio
L0_0 = L0_0.IsFileExists
L1_1 = "/run/yum.pid"
L0_0 = L0_0(L1_1)
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = "remote_file_created_taint"
L1_1, L2_2 = nil, nil
L3_3 = this_sigattrlog
L3_3 = L3_3[13]
L3_3 = L3_3.matched
if L3_3 then
  L3_3 = this_sigattrlog
  L3_3 = L3_3[13]
  L1_1 = L3_3.utf8p1
  L3_3 = this_sigattrlog
  L3_3 = L3_3[13]
  L2_2 = L3_3.ppid
else
  L3_3 = this_sigattrlog
  L3_3 = L3_3[14]
  L3_3 = L3_3.matched
  if L3_3 then
    L3_3 = this_sigattrlog
    L3_3 = L3_3[14]
    L1_1 = L3_3.utf8p1
    L3_3 = this_sigattrlog
    L3_3 = L3_3[14]
    L2_2 = L3_3.ppid
  end
end
if L1_1 ~= nil then
  L3_3 = isParentPackageManager
  L4_4 = L2_2
  L3_3 = L3_3(L4_4)
  if L3_3 then
    L3_3 = mp
    L3_3 = L3_3.CLEAN
    return L3_3
  end
  L3_3 = taint
  L4_4 = L1_1
  L5_5 = L0_0
  L3_3(L4_4, L5_5, L6_6)
  L3_3 = bm
  L3_3 = L3_3.get_current_process_startup_info
  L3_3 = L3_3()
  L4_4 = bm
  L4_4 = L4_4.get_process_relationships
  L5_5 = L3_3.ppid
  L5_5 = L4_4(L5_5)
  for _FORV_9_, _FORV_10_ in L6_6(L7_7) do
    bm.add_related_process(_FORV_10_.ppid)
    TrackPidAndTechniqueBM(_FORV_10_.ppid, "T1105", "CommandAndControl")
  end
  return L6_6
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
