local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10
L0_0 = bm
L0_0 = L0_0.get_imagepath
L0_0 = L0_0()
L1_1 = bm
L1_1 = L1_1.get_current_process_startup_info
L1_1 = L1_1()
L2_2 = L1_1.command_line
L3_3, L4_4, L5_5, L6_6 = nil, nil, nil, nil
L7_7 = this_sigattrlog
L7_7 = L7_7[5]
L4_4 = L7_7.utf8p1
L5_5 = L1_1.ppid
L7_7 = {L8_8, L9_9}
for _FORV_11_, _FORV_12_ in L8_8(L9_9) do
  if L0_0:sub(-#_FORV_12_) == _FORV_12_ then
    return mp.CLEAN
  end
end
if L9_9 and next(L10_10) then
  L6_6 = L10_10.value
end
if L6_6 ~= nil and string.find(L2_2, L6_6, 1, true) then
  taint(L4_4, "remote_file_created_taint", 3600)
  AppendToRollingQueue("queue_pid_taintfactory_a", L5_5, 1, 600)
  L3_3, _ = bm.get_process_relationships()
  for _FORV_14_, _FORV_15_ in ipairs(L3_3) do
    if mp.bitand(_FORV_15_.reason_ex, 1) == 1 then
      bm.add_related_file(_FORV_15_.image_path)
      bm.add_related_process(_FORV_15_.ppid)
      TrackPidAndTechniqueBM(_FORV_15_.ppid, "T1036.003", "DefenseEvasion")
      return mp.INFECTED
    end
  end
end
return mp.CLEAN
