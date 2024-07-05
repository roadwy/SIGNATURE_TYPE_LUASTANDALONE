if bm.get_current_process_startup_info() ~= nil and bm.get_current_process_startup_info().ppid ~= nil then
  if isParentPackageManager(bm.get_current_process_startup_info().ppid, true) then
    return mp.CLEAN
  end
  if IsDetectionThresholdMetLinuxWrapper(bm.get_current_process_startup_info().ppid) or IsDiscoveryCollectionThresholdMetLinux(bm.get_current_process_startup_info().ppid) then
    addRelatedProcess()
    reportRelatedBmHits()
    return mp.INFECTED
  end
end
return mp.CLEAN
