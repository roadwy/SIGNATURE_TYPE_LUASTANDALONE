local L0_0
L0_0 = GetRealPidForScenario
L0_0 = L0_0("CMDHSTR")
if IsPidExcluded(L0_0) then
  return mp.CLEAN
end
if mp.GetParentProcInfo() == nil or mp.GetParentProcInfo().ppid == nil or mp.GetParentProcInfo().image_path == nil then
  return mp.CLEAN
end
if ({
  ["ccmexec.exe"] = true,
  ["gpscript.exe"] = true,
  ["mpcmdrun.exe"] = true,
  ["mssense.exe"] = true,
  ["senseir.exe"] = true,
  ["corsearch.exe"] = true
})[string.lower(mp.GetParentProcInfo().image_path:match("([^\\]+)$"))] then
  return mp.CLEAN
end
if string.lower(mp.GetParentProcInfo().image_path):find("corsearch.exe", 1, true) then
  return mp.CLEAN
end
TrackPidAndTechnique(L0_0, "T1490", "shadowcopy_delete")
if IsDetectionThresholdMet(L0_0) then
  return mp.INFECTED
end
if IsTacticObservedForParents(L0_0, "susp_ransomware", 2) then
  return mp.INFECTED
end
if GetTacticsTableForPid(mp.GetParentProcInfo().ppid).winrshost_childproc or GetTacticsTableForPid(mp.GetParentProcInfo().ppid).wsmprovhost_childproc or GetTacticsTableForPid(mp.GetParentProcInfo().ppid).remotedropexe_childproc or GetTacticsTableForPid(mp.GetParentProcInfo().ppid).python_childproc or GetTacticsTableForPid(mp.GetParentProcInfo().ppid).rundll32_childproc or GetTacticsTableForPid(mp.GetParentProcInfo().ppid).cscript_childproc or GetTacticsTableForPid(mp.GetParentProcInfo().ppid).mshta_childproc or GetTacticsTableForPid(mp.GetParentProcInfo().ppid).webshell_childproc or GetTacticsTableForPid(mp.GetParentProcInfo().ppid).exec_remotedroppedscript_a or GetTacticsTableForPid(mp.GetParentProcInfo().ppid).folderguard_blk or GetTacticsTableForPid(mp.GetParentProcInfo().ppid).folderguard_folder_blk then
  return mp.INFECTED
end
return mp.LOWFI
