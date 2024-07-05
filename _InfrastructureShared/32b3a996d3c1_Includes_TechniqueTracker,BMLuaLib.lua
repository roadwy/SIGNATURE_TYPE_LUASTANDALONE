if bm.get_current_process_startup_info() ~= nil and bm.get_current_process_startup_info().ppid ~= nil and IsDetectionThresholdMetLinuxWrapper(bm.get_current_process_startup_info().ppid) then
  addRelatedProcess()
  reportRelatedBmHits()
  TrackPidAndTechniqueBM("BM", "T1105", "CommandAndControl_IngressToolTransfer_SuspiciousRemoteFileExecution")
  return mp.INFECTED
end
return mp.CLEAN
