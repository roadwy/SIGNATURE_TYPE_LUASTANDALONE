if IsProcessExcludedFromRansomwareAnalysis() == true then
  return mp.CLEAN
end
if bm.get_current_process_startup_info() ~= nil and bm.get_current_process_startup_info().ppid ~= nil and IsDetectionThresholdMetLinux(bm.get_current_process_startup_info().ppid) then
  AddResearchData("BM", true)
  reportRelatedBmHits()
  addRelatedProcess()
  return mp.INFECTED
end
TrackPidAndTechniqueBM("BM", "T1082", "Discovery")
return mp.CLEAN
