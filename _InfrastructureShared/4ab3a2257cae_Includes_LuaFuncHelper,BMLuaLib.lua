local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = "remote_file_created_taint"
L1_1 = "queue_pid_taintfactory_b"
L2_2, L3_3, L4_4 = nil, nil, nil
if this_sigattrlog[1].matched then
  L3_3 = this_sigattrlog[1].utf8p1
  L2_2 = this_sigattrlog[1].utf8p2
  L4_4 = this_sigattrlog[1].ppid
end
if not L2_2 or not L3_3 or not L4_4 then
  return mp.CLEAN
end
if IsKeyInRollingQueue(L1_1, L4_4, true) or isTainted(L2_2, L0_0) then
  taint(L3_3, L0_0, 3600)
end
return mp.CLEAN
