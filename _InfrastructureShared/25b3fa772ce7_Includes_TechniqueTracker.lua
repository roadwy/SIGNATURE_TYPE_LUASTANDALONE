local L0_0, L1_1
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
L1_1 = L0_0.ppid
if L1_1 ~= nil then
  TrackPidAndTechniqueBM(L1_1, "T1055.012", "processhollowing_target")
  bm.request_SMS(L1_1, "M")
  bm.add_action("SmsAsyncScanEvent", 1000)
end
return mp.INFECTED
