if mp.GetParentProcInfo(bm.get_current_process_startup_info().ppid) ~= nil then
  TrackPidAndTechniqueBM(mp.GetParentProcInfo(bm.get_current_process_startup_info().ppid).ppid, "T1560", "Collection", 7200)
  addRelatedProcess()
end
return mp.INFECTED
