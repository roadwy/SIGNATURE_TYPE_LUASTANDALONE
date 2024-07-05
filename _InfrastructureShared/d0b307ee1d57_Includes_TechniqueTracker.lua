local L0_0, L1_1
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
L1_1 = L0_0.command_line
if not string.find(L1_1, "/opt/oracle.ExaWatcher/GetExaWatcherResults.sh", 1, true) and not string.find(L1_1, "/var/opt/BESClient/LMT/CIT/runcit_sw.sh", 1, true) and not string.find(L1_1, "/usr/sbin/recaplog", 1, true) then
  TrackPidAndTechniqueBM("BM", "T1070.006", "DefenseEvasion")
  return mp.INFECTED
end
return mp.CLEAN
