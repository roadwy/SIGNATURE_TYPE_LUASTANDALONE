local L0_0
L0_0 = bm
L0_0 = L0_0.get_imagepath
L0_0 = L0_0()
if L0_0 ~= nil and isTainted(L0_0, "remote_file_chmodexec") then
  taint(L0_0, "susp_remotefile_execution", 3600)
  TrackPidAndTechniqueBM("BM", "T1105", "CommandAndControl_IngressToolTransfer_SuspiciousRemoteFileExecution")
  TrackPidAndTechniqueBM("BM", "T1564", "DefenseEvasion_Hiddenfiles_SuspiciousRemoteFileExecution")
  addRelatedProcess()
  reportRelatedBmHits()
  if sysio.IsFileExists(L0_0) then
    bm.add_threat_file(L0_0)
  end
  return mp.INFECTED
end
return mp.CLEAN
