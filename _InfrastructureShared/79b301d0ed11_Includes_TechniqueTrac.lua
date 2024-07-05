local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L0_0 = L1_1.ppid
end
if L0_0 then
  L1_1 = bm
  L1_1 = L1_1.get_process_notifications
  L1_1 = L1_1(L2_2)
  if L1_1 ~= nil then
    for L5_5, L6_6 in L2_2(L3_3) do
      L7_7 = L6_6.tag
      L8_8 = bm
      L8_8 = L8_8.ActionTagFileCreate
      if L7_7 == L8_8 then
        L7_7 = L6_6.rawutf8p1
        L8_8 = taint
        L9_9 = L7_7
        L10_10 = "remote_file_created_taint"
        L8_8(L9_9, L10_10, L11_11)
        L8_8 = AppendToRollingQueue
        L9_9 = "queue_pid_taintfactory_a"
        L10_10 = L0_0
        L8_8(L9_9, L10_10, L11_11, L12_12)
        L8_8 = bm
        L8_8 = L8_8.get_current_process_startup_info
        L8_8 = L8_8()
        L9_9 = bm
        L9_9 = L9_9.get_process_relationships
        L10_10 = L8_8.ppid
        L10_10 = L9_9(L10_10)
        for _FORV_14_, _FORV_15_ in L11_11(L12_12) do
          bm.add_related_process(_FORV_15_.ppid)
          TrackPidAndTechniqueBM(_FORV_15_.ppid, "T1105", "CommandAndControl")
        end
        return L11_11
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
