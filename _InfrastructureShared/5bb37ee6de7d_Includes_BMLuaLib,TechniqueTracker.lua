if mp.GetParentProcInfo() == nil or mp.GetParentProcInfo().ppid == nil then
  return mp.CLEAN
end
if isParentPackageManager(mp.GetParentProcInfo().ppid, true) then
  return mp.CLEAN
end
if IsTechniqueObservedForPid(mp.GetParentProcInfo().ppid, "T1056") then
  addRelatedProcess()
  reportRelatedBmHits()
  return mp.INFECTED
end
return mp.CLEAN
