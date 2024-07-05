if bm.get_current_process_startup_info() == nil or bm.get_current_process_startup_info().ppid == nil or bm.get_current_process_startup_info().ppid == "" then
  return mp.CLEAN
end
if versioning.GetCloudBlockLevel() >= 4 and CheckIfProcessTreePartOfTaintExecution(bm.get_current_process_startup_info().ppid, 5, true) then
  TrackPidAndTechniqueBM("BM", "T1048", "Exfiltration_Archive")
  addRelatedProcess()
  reportRelatedBmHits()
  RemediateProcessTreeForLinux()
  return mp.INFECTED
end
return mp.CLEAN
