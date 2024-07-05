local L0_0, L1_1
if bm.GetProcedureMatchDuration(0) > bm.GetProcedureMatchDuration(1) then
  L1_1 = bm.GetProcedureMatchDuration(0) - bm.GetProcedureMatchDuration(1)
else
  L1_1 = bm.GetProcedureMatchDuration(1) - bm.GetProcedureMatchDuration(0)
end
if L1_1 > 50000000 then
  return mp.CLEAN
end
if this_sigattrlog[3].matched then
  L0_0 = this_sigattrlog[3].utf8p1
elseif this_sigattrlog[4].matched then
  L0_0 = this_sigattrlog[4].utf8p1
elseif this_sigattrlog[5].matched then
  L0_0 = this_sigattrlog[5].utf8p1
elseif this_sigattrlog[6].matched then
  L0_0 = this_sigattrlog[6].utf8p1
elseif this_sigattrlog[8].matched then
  L0_0 = this_sigattrlog[8].utf8p1
elseif this_sigattrlog[7].matched then
  L0_0 = this_sigattrlog[7].utf8p1
elseif this_sigattrlog[9].matched then
  L0_0 = this_sigattrlog[9].utf8p1
end
if isTainted(L0_0, "remote_file_created_taint") then
  if string.find(L0_0, "/usr/lib/yum-plugins/enabled_repos_upload.py", 1, true) == 1 then
    return mp.CLEAN
  end
  if bm.get_current_process_startup_info() and bm.get_current_process_startup_info().ppid and bm.get_current_process_startup_info().ppid ~= "" then
    AppendToRollingQueue("queue_pid_taintfactory_a", bm.get_current_process_startup_info().ppid, 1, 600)
    AppendToRollingQueue("queue_pid_tainted_scripts", bm.get_current_process_startup_info().ppid, L0_0, 3600, 500)
    bm.trigger_sig("BMExecutionFromTaintedScript", L0_0)
    return mp.INFECTED
  end
end
return mp.CLEAN
