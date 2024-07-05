local L0_0
L0_0 = 0
if bm.GetSignatureMatchDuration() > 50000000 then
  return mp.CLEAN
end
TrackPidAndTechniqueBM("BM", "T1083", "Discovery_FileAndDirectoryDiscovery")
addRelatedProcess()
reportRelatedBmHits()
if mp.GetParentProcInfo(bm.get_current_process_startup_info().ppid) ~= nil then
  if IsTacticObservedForPid(mp.GetParentProcInfo(bm.get_current_process_startup_info().ppid).ppid, "CredentialAccess") or IsTacticObservedForPid(mp.GetParentProcInfo(bm.get_current_process_startup_info().ppid).ppid, "Execution") then
    return mp.INFECTED
  else
    L0_0 = GetTechniquesCountForPid(mp.GetParentProcInfo(bm.get_current_process_startup_info().ppid).ppid)
    if L0_0 > 1 then
      return mp.INFECTED
    end
  end
end
return mp.CLEAN
