local L0_0, L1_1, L2_2, L3_3
L0_0 = "remote_file_created_taint"
L1_1 = "queue_pid_taintfactory_a"
L2_2, L3_3 = nil, nil
if this_sigattrlog[1].matched then
  L2_2 = this_sigattrlog[1].utf8p1
  L3_3 = this_sigattrlog[1].ppid
end
if not L2_2 or not L3_3 then
  return mp.CLEAN
end
if IsKeyInRollingQueue(L1_1, L3_3, true) then
  taint(L2_2, L0_0, 3600)
end
return mp.CLEAN
