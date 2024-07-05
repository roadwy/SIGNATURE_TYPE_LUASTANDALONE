if bm.get_current_process_startup_info() == nil or bm.get_current_process_startup_info().ppid == nil then
  return mp.CLEAN
end
if not isParentPackageManager(bm.get_current_process_startup_info().ppid, true) and IsDetectionThresholdMetLinux(bm.get_current_process_startup_info().ppid) then
  AddResearchData("BM", true)
  reportRelatedBmHits()
  addRelatedProcess()
  return mp.INFECTED
end
return mp.CLEAN
