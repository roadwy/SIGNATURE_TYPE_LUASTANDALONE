if mp.GetParentProcInfo() ~= nil then
  if IsPidExcluded(mp.GetParentProcInfo().ppid) then
    return mp.CLEAN
  end
  if ({
    ["ossec-agent.exe"] = true,
    ["ltsvc.exe"] = true,
    ["cybercns_dissolvableagent.exe"] = true
  })[string.lower(mp.GetParentProcInfo().image_path):match("([^\\]+)$")] then
    return mp.CLEAN
  end
end
TrackPidAndTechnique("CMDHSTR", "T1135", "network_share_discovery")
if IsDetectionThresholdMet("CMDHSTR") then
  return mp.LOWFI
end
if GetTacticsTableForPid(mp.GetParentProcInfo().ppid).winrshost_childproc or GetTacticsTableForPid(mp.GetParentProcInfo().ppid).wmi_childproc or GetTacticsTableForPid(mp.GetParentProcInfo().ppid).remotedropexe_childproc or GetTacticsTableForPid(mp.GetParentProcInfo().ppid).python_childproc or GetTacticsTableForPid(mp.GetParentProcInfo().ppid).rundll32_childproc or GetTacticsTableForPid(mp.GetParentProcInfo().ppid).mshta_childproc or GetTacticsTableForPid(mp.GetParentProcInfo().ppid).webshell_childproc or GetTacticsTableForPid(mp.GetParentProcInfo().ppid).exec_remotedroppedscript_a then
  return mp.INFECTED
end
return mp.CLEAN
