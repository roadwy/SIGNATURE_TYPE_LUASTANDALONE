local L0_0
L0_0 = GetRealPidForScenario
L0_0 = L0_0("CMDHSTR")
if IsPidExcluded(L0_0) then
  return mp.CLEAN
end
if mp.GetParentProcInfo() ~= nil and mp.GetParentProcInfo().image_path ~= nil then
  if ({
    ["ccmexec.exe"] = true,
    ["gpscript.exe"] = true,
    ["mpcmdrun.exe"] = true,
    ["mssense.exe"] = true,
    ["senseir.exe"] = true,
    ["monitoringhost.exe"] = true,
    ["orchestrator.sandbox.exe"] = true
  })[string.lower(mp.GetParentProcInfo().image_path:match("([^\\]+)$"))] then
    return mp.CLEAN
  end
  if mp.GetParentProcInfo(mp.GetParentProcInfo().ppid) ~= nil and mp.GetParentProcInfo(mp.GetParentProcInfo().ppid).image_path ~= nil then
    if ({
      ["ccmexec.exe"] = true,
      ["gpscript.exe"] = true,
      ["mpcmdrun.exe"] = true,
      ["mssense.exe"] = true,
      ["senseir.exe"] = true,
      ["monitoringhost.exe"] = true,
      ["orchestrator.sandbox.exe"] = true
    })[string.lower(mp.GetParentProcInfo().image_path:match("([^\\]+)$"))] then
      return mp.CLEAN
    end
    if GetTacticsTableForPid(mp.GetParentProcInfo().ppid).winrshost_childproc or GetTacticsTableForPid(mp.GetParentProcInfo().ppid).wsmprovhost_childproc or GetTacticsTableForPid(mp.GetParentProcInfo().ppid).wmi_childproc or GetTacticsTableForPid(mp.GetParentProcInfo().ppid).remotedropexe_childproc or GetTacticsTableForPid(mp.GetParentProcInfo().ppid).exec_remotedroppedscript_a or GetTacticsTableForPid(mp.GetParentProcInfo().ppid).folderguard_blk or GetTacticsTableForPid(mp.GetParentProcInfo().ppid).folderguard_folder_blk then
      return mp.INFECTED
    end
    if GetTacticsTableForPid(mp.GetParentProcInfo(mp.GetParentProcInfo().ppid).ppid).winrshost_childproc or GetTacticsTableForPid(mp.GetParentProcInfo(mp.GetParentProcInfo().ppid).ppid).wsmprovhost_childproc or GetTacticsTableForPid(mp.GetParentProcInfo(mp.GetParentProcInfo().ppid).ppid).wmi_childproc or GetTacticsTableForPid(mp.GetParentProcInfo(mp.GetParentProcInfo().ppid).ppid).remotedropexe_childproc or GetTacticsTableForPid(mp.GetParentProcInfo(mp.GetParentProcInfo().ppid).ppid).exec_remotedroppedscript_a or GetTacticsTableForPid(mp.GetParentProcInfo(mp.GetParentProcInfo().ppid).ppid).folderguard_blk or GetTacticsTableForPid(mp.GetParentProcInfo(mp.GetParentProcInfo().ppid).ppid).folderguard_folder_blk then
      return mp.INFECTED
    end
  end
end
TrackPidAndTechnique(L0_0, "T1003", "ntdsutil_shadowcopy_access")
return mp.LOWFI
