if mp.GetParentProcInfo() == nil or mp.GetParentProcInfo().ppid == nil or mp.GetParentProcInfo().image_path == nil then
  return mp.CLEAN
end
if IsPidExcluded(mp.GetParentProcInfo().ppid) then
  return mp.CLEAN
end
TrackPidAndTechnique(mp.GetParentProcInfo().ppid, "T1016", "network_discovery")
if IsDetectionThresholdMet(mp.GetParentProcInfo().ppid) then
  return mp.INFECTED
end
if GetTacticsTableForPid(mp.GetParentProcInfo().ppid).winrshost_childproc or GetTacticsTableForPid(mp.GetParentProcInfo().ppid).wsmprovhost_childproc or GetTacticsTableForPid(mp.GetParentProcInfo().ppid).wmi_childproc or GetTacticsTableForPid(mp.GetParentProcInfo().ppid).remotedropexe_childproc or GetTacticsTableForPid(mp.GetParentProcInfo().ppid).python_childproc or GetTacticsTableForPid(mp.GetParentProcInfo().ppid).rundll32_childproc or GetTacticsTableForPid(mp.GetParentProcInfo().ppid).wscript_childproc or GetTacticsTableForPid(mp.GetParentProcInfo().ppid).cscript_childproc or GetTacticsTableForPid(mp.GetParentProcInfo().ppid).mshta_childproc or GetTacticsTableForPid(mp.GetParentProcInfo().ppid).webshell_childproc or GetTacticsTableForPid(mp.GetParentProcInfo().ppid).exec_remotedroppedscript_a then
  return mp.INFECTED
end
return mp.LOWFI
