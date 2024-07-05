local L0_0
if bm.get_current_process_startup_info() ~= nil then
  L0_0 = bm.get_current_process_startup_info().ppid
end
if L0_0 ~= nil then
  TrackPidAndTechniqueBM(L0_0, "T1027", "tt-thresholdmet")
end
return mp.INFECTED
