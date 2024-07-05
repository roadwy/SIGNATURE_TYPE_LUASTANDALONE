local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L1_1 = this_sigattrlog
L1_1 = L1_1[3]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[3]
  L0_0 = L1_1.utf8p1
end
if L0_0 ~= nil then
  L1_1 = taint
  L2_2 = L0_0
  L3_3 = "remote_file_created_taint"
  L1_1(L2_2, L3_3, L4_4)
  L1_1 = bm
  L1_1 = L1_1.get_current_process_startup_info
  L1_1 = L1_1()
  L2_2 = AppendToRollingQueue
  L3_3 = "queue_pid_taintfactory_b"
  L2_2(L3_3, L4_4, L5_5, 600)
  L2_2 = bm
  L2_2 = L2_2.get_process_relationships
  L3_3 = L1_1.ppid
  L3_3 = L2_2(L3_3)
  for _FORV_7_, _FORV_8_ in L4_4(L5_5) do
    bm.add_related_process(_FORV_8_.ppid)
    TrackPidAndTechniqueBM(_FORV_8_.ppid, "T1105", "CommandAndControl")
  end
  return L4_4
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
