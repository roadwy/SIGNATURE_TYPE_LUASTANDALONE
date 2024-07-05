local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = bm
L0_0 = L0_0.get_imagepath
L0_0 = L0_0()
L1_1, L2_2, L3_3 = nil, nil, nil
L4_4 = this_sigattrlog
L4_4 = L4_4[2]
L4_4 = L4_4.matched
if L4_4 then
  L4_4 = this_sigattrlog
  L4_4 = L4_4[2]
  L4_4 = L4_4.utf8p1
  if L4_4 ~= nil then
    L4_4 = this_sigattrlog
    L4_4 = L4_4[2]
    L2_2 = L4_4.utf8p1
    L4_4 = this_sigattrlog
    L4_4 = L4_4[2]
    L3_3 = L4_4.ppid
  end
end
L4_4 = {"/curl", "/wget"}
for _FORV_8_, _FORV_9_ in ipairs(L4_4) do
  if L0_0:sub(-#_FORV_9_) == _FORV_9_ then
    return mp.CLEAN
  end
end
taint(L2_2, "remote_file_created_taint", 3600)
AppendToRollingQueue("queue_pid_taintfactory_a", L3_3, 1, 600)
L1_1, _ = bm.get_process_relationships()
for _FORV_8_, _FORV_9_ in ipairs(L1_1) do
  if mp.bitand(_FORV_9_.reason_ex, 1) == 1 then
    bm.add_related_file(_FORV_9_.image_path)
    bm.add_related_process(_FORV_9_.ppid)
    TrackPidAndTechniqueBM(_FORV_9_.ppid, "T1036.003", "DefenseEvasion")
    return mp.INFECTED
  end
end
return mp.CLEAN
