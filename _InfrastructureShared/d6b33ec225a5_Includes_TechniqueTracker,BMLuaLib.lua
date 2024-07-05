if mp.GetParentProcInfo() ~= nil and string.find(mp.GetParentProcInfo().image_path, "/usr/sbin/cron", 1, true) then
  TrackPidAndTechniqueBM("BM", "T1053.003", "Execution_SuspiciousCronActivity")
  addRelatedProcess()
  return mp.INFECTED
end
return mp.CLEAN
