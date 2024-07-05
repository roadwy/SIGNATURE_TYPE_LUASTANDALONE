local L0_0, L1_1
L0_0 = IsSenseRelatedProc
L0_0 = L0_0()
if L0_0 == true then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
L1_1 = string
L1_1 = L1_1.lower
L1_1 = L1_1(L0_0.command_line)
if string.find(L1_1, "svchost.exe -k camera -s frameserver", 1, true) then
  return mp.CLEAN
end
bm.request_SMS(L0_0.ppid, "H")
bm.add_action("SmsAsyncScanEvent", 100)
TrackPidAndTechniqueBM(L0_0.ppid, "T1055.002", "processinjection_source")
return mp.INFECTED
