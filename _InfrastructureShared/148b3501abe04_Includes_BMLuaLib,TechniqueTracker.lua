local L0_0, L1_1
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
L1_1 = string
L1_1 = L1_1.lower
L1_1 = L1_1(L0_0.command_line)
if string.find(L1_1, "regbackup3", 1, true) or string.find(L1_1, "\\rapid7\\", 1, true) then
  return mp.CLEAN
end
sms_untrusted_process()
pcall(add_parents, "-1", 5)
TrackPidAndTechniqueBM("BM", "T1003.002", "credentialdumping", 86400)
return mp.INFECTED
