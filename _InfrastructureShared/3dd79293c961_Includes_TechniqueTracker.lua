local L0_0
L0_0 = GetRealPidForScenario
L0_0 = L0_0("CMDHSTR")
if IsPidExcluded(L0_0) then
  return mp.CLEAN
end
TrackPidAndTechnique(L0_0, "T1490", "inhibit_backup_restore")
if IsDetectionThresholdMet(L0_0) then
  return mp.INFECTED
end
if IsTacticObservedForParents(L0_0, "susp_ransomware", 2) then
  return mp.INFECTED
end
if mp.GetParentProcInfo() == nil or mp.GetParentProcInfo().ppid == nil or mp.GetParentProcInfo().image_path == nil then
  return mp.CLEAN
end
if GetTacticsTableForPid(mp.GetParentProcInfo().ppid).winrshost_childproc or GetTacticsTableForPid(mp.GetParentProcInfo().ppid).wsmprovhost_childproc or GetTacticsTableForPid(mp.GetParentProcInfo().ppid).wmi_childproc or GetTacticsTableForPid(mp.GetParentProcInfo().ppid).remotedropexe_childproc or GetTacticsTableForPid(mp.GetParentProcInfo().ppid).python_childproc or GetTacticsTableForPid(mp.GetParentProcInfo().ppid).rundll32_childproc or GetTacticsTableForPid(mp.GetParentProcInfo().ppid).wscript_childproc or GetTacticsTableForPid(mp.GetParentProcInfo().ppid).cscript_childproc or GetTacticsTableForPid(mp.GetParentProcInfo().ppid).mshta_childproc or GetTacticsTableForPid(mp.GetParentProcInfo().ppid).webshell_childproc or GetTacticsTableForPid(mp.GetParentProcInfo().ppid).exec_remotedroppedscript_a or GetTacticsTableForPid(mp.GetParentProcInfo().ppid).folderguard_blk or GetTacticsTableForPid(mp.GetParentProcInfo().ppid).folderguard_folder_blk then
  return mp.INFECTED
end
return mp.CLEAN
