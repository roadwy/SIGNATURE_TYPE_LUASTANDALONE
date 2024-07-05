if bm.get_current_process_startup_info() ~= nil and bm.get_current_process_startup_info().ppid ~= nil and (IsDetectionThresholdMetLinuxWrapper(bm.get_current_process_startup_info().ppid) or IsDiscoveryCollectionThresholdMetLinux(bm.get_current_process_startup_info().ppid)) then
  addRelatedProcess()
  reportRelatedBmHits()
  return mp.INFECTED
end
return mp.CLEAN
