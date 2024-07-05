local L0_0
L0_0 = 0
if mp.GetParentProcInfo(bm.get_current_process_startup_info().ppid) ~= nil then
  L0_0 = GetTechniquesCountForPid(mp.GetParentProcInfo(bm.get_current_process_startup_info().ppid).ppid)
  if L0_0 > 4 then
    TrackPidAndTechniqueBM(mp.GetParentProcInfo(bm.get_current_process_startup_info().ppid).ppid, "T1018", "Discovery_RemoteSystemDiscovery")
    addRelatedProcess()
    reportRelatedBmHits()
    return mp.INFECTED
  end
end
return mp.CLEAN
