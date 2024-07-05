local L0_0
L0_0 = 0
if mp.GetParentProcInfo(bm.get_current_process_startup_info().ppid) ~= nil then
  if IsTacticObservedForPid(mp.GetParentProcInfo(bm.get_current_process_startup_info().ppid).ppid, "CredentialAccess") or IsTacticObservedForPid(mp.GetParentProcInfo(bm.get_current_process_startup_info().ppid).ppid, "Collection") or IsTacticObservedForPid(mp.GetParentProcInfo(bm.get_current_process_startup_info().ppid).ppid, "Execution") or IsTacticObservedForPid(mp.GetParentProcInfo(bm.get_current_process_startup_info().ppid).ppid, "Impact") or IsTacticObservedForPid(mp.GetParentProcInfo(bm.get_current_process_startup_info().ppid).ppid, "Ingress") then
    TrackPidAndTechniqueBM(mp.GetParentProcInfo(bm.get_current_process_startup_info().ppid).ppid, "T1018", "Discovery_FileAndDirectoryDiscovery")
    TrackPidAndTechniqueBM(mp.GetParentProcInfo(bm.get_current_process_startup_info().ppid).ppid, "T1560", "Collection")
    addRelatedProcess()
    return mp.INFECTED
  else
    L0_0 = GetTechniquesCountForPid(mp.GetParentProcInfo(bm.get_current_process_startup_info().ppid).ppid)
    if L0_0 > 2 then
      TrackPidAndTechniqueBM(mp.GetParentProcInfo(bm.get_current_process_startup_info().ppid).ppid, "T1018", "Discovery_FileAndDirectoryDiscovery")
      TrackPidAndTechniqueBM(mp.GetParentProcInfo(bm.get_current_process_startup_info().ppid).ppid, "T1560", "Collection")
      addRelatedProcess()
      reportRelatedBmHits()
      return mp.INFECTED
    end
  end
end
return mp.CLEAN
