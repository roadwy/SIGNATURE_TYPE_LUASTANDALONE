if bm.get_current_process_startup_info() == nil or bm.get_current_process_startup_info().ppid == nil or bm.get_current_process_startup_info().command_line == nil then
  return mp.CLEAN
end
if isParentPackageManager(bm.get_current_process_startup_info().ppid, true) then
  return mp.CLEAN
end
if IsDiscoveryCollectionThresholdMetLinux(bm.get_current_process_startup_info().ppid) or IsDetectionThresholdMetLinux(bm.get_current_process_startup_info().ppid) then
  AddResearchData("BM", true)
  addRelatedProcess()
  reportRelatedBmHits()
  return mp.INFECTED
end
return mp.CLEAN
