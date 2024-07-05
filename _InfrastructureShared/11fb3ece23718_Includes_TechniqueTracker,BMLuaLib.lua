if bm.get_current_process_startup_info() ~= nil and bm.get_current_process_startup_info().ppid ~= nil and IsDetectionThresholdMetLinuxWrapper(bm.get_current_process_startup_info().ppid) then
  AddResearchData("BM", true)
  addRelatedProcess()
  reportRelatedBmHits()
  TrackPidAndTechniqueBM("BM", "T1080", "LateralMovement_TaintSharedContent_ThresholdMetForMountedFile")
  return mp.INFECTED
end
return mp.CLEAN
