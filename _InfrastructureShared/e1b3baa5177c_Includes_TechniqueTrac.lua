local L0_0, L1_1, L2_2
L1_1 = this_sigattrlog
L1_1 = L1_1[10]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[10]
  L1_1 = L1_1.utf8p1
  if L1_1 ~= nil then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[10]
    L0_0 = L1_1.utf8p1
  end
else
  L1_1 = this_sigattrlog
  L1_1 = L1_1[11]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[11]
    L1_1 = L1_1.utf8p1
    if L1_1 ~= nil then
      L1_1 = this_sigattrlog
      L1_1 = L1_1[11]
      L0_0 = L1_1.utf8p1
    end
  end
end
if L0_0 ~= nil then
  L1_1 = taint
  L2_2 = L0_0
  L1_1(L2_2, "remote_file_created_taint", 3600)
  L1_1 = bm
  L1_1 = L1_1.get_current_process_startup_info
  L1_1 = L1_1()
  L2_2 = bm
  L2_2 = L2_2.get_process_relationships
  L2_2 = L2_2(L1_1.ppid)
  AppendToRollingQueue("queue_pid_taintfactory_a", L1_1.ppid, 1, 600)
  for _FORV_7_, _FORV_8_ in ipairs(L2_2) do
    bm.add_related_process(_FORV_8_.ppid)
    TrackPidAndTechniqueBM(_FORV_8_.ppid, "T1105", "CommandAndControl_RemoteFileCopy.A")
  end
  bm.trigger_sig("RemoteFileCopy", L0_0)
  return mp.INFECTED
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
