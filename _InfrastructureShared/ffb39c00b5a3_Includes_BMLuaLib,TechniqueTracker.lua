if mp.GetParentProcInfo() == nil or mp.GetParentProcInfo().ppid == nil then
  return mp.CLEAN
end
if IsDiscoveryCollectionThresholdMetLinux(mp.GetParentProcInfo().ppid) then
  addRelatedProcess()
  reportRelatedBmHits()
  return mp.INFECTED
end
return mp.CLEAN
