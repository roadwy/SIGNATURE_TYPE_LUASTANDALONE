local L0_0, L1_1
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
L1_1 = string
L1_1 = L1_1.lower
L1_1 = L1_1(L0_0.command_line)
if string.find(L1_1, "\\program files", 1, true) or string.find(L1_1, "srtasks.exe", 1, true) or string.find(L1_1, "rstrui.exe", 1, true) or string.find(L1_1, "executescheduledsppcreation", 1, true) or string.find(L1_1, "wbengine.exe", 1, true) or string.find(L1_1, "veeam", 1, true) or string.find(L1_1, "\\purlieu", 1, true) or string.find(L1_1, "beremote", 1, true) then
  return mp.CLEAN
end
TrackPidAndTechniqueBM("BM", "T1003.002", "credentialdumping")
return mp.INFECTED
